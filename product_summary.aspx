<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product_summary.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <!-- =================================================購物車清單 Start====================================================================== -->
    <div class="span9">
        <ul class="breadcrumb">
            <li><a href="index.aspx">首頁</a> <span class="divider">/</span></li>
            <li class="active">購物車</li>
        </ul>
        <h3>購物車 [ <small>3 項</small> ] <a href="products.aspx" class="btn btn-large pull-right"><i class="icon-arrow-left"></i>繼續購物</a></h3>
        <hr class="soft" />
        <table class="table table-bordered">
            <tbody>
                <tr>
                    <th colspan="2">我已經註冊  </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <form class="form-horizontal">
                            <div class="control-group">
                                <label class="span2 control-label" for="username">使用者名稱</label>
                                <div class="controls">
                                    <input type="text" id="username" placeholder="Username">
                                </div>
                            </div>
    </div>
    <div class="control-group">
        <label class="span2 control-label" for="inputPassword">密碼</label>
        <div class="controls">
            <input type="password" id="inputPassword" placeholder="Password">
            <a href="forgetpass.html">忘記密碼？</a>
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <button type="submit" class="btn">登入</button>
            <a href="register">現在註冊！</a>
        </div>
    </div>
    </form>
        </td>
        </tr>
        </tbody>
        </table>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>購買商品</th>
                <th>商品描述</th>
                <th>數量/更新</th>
                <th>價錢</th>
                <th>折扣</th>
                <!--<th>稅率</th>-->
                <th>小計</th>
            </tr>
        </thead>
        <tbody id="CartList">
            <%-- <tr>
                    <td style="width: 100px">
                        <img id="imgx" src="" /></td><a href="index_AD.html">index_AD.html</a>
                    <td>
                        <p id="ProductName"></p>
                        <p id="Description"></p>
                        <td>
                            <div class="input-append">
                                <input class="span1" style="max-width: 34px" placeholder="1" id="appendedInputButtons" size="16" type="text">
                                <button class="btn" type="button"><i class="icon-minus"></i></button>
                                <button class="btn" type="button"><i class="icon-plus"></i></button>
                                <button class="btn btn-danger" type="button"><i class="icon-remove icon-white"></i></button>
                            </div>
                        </td>
                    <td>
                        <p id="UnitPrice"></p>
                    </td>
                    <td>
                        <p id="P1">NT$0</p>
                    </td>
                    <td>
                        <p id="P2"></p>
                    </td>
                </tr>


                <tr>
                    <td colspan="5" align="right">商品總價：</td>
                    <td>
                        <p id="Total"></p>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" align="right">總折扣：</td>
                    <td>NT$0</td>
                </tr>
                <tr>
                    <td colspan="5" align="right"><strong>付款總額：(NT$1000 - NT$25) =</strong>	</td>
                    <td class="label label-important"><strong>NT$975.00 </strong></td>
                </tr>--%>
        </tbody>
        <tfoot id="CartListTotal">
        </tfoot>
    </table>


    <table class="table table-bordered">
        <tbody>
            <tr>
                <td>
                    <form class="form-inline">
                        <label style="min-width: 159px"><strong>優惠券折扣代碼：</strong> </label>
                        <input type="text" class="input-medium" placeholder="代碼">
                        <button type="submit" class="btn">新增</button>
                    </form>
                </td>
            </tr>

        </tbody>
    </table>

    <table class="table table-bordered">
        <tbody>
            <tr>
                <th colspan="2">估計您的運費</th>
            </tr>
            <tr>
                <td>
                    <form class="form-horizontal">
                        <div class="control-group">
                            <label class="span2 control-label" for="inputCountry">縣市/學校</label>
                            <div class="controls">
                                <input type="text" id="inputCountry" placeholder="縣市/學校">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="span2 control-label" for="inputPost">郵遞區號</label>
                            <div class="controls">
                                <input type="text" id="inputPost" placeholder="郵遞區號">
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn">預估</button>
                            </div>
                        </div>
                    </form>
                </td>
            </tr>
        </tbody>
    </table>
    <a href="products.aspx" class="btn btn-large"><i class="icon-arrow-left"></i>繼續購物 </a>
    <a href="login.html" class="btn btn-large pull-right">下一步<i class="icon-arrow-right"></i></a>

    </div>
    <!-- =================================================購物車清單 End====================================================================== -->
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="scriptPlaceHolder" runat="Server">
   <%-- <script>
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
                    "data": { "id": productID },//要傳送到server的資料
                    "success": function (data) {//Server回傳的結果
                        //console.log(data)
                        var td1 = $("<td style='width: 100px'></td>").append("<img src='/STTPshop/ashx/ImageHandler.ashx?id=" + data.ProductID + "'/>").append("<input type='hidden' value='" + data.ProductID + "'/>")
                        var td2 = $('<td></td>').append("<p>【" + data.ModelName + "】</p>").append(data.Description)
                        //移除+-按鈕
                        var countbox = "<div class='input-append'><input value='' class='span1' style='max-width: 34px' placeholder='1' size='16' type='text'><button class='btn btn-danger' type='button'><i class='icon-remove icon-white'></i></button></div>"
                        var td3 = $('<td></td>').append(countbox)
                        var td4 = $('<td></td>').append(data.UnitCost)
                        var td5 = $('<td></td>').append("NT$" + 0)
                        var td6 = $('<td></td>').append(data.UnitCost)
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
                    $.getJSON("ashx/ProductCartHandler.ashx", { "id": productID }, function (data) { //json 回傳一個 product的物件
                        //Totoal += data.UnitCost;
                        temp += 1
                        if (temp == Cookcount) { CallCount() }  //temp = Cookcount 表示所有購物清單已產生完畢
                    })
                }
            }
        }


        function CallCount() {  
            for(var i = 0 ; i < Cookcount ; i ++)
            {
                var productID = $('#CartList tr:eq(' + i + ') td:eq(0) input').val() //因為Json回傳的清單順序不固定，所以抓隱藏欄位的productID 來對照
                if(productID!=null){         //如果欄位為空則不進行計算
                
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
    </script>--%>


</asp:Content>
