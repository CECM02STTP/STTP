<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="WebSite1_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <!-- =================================================Login Start====================================================================== -->
    <div class="span9">
        <ul class="breadcrumb">
            <li><a href="index.aspx">首頁</a> <span class="divider">/</span></li>
            <li class="active">會員中心</li>
        </ul>
        <h3>註冊</h3>
        <div class="span9" style="min-height:900px">
        <hr class="soft" />
        <div class="row">
            <div class="span4">
                <div class="well">
                    <h5>註冊你的帳號</h5>
                    <br />
                    輸入你的電子信箱<br />
                    <br />
                    <br />
                    <form action="register.html">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">電子信箱</label>
                            <div class="controls">
                                <input class="span3" type="text" id="inputEmail" placeholder="Email">
                            </div>
                        </div>
                        <div class="controls">
                            <button type="submit" class="btn block">註冊你的帳號</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="span1">&nbsp;</div>
            <div class="span4">
                <div class="well">
                    <h5>登入你的帳號</h5>
                    <form>
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">信箱</label>
                            <div class="controls">
                                <input class="span3" type="text" id="Text1" placeholder="Email">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">密碼</label>
                            <div class="controls">
                                <input type="password" class="span3" id="inputPassword" placeholder="Password">
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn">登入</button>
                                <a href="forgetpass.html">忘記密碼?</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </div>
        </div>
        <!-- =================================================Login End====================================================================== -->
</asp:Content>

