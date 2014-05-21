<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product_details.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <!-- ==================================================product_details Start====================================================================== -->
    <div class="span9">
        <ul class="breadcrumb">
            <li><a href="index.aspx">首頁</a> <span class="divider">/</span></li>
            <li><a href="products.aspx">商品</a> <span class="divider">/</span></li>
            <li class="active">商品明細</li>
        </ul>
        <div class="row">
            <div id="gallery" class="span3">
                <style>
                    #jquery-overlay {
                        position: absolute;
                        top: 0;
                        left: 0;
                        z-index: 90;
                        width: 100%;
                        height: 500px;
                    }

                    #jquery-lightbox {
                        position: absolute;
                        top: 0;
                        left: 0;
                        width: 100%;
                        z-index: 100;
                        text-align: center;
                        line-height: 0;
                    }

                        #jquery-lightbox a img {
                            border: none;
                        }

                    #lightbox-container-image-box {
                        position: relative;
                        background-color: #fff;
                        width: 250px;
                        height: 250px;
                        margin: 0 auto;
                    }

                    #lightbox-container-image {
                        padding: 10px;
                    }

                    #lightbox-loading {
                        position: absolute;
                        top: 40%;
                        left: 0%;
                        height: 25%;
                        width: 100%;
                        text-align: center;
                        line-height: 0;
                    }

                    #lightbox-nav {
                        position: absolute;
                        top: 0;
                        left: 0;
                        height: 100%;
                        width: 100%;
                        z-index: 10;
                    }

                    #lightbox-container-image-box > #lightbox-nav {
                        left: 0;
                    }

                    #lightbox-nav a {
                        outline: none;
                    }

                    #lightbox-nav-btnPrev, #lightbox-nav-btnNext {
                        width: 49%;
                        height: 100%;
                        zoom: 1;
                        display: block;
                    }

                    #lightbox-nav-btnPrev {
                        left: 0;
                        float: left;
                    }

                    #lightbox-nav-btnNext {
                        right: 0;
                        float: right;
                    }

                    #lightbox-container-image-data-box {
                        font: 10px Verdana, Helvetica, sans-serif;
                        background-color: #fff;
                        margin: 0 auto;
                        line-height: 1.4em;
                        overflow: auto;
                        width: 100%;
                        padding: 0 10px 0;
                    }

                    #lightbox-container-image-data {
                        padding: 0 10px;
                        color: #666;
                    }

                        #lightbox-container-image-data #lightbox-image-details {
                            width: 70%;
                            float: left;
                            text-align: left;
                        }

                    #lightbox-image-details-caption {
                        font-weight: bold;
                    }

                    #lightbox-image-details-currentNumber {
                        display: block;
                        clear: left;
                        padding-bottom: 1.0em;
                    }

                    #lightbox-secNav-btnClose {
                        width: 66px;
                        float: right;
                        padding-bottom: 0.7em;
                    }
                </style>
                <a href="assets/products/large/book_asp1.jpg" title="微軟MVP的ASP.NET 4.5專題實務I：C#入門實戰篇">
                    <img src="assets/products/large/book_asp1.jpg" width="100%" alt="Fujifilm FinePix S2950 Digital Camera" />
                </a>
                <div id="myCarousel" class="moreOptopm carousel slide">
                    <div class="carousel-inner">
                        <div class="item active">
                            <a href="assets/products/large/book_asp1.jpg">
                                <img width="29%" src="assets/products/large/book_asp1.jpg" alt="" /></a>
                            <a href="assets/products/large/book_asp2.jpg">
                                <img width="29%" src="assets/products/large/book_asp2.jpg" alt="" /></a>
                            <a href="assets/products/large/book_asp3.jpg">
                                <img width="29%" src="assets/products/large/book_asp3.jpg" alt="" /></a>
                        </div>
                        <div class="item">
                            <a href="assets/products/large/book_asp3.jpg">
                                <img width="29%" src="assets/products/large/book_asp3.jpg" alt="" /></a>
                            <a href="assets/products/large/book_asp1.jpg">
                                <img width="29%" src="assets/products/large/book_asp1.jpg" alt="" /></a>
                            <a href="assets/products/large/book_asp2.jpg">
                                <img width="29%" src="assets/products/large/book_asp2.jpg" alt="" /></a>
                        </div>
                    </div>
                    <!--  
			  <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a> 
			  -->
                </div>

                <div class="btn-toolbar">
                    <div class="btn-group">
                        <span class="btn"><i class="icon-envelope"></i></span>
                        <span class="btn"><i class="icon-print"></i></span>
                        <span class="btn"><i class="icon-zoom-in"></i></span>
                        <span class="btn"><i class="icon-star"></i></span>
                        <span class="btn"><i class=" icon-thumbs-up"></i></span>
                        <span class="btn"><i class="icon-thumbs-down"></i></span>
                    </div>
                </div>
            </div>
            <div class="span6">
                <h3 id="productname">微軟MVP的ASP.NET 4.5專題實務I：<br>
                    C#入門實戰篇</h3>
                <small style="color: red">二手九成五新 - (附光碟) -</small>
                <hr class="soft" />
                <form class="form-horizontal qtyFrm">
                    <div class="control-group">
                        <label class="control-label"><span>NT$500.00</span></label>
                        <div class="controls">
                            <input id="pCount" type="number" class="span1" placeholder="數量" />
                            <button id="addCart" type="button" class="btn btn-large pull-right"><i class=" icon-shopping-cart"></i>加入購物車</button>
                        </div>
                    </div>
                </form>

                <hr class="soft" />
                <h4>庫存1本</h4>
                <!--<form class="form-horizontal qtyFrm pull-right">
				  <div class="control-group">
					<label class="control-label"><span>Color</span></label>
					<div class="controls">
					  <select class="span2">
						  <option>Black</option>
						  <option>Red</option>
						  <option>Blue</option>
						  <option>Brown</option>
						</select>
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label"><span>Materials</span></label>
					<div class="controls">
					  <select class="span2">
						  <option>Slik</option>
						  <option>Cotton</option>
						  <option>Mix</option>
						  <option>Ruby</option>
						</select>
					</div>
				  </div> 
				</form>-->
                <hr class="soft clr" />
                <p>
                    <b>本書特色</b><br>
                    <br>
                    全新改版！範例追加 270%。<br>
                    作者曾任資策會講師，08~12年五屆微軟MVP最有價值專家。<br>
                    全台最專業電腦書店，台北市天瓏書局 ASP.NET長年暢銷書籍。<br>
                    一個範例學通 PostBack觀念，瞬間領悟ASP.NET精髓！<br>
                    深入剖析GridView範例，寫程式徹底控制GridView、ListView。<br>
                    七個範例學會 RowDataBound事件，打造您專屬的GridView畫面與功能。<br>
                    最精華的ADO.NET理論、程式，近200頁內容難得一見。<br>
                </p>
                <a class="btn btn-small pull-right" href="#detail">詳細介紹</a>
                <br class="clr" />
                <a name="detail"></a>
                <hr class="soft" />
            </div>

            <div class="span9">
                <ul id="productDetail" class="nav nav-tabs">
                    <li class="active"><a href="#home" data-toggle="tab">商品明細</a></li>
                    <li><a href="#profile" data-toggle="tab">相關商品</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade active in" id="home">
                        <h4>商品資訊</h4>
                        <table class="table table-bordered" cellspacing="0">
                            <tbody>
                                <tr class="techSpecRow">
                                    <th colspan="2">詳細資料</th>
                                </tr>
                                <tr class="techSpecRow">
                                    <td class="techSpecTD1">ISBN：</td>
                                    <td class="techSpecTD2">9789572240601</td>
                                </tr>
                                <tr class="techSpecRow">
                                    <td class="techSpecTD1">叢書系列：</td>
                                    <td class="techSpecTD2"><a href="#detail">程式設計</a></td>
                                </tr>
                                <tr class="techSpecRow">
                                    <td class="techSpecTD1">規格：</td>
                                    <td class="techSpecTD2">平裝 / 1064頁 / 17 x 23 cm / 普通級 / 單色印刷 / 初版</td>
                                </tr>
                                <tr class="techSpecRow">
                                    <td class="techSpecTD1">出版地：</td>
                                    <td class="techSpecTD2">台灣</td>
                                </tr>
                            </tbody>
                        </table>

                        <h3>〈內容簡介〉</h3>
                        <p>您是否買了很多書，卻總是學不會？是否每一個功能都玩過，但就是寫不出一個整合的商務網站？<br>
                            恭喜您！這本書將讓你一掃過去陰霾！</p>
                        <h4>基礎入門篇</h4>
                        <p>
                            有別於市面上的其他入門書籍，這裡的入門章節有著驚人數量的實戰範例。唯有實用的範例，搭配不斷的練習，才能把入門的基礎學好。
                        </p>

                        <h4>實作練習篇</h4>
                        <p>
                            ASP.NET最吸引初學者的大型範例，就是GridView這四大控制項。本書以GridView為例，徹底剖析其中的關鍵與細節，一旦學成，再也沒有其他控制項會難倒你。
                        </p>

                        <h4>核心觀念篇</h4>
                        <p>
                            本書收錄的兩大章ADO.NET內容，除了觀念的解析之外，實戰範例就單獨提供一章，務必讓讀者真正學好 ADO.NET為止。
                        </p>
                        <h4>應用技巧篇</h4>
                        <p>
                            檔案上傳、檔案串流、以及AJAX非同步網頁，都是網頁程式裡面最常運用的技巧。除了基本介紹之外，這幾章的範例與練習，每一支程式都是千挑萬選。隨手挑選一個範例，都能讓您立即使用，而且是您迫切需要的功能。尤其是多個檔案的「批次上傳」，本書提供的經典範例與技巧，保證絕無僅有。
                        </p>
                    </div>
                    <div class="tab-pane fade" id="profile">
                        <div id="myTab" class="pull-right">
                            <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
                            <a href="#blockView" data-toggle="tab"><span class="btn btn-large active"><i class="icon-th-large icon-white"></i></span></a>
                        </div>
                        <br class="clr" />
                        <hr class="soft" />
                        <div class="tab-content">
                            <div class="tab-pane" id="listView">
                                <div class="row">
                                    <div id="productView" class="span2">
                                        <img src="assets/products/asp45-1.jpg" alt="" />
                                    </div>
                                    <div class="span4">
                                        <h3>新品 | 尚有庫存</h3>
                                        <hr class="soft" />
                                        <h5>微軟MVP的ASP.NET 4.5專題實務II：範例應用與4.5新功能</h5>
                                        <p>
                                            作者： MIS2000 Lab、周棟祥、吳進魯
                                        </p>
                                        <a class="btn btn-small  pull-right" href="product_details.aspx">檢視商品明細</a>
                                        <br class="clr" />
                                    </div>
                                    <div class="span3 alignR">
                                        <form class="form-horizontal qtyFrm">
                                            <h3>NT$820.00</h3>
                                            <label class="checkbox">
                                                <input type="checkbox">
                                                將商品加進比較清單中
                                            </label>
                                            <br />
                                            <div class="btn-group">
                                                <a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i>放入購物車</a>
                                                <a href="product_details.aspx" class="btn btn-large">檢視</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr class="soft" />
                                <div class="row">
                                    <div id="Div1" class="span2">
                                        <img src="assets/products/asp45-2.jpg" alt="" />
                                    </div>
                                    <div class="span4">
                                        <h3>新品 | 尚有庫存</h3>
                                        <hr class="soft" />
                                        <h5>ASP.NET 4.5與jQuery Mobile跨行動裝置網站開發：使用C#(附光碟)</h5>
                                        <p>
                                            作者： 陳會安
                                        </p>
                                        <a class="btn btn-small pull-right" href="product_details.aspx">檢視商品明細</a>
                                        <br class="clr" />
                                    </div>
                                    <div class="span3 alignR">
                                        <form class="form-horizontal qtyFrm">
                                            <h3>NT$600.00</h3>
                                            <label class="checkbox">
                                                <input type="checkbox">
                                                將商品加進比較清單中
                                            </label>
                                            <br />
                                            <div class="btn-group">
                                                <a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i>放入購物車</a>
                                                <a href="product_details.aspx" class="btn btn-large">檢視</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr class="soft" />
                                <div class="row">
                                    <div id="Div2" class="span2">
                                        <img src="assets/products/asp45-3.jpg" alt="" />
                                    </div>
                                    <div class="span4">
                                        <h3>新品 | 尚有庫存</h3>
                                        <hr class="soft" />
                                        <h5>ASP.NET 4.5 網頁製作徹底研究：使用 VB 2012(附1片光碟片)</h5>
                                        <p>
                                            作者： 陳會安
                                        </p>
                                        <a class="btn btn-small pull-right" href="product_details.aspx">檢視商品明細</a>
                                        <br class="clr" />
                                    </div>
                                    <div class="span3 alignR">
                                        <form class="form-horizontal qtyFrm">
                                            <h3>NT$650.00</h3>
                                            <label class="checkbox">
                                                <input type="checkbox">
                                                將商品加進比較清單中
                                            </label>
                                            <br />
                                            <div class="btn-group">
                                                <a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i>放入購物車</a>
                                                <a href="product_details.aspx" class="btn btn-large">檢視</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr class="soft" />
                                <div class="row">
                                    <div id="Div3" class="span2">
                                        <img src="assets/products/asp45-4.jpg" alt="" />
                                    </div>
                                    <div class="span4">
                                        <h3>新品 | 尚有庫存</h3>
                                        <hr class="soft" />
                                        <h5>ASP.NET 4.5與jQuery Mobile跨行動裝置網站開發-使用VB(附光碟)</h5>
                                        <p>
                                            作者： 陳會安
                                        </p>
                                        <a class="btn btn-small pull-right" href="product_details.aspx">檢視商品明細</a>
                                        <br class="clr" />
                                    </div>
                                    <div class="span3 alignR">
                                        <form class="form-horizontal qtyFrm">
                                            <h3>NT$600.00</h3>
                                            <label class="checkbox">
                                                <input type="checkbox">
                                                將商品加進比較清單中
                                            </label>
                                            <br />
                                            <div class="btn-group">
                                                <a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i>放入購物車</a>
                                                <a href="product_details.aspx" class="btn btn-large">檢視</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <hr class="soft" />
                                <div class="row">
                                    <div id="Div4" class="span2">
                                        <img src="assets/products/asp45-5.jpg" alt="" />
                                    </div>
                                    <div class="span4">
                                        <h3>新品 | 尚有庫存</h3>
                                        <hr class="soft" />
                                        <h5>微軟MVP的ASP.NET 4.5專題實務I：VB入門實戰篇</h5>
                                        <p>
                                            作者： MIS2000 Lab. 周棟祥、吳進魯
                                        </p>
                                        <a class="btn btn-small pull-right" href="product_details.aspx">檢視商品明細</a>
                                        <br class="clr" />
                                    </div>
                                    <div class="span3 alignR">
                                        <form class="form-horizontal qtyFrm">
                                            <h3>NT$780.00</h3>
                                            <label class="checkbox">
                                                <input type="checkbox">
                                                將商品加進比較清單中
                                            </label>
                                            <br />
                                            <div class="btn-group">
                                                <a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i>放入購物車</a>
                                                <a href="product_details.aspx" class="btn btn-large">檢視</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr class="soft" />
                                <div class="row">
                                    <div id="Div5" class="span2">
                                        <img src="assets/products/asp45-6.jpg" alt="" />
                                    </div>
                                    <div class="span4">
                                        <h3>新品 | 尚有庫存</h3>
                                        <hr class="soft" />
                                        <h5>ASP.NET 網站開發實務：使用C#</h5>
                                        <p>
                                            作者： 蔡國強 
                                        </p>
                                        <a class="btn btn-small pull-right" href="product_details.aspx">檢視商品明細</a>
                                        <br class="clr" />
                                    </div>
                                    <div class="span3 alignR">
                                        <form class="form-horizontal qtyFrm">
                                            <h3>NT$750.00</h3>
                                            <label class="checkbox">
                                                <input type="checkbox">
                                                將商品加進比較清單中
                                            </label>
                                            <br />
                                            <div class="btn-group">
                                                <a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i>放入購物車</a>
                                                <a href="product_details.aspx" class="btn btn-large">檢視</a>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <hr class="soft" />
                            </div>
                            <div class="tab-pane active" id="blockView">
                                <ul class="thumbnails">
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a href="product_details.aspx">
                                                <img src="assets/products/asp45-1.jpg" alt="" /></a>
                                            <div class="caption">
                                                <h5>微軟MVP的ASP.NET 4.5專題實務II：範例應用與4.5新功能</h5>
                                                <p>
                                                    作者： MIS2000 Lab、周棟祥、吳進魯 
                                                </p>
                                                <h4><a class="btn btn-large" href="product_details.aspx">檢視</a> <span class="pull-right">NT$820.00</span></h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a href="product_details.aspx">
                                                <img src="assets/products/asp45-2.jpg" alt="" /></a>
                                            <div class="caption">
                                                <h5>ASP.NET 4.5與jQuery Mobile跨行動裝置網站開發：使用C#(附光碟)</h5>
                                                <p>
                                                    作者： 陳會安 
                                                </p>
                                                <h4><a class="btn btn-large" href="product_details.aspx">檢視</a> <span class="pull-right">NT$600.00</span></h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a href="product_details.aspx">
                                                <img src="assets/products/asp45-3.jpg" alt="" /></a>
                                            <div class="caption">
                                                <h5>ASP.NET 4.5 網頁製作徹底研究：使用 VB 2012(附1片光碟片)</h5>
                                                <p>
                                                    作者： 陳會安 
                                                </p>
                                                <h4><a class="btn btn-large" href="product_details.aspx">檢視</a> <span class="pull-right">NT$650.00</span></h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a href="product_details.aspx">
                                                <img src="assets/products/asp45-4.jpg" alt="" /></a>
                                            <div class="caption">
                                                <h5>ASP.NET 4.5與jQuery Mobile跨行動裝置網站開發-使用VB(附光碟)</h5>
                                                <p>
                                                    作者： 陳會安 
                                                </p>
                                                <h4><a class="btn btn-large" href="product_details.aspx">檢視</a> <span class="pull-right">NT$600.00</span></h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a href="product_details.aspx">
                                                <img src="assets/products/asp45-5.jpg" alt="" /></a>
                                            <div class="caption">
                                                <h5>微軟MVP的ASP.NET 4.5專題實務I：VB入門實戰篇</h5>
                                                <p>
                                                    作者： MIS2000 Lab. 周棟祥、吳進魯 
                                                </p>
                                                <h4><a class="btn btn-large" href="product_details.aspx">檢視</a> <span class="pull-right">NT$780.00</span></h4>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a href="product_details.aspx">
                                                <img src="assets/products/asp45-6.jpg" alt="" /></a>
                                            <div class="caption">
                                                <h5>ASP.NET 網站開發實務：使用C#</h5>
                                                <p>
                                                    作者： 蔡國強 
                                                </p>
                                                <h4><a class="btn btn-large" href="product_details.aspx">檢視</a> <span class="pull-right">NT$750.00</span></h4>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <hr class="soft" />
                            </div>
                        </div>
                        <br class="clr">
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- ==================================================product_details End====================================================================== -->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scriptPlaceHolder" runat="Server">
   <%-- <script>
        $('#addCart').click(function () {
            var a = Math.floor(Math.random() * 12+1);  //隨機取1~10 當作測試的ProductID
            var productID = a;
            var productcount = $('#pCount').val();
            //document.cookie = 'productID=' + productID;
            //document.cookie = "productcount=" + productcount;

            CookieCount();
            setCookie("productID" + getCookie("cookiecount"), productID)  //紀錄加入購物車的商品ProductID
            setCookie("productcount" + getCookie("cookiecount"), productcount) //紀錄加入購物車的商品數量
        })

        function CookieCount() {  //購物商品項目count+1
            
            if (getCookie("cookiecount")==null) {
                //if (isNaN(getCookie("cookiecount"))) {
                setCookie("cookiecount", 0)
                alert(getCookie("cookiecount"))
            }
            else {
                var c = parseInt(getCookie("cookiecount")) + 1
                setCookie("cookiecount", c)
                alert(getCookie("cookiecount"))
            }
        
        }
        
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
    </script>--%>

</asp:Content>
