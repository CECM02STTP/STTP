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
    <a id="Checkout" href="#" class="btn btn-large pull-right">結帳<i class="icon-arrow-right"></i></a>

    <!-- =================================================購物車清單 End====================================================================== -->
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="scriptPlaceHolder" runat="Server">
    <script>
        $('#Checkout').click(function () {
            if (getCookie("name") == null) {
                alert("請先登入")
            }
            else {
                Checkout();
            }
        })

        function Checkout()
        {
            
            var Goods = [{ "GoodsID": "1", "Quantity": 3 },
                        { "GoodsID": "2", "Quantity": 6 },
                        { "GoodsID": "3", "Quantity": 9 }];

            //for (var i = 0; i < Goods.length; i++) {
            //    for (var idx_Key in Goods[i]) {
                    
            //        //以本例而言，自然分別會是：name、age、height
                   
            //        alert(Goods[i][idx_Key]);
                    
            //    }
                
            //}
            console.log(Goods)



            $.getJSON("ashx/CreatOrderHandler.ashx", { "MemberID": getCookie("name"), "Goods": Goods }, function (data) {
                console.log(data)
            })

        }

    </script>
    

</asp:Content>
