<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GoodsOrderDetails.aspx.cs" Inherits="GoodsOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AsidePlaceHolder" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <div class="span9">
        <ul class="breadcrumb">
            <li><a href="index.aspx">首頁</a> <span class="divider">/</span></li>
            <li class="active">訂單明細</li>
        </ul>
        <h3>訂單明細</h3>
        <hr class="soft" />
        <h5>訂單編號：<tt id="OrderID" runat="Server"></tt></h5>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>購買商品</th>
                    <th>商品名稱/商品編號</th>
                    <th>數量</th>
                    <th>價錢</th>
                    <th>運費</th>
                    <th>小計</th>
                    <th>賣家</th>
                    <th>日期</th>
                </tr>
            </thead>
            <tbody id="ProductOrderDetails">
            </tbody>
            <tfoot id="GoodsTotal">
            </tfoot>
        </table>
        <a href="products.aspx" class="btn btn-large"><i class="icon-arrow-left"></i>繼續購物 </a>
    </div>



</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptPlaceHolder" runat="Server">
    <script>

        var OrderID = location.search.substring(9, 24) //取得參數 ?OrderID=2014052800001 後面的訂單號碼
        $.ajax({
            "type": "get",//傳送資料的方法 get, post
            "url": "ashx/OrderDetails.ashx",//呼叫server端的哪支程式
            "datatype": "json",//Server回傳的檔案格式text,xml,json.script
            "data": { "OrderID": OrderID },//要傳送到server的資料
            "success": function (data) {//Server回傳的結果
                $.each(data, function () {
                    var td1 = $("<td style='width: 100px'></td>").append("<img src='/STTPshop/ashx/StdntGoodsImage.ashx?PictureID=" + this.GoodsID + "'/>").append("<input type='hidden' value='" + this.GoodsID + "'/>")
                    var td2 = $('<td></td>').append("<p>【" + this.GoodsName + "】商品編號：" + this.GoodsID + "</p>")
                    var td3 = $('<td></td>').append(this.Quantity) //數量
                    var td4 = $('<td></td>').append("$NT" + this.UnitPrice) //單價
                    var td5 = $('<td></td>').append("$NT" + this.ShippingCost) //運費
                    var td6 = $('<td></td>').append("$NT" + ((this.Quantity * this.UnitPrice) + this.ShippingCost)) //小計
                    var td7 = $('<td></td>').append(this.SellerID) //賣家
                    var td8 = $('<td></td>').append(this.TransDateTime) //交易時間
                    var tr1 = $('<tr></tr>').append(td1).append(td2).append(td3).append(td4).append(td5).append(td6).append(td7).append(td8)
                    $('#ProductOrderDetails').append(tr1)
                })
            }
        })


    </script>
</asp:Content>

