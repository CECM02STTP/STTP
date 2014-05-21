<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BarterRespond.aspx.cs" Inherits="Bartering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AsidePlaceHolder" runat="Server">
    <%--<div class="span3" >--%>
    <%--	<div class="row-fluid">--%>
    <div class="span2">
        <%--<img src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm" class="img-circle">--%>
        <img src="assets/img/old_bike.JPG" class="img-circle" />
    </div>

    <div class="span3">
        <h4>【二手】自行車 </h4>
        <h6>Email: MyEmail@servidor.com</h6>
        <h6>物品所在位置: 台北市</h6>
        <h6>物品狀態: 使用過</h6>
        <h6>是否同時出售中: 是，價格為: 500元 </h6>
        <h6>物品狀態: </h6>
        <h6>詳細說明:  一個月前換過煞車線，輪胎胎紋為自然磨損狀態</h6>
        <h6><a href="#">More... </a></h6>
        <h4>更改您的設定</h4>
    </div>

    <div class="span2">
        <div class="btn-group">
            <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">Action
                    <span class="icon-cog icon-white"></span><span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
                <li><a href="#"><span class="icon-wrench"></span>Modify</a></li>
                <li><a href="#"><span class="icon-trash"></span>Delete</a></li>
            </ul>
        </div>
    </div>
    <%--</div>--%>
    <%--</div>--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">


    <!-- CSS -->
    <%--    <style>
        .container_x {
            border: 1px dashed #CCC;
            position: relative;
        }

        .x {
            background: #AAA;
            position: absolute;
            height: 100px;
            width: 100px;
        }

        .x_size {
        }

        .container > .ss-placeholder-child {
            background: transparent;
            border: 1px dashed blue;
        }

        .trash {
            border: 1px dashed red;
            height: 200px;
            margin-top: 50px;
            padding: 20px;
            text-align: center;
        }
    </style>--%>

    <!-- Javascript -->
    <%--  <script>
      $(document).ready(function () {
          $(".container").shapeshift();
          $(".trash").shapeshift({
              autoHeight: false,
              colWidth: 80,
              enableTrash: true
          });
      })
  </script>--%>

    <div id="topic">
        <h2>向您請求交換的物品</h2>
    </div>
    <div class="container_x">
        <div class="x">
            <div>
                <img src="assets/products/好折凳.jpg" />
            </div>
            <p>...more info好折凳</p>
        </div>

        <div class="x">
            <div>
                <img src="assets/products/asp45-3.jpg" />
            </div>
            <p>...more info</p>
        </div>
        <div class="x">
            <div>
                <img src="assets/products/new電風扇.jpg" />
            </div>
            <p>...more info電風扇</p>
        </div>
        <div class="x">
            <div>
                <img src="assets/products/Accounting.jpg" />
            </div>
            <p>...more info</p>
        </div>
        <div class="x">
            <div>
                <img src="assets/products/new檯燈.jpg" />
            </div>
            <p>...more info檯燈</p>
        </div>
    <div class="x">
        <div>
            <img src="assets/products/腳踏車1.jpg" />
        </div>
        <p>...more info腳踏車</p>
    </div>
    <div class="x">
        <div>
            <img src="assets/products/舊書桌.jpg" />
        </div>
        <p>...more info舊書桌</p>
    </div>

    </div>

    <div class="trash">
        不想交換的物品可以拉到這裡拒絕請求
 
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptPlaceHolder" runat="Server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>

    <!-- jQuery Touch Punch - Enable Touch Drag and Drop -->
    <script src="js/jquery.touch-punch.min.js"></script>

    <!-- jQuery.Shapeshift -->
    <script src="js/jquery.shapeshift.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".container_x").shapeshift();
            $(".trash").shapeshift({
                autoHeight: false,
                colWidth: 80,
                enableTrash: true
            });
        })
    </script>
</asp:Content>

