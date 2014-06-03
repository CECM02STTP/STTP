<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">教科書</li>
    </ul>
        <h3> 教科書 <small class="pull-right"> 有112個選擇 </small></h3>	
	<hr class="soft"/>
	<p>
		二手書請標明幾成新，並附上書籍照片供參考。
	</p>
	<hr class="soft"/>
	<form class="form-horizontal span6">
		<div class="control-group">
		  <label class="control-label alignL">Sort By </label>
			<select>
              <option>Priduct name A - Z</option>
              <option>Priduct name Z - A</option>
              <option>Priduct Stoke</option>
              <option>Price Lowest first</option>
            </select>
		</div>
	  </form>
	  
<div id="myTab" class="pull-right">
 <a href="#listView" data-toggle="tab"><span class="btn btn-large"><i class="icon-list"></i></span></a>
 <a href="#blockView" data-toggle="tab"><span class="btn btn-large active"><i class="icon-th-large icon-white"></i></span></a>
</div>
<br class="clr"/>
<div class="tab-content">
	<div class="tab-pane" id="listView">
		<div class="row">	  
			<div id="productView" class="span2">
				<img src="assets/products/3.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				二手書請標明幾成新，並附上書籍照片供參考。
				</p>
				<a class="btn btn-small pull-right" href="product_details.aspx">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> NT$140.00</h3>
			<label class="checkbox">
				<input type="checkbox">  Adds product to compair
			</label><br/>
			
			  <a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
			  <a href="product_details.aspx" class="btn btn-large">VIEW</a>
			
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div id="Div1" class="span2">
				<img src="assets/products/1.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				二手書請標明幾成新，並附上書籍照片供參考。
				</p>
				<a class="btn btn-small pull-right" href="product_details.aspx">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
				<h3> NT$140.00</h3>
				<label class="checkbox">
				<input type="checkbox">  Adds product to compair
				</label><br/>
				
				<a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				<a href="product_details.aspx" class="btn btn-large">VIEW</a>
				
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div id="Div2" class="span2">
				<img src="assets/products/3.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				二手書請標明幾成新，並附上書籍照片供參考。
				</p>
				<a class="btn btn-small pull-right" href="product_details.aspx">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
			<form class="form-horizontal qtyFrm">
				<h3> NT$140.00</h3>
				<label class="checkbox">
					<input type="checkbox">  Adds product to compair
				</label><br/>
				
				  <a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				  <a href="product_details.aspx" class="btn btn-large">VIEW</a>
				
			</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div id="Div3" class="span2">
				<img src="assets/products/3.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				二手書請標明幾成新，並附上書籍照片供參考。
				</p>
				<a class="btn btn-small pull-right" href="product_details.aspx">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> NT$140.00</h3>
				<label class="checkbox">
				<input type="checkbox">  Adds product to compair
				</label><br/>
				
				<a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				<a href="product_details.aspx" class="btn btn-large">VIEW</a>
				
				</form>
			</div>
		</div>
	
		<hr class="soft"/>
		<div class="row">	  
			<div id="Div4" class="span2">
				<img src="assets/products/3.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				二手書請標明幾成新，並附上書籍照片供參考。
				</p>
				<a class="btn btn-small pull-right" href="product_details.aspx">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> NT$140.00</h3>
				<label class="checkbox">
				<input type="checkbox">  Adds product to compair
				</label><br/>
				
				<a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				<a href="product_details.aspx" class="btn btn-large">VIEW</a>
				
				</form>
			</div>
		</div>
		<hr class="soft"/>
		<div class="row">	  
			<div id="Div5" class="span2">
				<img src="assets/products/3.jpg" alt=""/>
			</div>
			<div class="span4">
				<h3>New | Available</h3>				
				<hr class="soft"/>
				<h5>Product Name </h5>
				<p>
				二手書請標明幾成新，並附上書籍照片供參考。
				</p>
				<a class="btn btn-small pull-right" href="product_details.aspx">View Details</a>
				<br class="clr"/>
			</div>
			<div class="span3 alignR">
				<form class="form-horizontal qtyFrm">
				<h3> NT$140.00</h3>
				<label class="checkbox">
				<input type="checkbox">  Adds product to compair
				</label><br/>
				
				<a href="product_details.aspx" class="btn btn-large"><i class=" icon-shopping-cart"></i> Add to cart</a>
				<a href="product_details.aspx" class="btn btn-large">VIEW</a>
				
				</form>
			</div>
		</div>
		<hr class="soft"/>
	</div>



    <div class="tab-pane  active" id="blockView">
        <ul class="thumbnails">
            <li class="span3">
                <div class="thumbnail">
                    <a href="product_details.aspx">
                        <img src="assets/products/Accounting.jpg" alt="" /></a>
                    <div class="caption">
                        <h5>中級會計學 三版增修(IFRS) 上冊 </h5>
                        <p>
                            本書對每一實例或題目均列示詳盡的解題過程，並非僅列示最後答案；部分題目尚加列延伸題目。
                        </p>
                        <h4><a class="btn btn-large" href="product_details.aspx">VIEW</a> <span class="pull-right">NT$22.00</span></h4>
                    </div>
                </div>
            </li>
            <li class="span3">
                <div class="thumbnail">
                    <a href="product_details.aspx">
                        <img src="assets/products/AspdotNet.jpg" alt="" /></a>
                    <div class="caption">
                        <h5>微軟MVP的ASP.NET 4.5專題實務II：範例應用與4.5新功能</h5>
                        <p>
                            本書以最新的 .NET 4.5 與 VS 2012 進行完全改寫，追加的範例比上一版更多、更詳細。但仍保留了.NET 3.5 SP1~.NET 4.5 一系列的功能，讓每一位讀者都能快速入門、無痛學習。
                        </p>
                        <h4><a class="btn btn-large" href="product_details.aspx">VIEW</a> <span class="pull-right">NT$22.00</span></h4>
                    </div>
                </div>
            </li>
            <li class="span3">
                <div class="thumbnail">
                    <a href="product_details.aspx">
                        <img src="assets/products/Law.jpg" alt="" /></a>
                    <div class="caption">
                        <h5>刑事訴訟法-Key題-國考生.在校生(保成)</h5>
                        <p>
                            本書挑選歷來國家考試中具「基礎性」、「重複性高」之刑事訴訟法試題，分成申論、實例兩種題型，收錄在第一單元，餘下試題中，具有「特殊性」或「獨門性」者，則收錄在第二單元。
                        </p>
                        <h4><a class="btn btn-large" href="product_details.aspx">VIEW</a> <span class="pull-right">NT$22.00</span></h4>
                    </div>
                </div>
            </li>
            <li class="span3">
                <div class="thumbnail">
                    <a href="product_details.aspx">
                        <img src="assets/products/proEng.jpg" alt="" /></a>
                    <div class="caption">
                        <h5>Pro/ENGINEER模具設計</h5>
                        <p>
                            本書共分6個章節，每個章節根據模具分模設計中的步驟進行分類講解。
                        </p>
                        <h4><a class="btn btn-large" href="product_details.aspx">VIEW</a> <span class="pull-right">NT$22.00</span></h4>
                    </div>
                </div>
            </li>
            <li class="span3">
                <div class="thumbnail">
                    <a href="product_details.aspx">
                        <img src="assets/products/Unity.jpg" alt="" /></a>
                    <div class="caption">
                        <h5>Unity 跨平台3D全方位遊戲設計</h5>
                        <p>
                            Unity勘稱是近年來最熱門的遊戲設計軟體，許多大廠紛紛與之合作。快速的遊戲設計模式，成為許多開發者最佳的遊戲設計工具。 
                        </p>
                        <h4><a class="btn btn-large" href="product_details.aspx">VIEW</a> <span class="pull-right">NT$22.00</span></h4>
                    </div>
                </div>
            </li>
            <li class="span3">
                <div class="thumbnail">
                    <a href="product_details.aspx">
                        <img src="assets/products/engMath.jpg" alt="" /></a>
                    <div class="caption">
                        <h5>工程數學</h5>
                        <p>
                            二手 高立出版的工數 
                            以「簡單、明瞭、容易懂」的編輯理念，精心編排內容與例題，提供教師容易教學、讀者容易學習與自修的工程數學精要內容。
                        </p>
                        <h4><a class="btn btn-large" href="product_details.aspx">VIEW</a> <span class="pull-right">NT$22.00</span></h4>
                    </div>
                </div>
            </li>
        </ul>
        <hr class="soft" />
    </div>
    

	<a href="compair.html" class="btn btn-large pull-right">Compair Product</a>
    <div class="pagination">
        <ul>
            <li><a href="#">&lsaquo;</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">...</a></li>
            <li><a href="#">&rsaquo;</a></li>
        </ul>
    </div>
    <br class="clr" />
    


</asp:Content>

