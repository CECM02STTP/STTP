//-------------------------加入購物車 Start-------------------------------------------------------
$('#addCart').click(function () {
    var a = Math.floor(Math.random() * 12 + 1);  //隨機取1~10 當作測試的ProductID
    var productID = a;
    var productcount = $('#pCount').val();

    CookieCount();
    setCookie("productID" + getCookie("cookiecount"), productID)  //紀錄加入購物車的商品ProductID
    setCookie("productcount" + getCookie("cookiecount"), productcount) //紀錄加入購物車的商品數量
})

function CookieCount() {  //購物商品項目count+1

    if (getCookie("cookiecount") == null) {
        setCookie("cookiecount", 0)
        alert("加入購物車成功")
    }
    else {
        var c = parseInt(getCookie("cookiecount")) + 1
        setCookie("cookiecount", c)
        alert("加入購物車成功")
    }

}


//-------------------------加入購物車 End-------------------------------------------------------
//-------------------------購物車 Start-------------------------------------------------------

//顯示商品資訊
var Cookcount = parseInt(getCookie("cookiecount")) + 1;  //商品計數 由0開始 所以+1
var Totoal = 0; //全域變數 計算商品總價
var temp = 0;  //用於 購物清單產生後 呼叫數量回填
for (var i = 0 ; i < Cookcount ; i++) {  // 全域變數已+1，因此 = 拿掉
    var productID = getCookie("productID" + i)
    if (productID == null) {
        temp += 1
    }
    else {

        var productcount = getCookie("productcount" + i)

        $.ajax({
            "type": "get",//傳送資料的方法 get, post
            "url": "ashx/ProductCartHandler.ashx",//呼叫server端的哪支程式
            "datatype": "json",//Server回傳的檔案格式text,xml,json.script
            "data": { "GoodsID": productID },//要傳送到server的資料
            "success": function (data) {//Server回傳的結果
                //console.log(data)
                var td1 = $("<td style='width: 100px'></td>").append("<img src='/STTPshop/ashx/StdntGoodsImage.ashx?PictureID=" + data.GoodsID + "'/>").append("<input type='hidden' value='" + data.GoodsID + "'/>")
                var td2 = $('<td></td>').append("<p>【" + data.GoodsName + "】</p>").append(data.Description)
                //移除+-按鈕
                var countbox = "<div class='input-append'><input value='' class='span1' style='max-width: 34px' placeholder='1' size='16' type='text'><button class='btn btn-danger' type='button'><i class='icon-remove icon-white'></i></button></div>"
                var td3 = $('<td></td>').append(countbox)
                var td4 = $('<td></td>').append(data.Price)
                var td5 = $('<td></td>').append("NT$" + 0)
                var td6 = $('<td></td>').append(data.Price)
                var tr1 = $('<tr></tr>').append(td1).append(td2).append(td3).append(td4).append(td5).append(td6)
                $('#CartList').append(tr1) //加在tbody

                temp += 1
                if (temp == Cookcount) {
                    for (var i = 0; i < Cookcount; i++) {  //將商品的數量回填
                        var productID = $('#CartList tr:eq(' + i + ') td:eq(0) input').val() //因為Json回傳的清單順序不固定，所以抓隱藏欄位的productID 來對照
                        for (var k = 0 ; k < Cookcount ; k++) {
                            if (productID == getCookie("productID" + k)) {   //如果 隱藏欄位的 productID 等於 "productID"+k
                                var productcount = getCookie("productcount" + k)  //則 因為"productID"+k 的數量為 cookie的"productcount"+ k 之value
                                $('#CartList tr:eq(' + i + ') td:eq(2) input').attr("value", productcount) //數量回填
                                break
                            }
                        }
                    }
                    CallCount()
                }  //temp = Cookcount 表示所有購物清單已產生完畢
            }
        })
        //TODo....json回傳的資料順序會亂跳。

    }
}


function total() { //重新計算金額
    Totoal = 0;
    temp = 0;
    $('#CartListTotal').empty() //清空 floot
    for (var i = 0 ; i < Cookcount ; i++) {  // 全域變數已+1，因此 =符號 拿掉
        var productID = getCookie("productID" + i)
        if (productID == null) {
            temp += 1
        }
        else {
            var productcount = getCookie("productcount" + i)
            //$.getJSON("ashx/ProductCartHandler.ashx", { "PictureID": productID }, function (data) { //json 回傳一個 product的物件
            //    //Totoal += data.UnitCost;
                temp += 1
                if (temp == Cookcount) { CallCount() }  //temp = Cookcount 表示所有購物清單已產生完畢
            //})
        }
    }
}


function CallCount() {
    for (var i = 0 ; i < Cookcount ; i++) {
        var productID = $('#CartList tr:eq(' + i + ') td:eq(0) input').val() //因為Json回傳的清單順序不固定，所以抓隱藏欄位的productID 來對照
        if (productID != null) {         //如果欄位為空則不進行計算

            var PdCount = $('#CartList tr:eq(' + i + ') td:eq(2) input').val()
            var subtotal = $('#CartList tr:eq(' + i + ') td:eq(3)').text()
            $('#CartList tr:eq(' + i + ') td:eq(5)').text(PdCount * subtotal) //單品項小計金額
            Totoal += (PdCount * subtotal);
        }

    }

    //商品總價計算
    var tdv1 = $("<td colspan='5' align='right'></td>").append("商品總價：")
    var tdv2 = $("<td></td>").append("<p>" + Totoal + "</p>")
    var tr2 = $('<tr></tr>').append(tdv1).append(tdv2)

    var tdv3 = $("<td colspan='5' align='right'></td>").append("總折扣：")
    var tdv4 = $("<td></td>").append("<p>0</p>")
    var tr3 = $("<tr></tr>").append(tdv3).append(tdv4)

    var tdv5 = $("<td colspan='5' align='right'></td>").append("<strong>付款總額：(NT$" + Totoal + " - NT$0) =</strong>")
    var tdv6 = $("<td class='label label-important'></td>").append("<strong>NT$" + Totoal + " </strong>")
    var tr4 = $("<tr></tr>").append(tdv5).append(tdv6)
    $('#CartListTotal').append(tr2).append(tr3).append(tr4) //加在tfoot


}

$('#CartList').on('click', 'tr td button', function () {  //刪除品項

    var productID = $(this).parents('tr').children('td').children('input').val()
    for (var i = 0 ; i < Cookcount ; i++) {
        var CookiePDID = getCookie("productID" + i)
        if (productID == CookiePDID) {
            delCookie("productID" + i)
        }
    }
    $(this).parents('tr').remove();
    total()

})


$('#CartList').on('change', 'tr td input', function () {  //數量change時
    total()
    //var productID = $(this).parents('tr').children('td').children('input').val()
    //delCookie(productID)
    //$(this).parents('tr').remove();
    //total()

})



//-------------------------購物車 End-------------------------------------------------------
//-------------------------Cookie Start-------------------------------------------------------

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toGMTString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i].trim();
        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
    }
    return null;
}


function delCookie(cname) {
    document.cookie = cname + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}
//-------------------------Cookie End-------------------------------------------------------