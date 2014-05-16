<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WishList.aspx.cs" Inherits="WishList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/wishlist.css" rel="stylesheet" />
    <link href="styles/aboutLisg.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<%--===========================================================更改設置div 起點================================================--%>
    <div id="divPrivacyLink" class="ap_popover ap_popover_sprited"  tabindex="0" style="display:none; left: 430px; top: 200px; z-index: 200; position: absolute; width: 450px; margin: 0px;">
        <div class="ap_header">
            <div class="ap_left"></div>
            <div class="ap_middle"></div>
            <div class="ap_right"></div>
        </div>
        <div class="ap_body">
            <div class="ap_left"></div>
            <div class="ap_content" style="padding: 18px 17px 8px;">
                <span id="editPrivacyContent" style="display: inline;">
                    <table>
                        <tbody>
                            <tr>
                                <td valign="top">
                                    <input type="radio" id="editPrivacyContent_r0" name="isPrivate" value="N" checked="checked" />
                                </td>
                                <td>
                                    <label for="editPrivacyContent_r0">
                                        <strong>公开</strong><br>
                                        你可以跟任何人分享该心愿单。
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <input type="radio" id="editPrivacyContent_r2" name="isPrivate" value="U">
                                </td>
                                <td>
                                    <label for="editPrivacyContent_r2">
                                        <strong>通过链接分享</strong><br>
                                        其他人只有通过您主动发送的链接地址才可以看到此心愿单，无法通过其他方式看到，包括搜索。
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <input type="radio" id="editPrivacyContent_r1" name="isPrivate" value="Y">
                                </td>
                                <td>
                                    <label for="editPrivacyContent_r1">
                                        <strong>保密</strong><br>
                                        只有你能看到该心愿单。
                                    </label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div style="padding-bottom: 20px; padding-top: 10px;">
                         <button id="editPrivacySave" class="btn btn-mini btn-warning" type="button">保存</button>
                        <button id="editPrivacyCancel" class="btn btn-mini" type="button">取消</button>
                    </div>
                </span>
            </div>
            <div class="ap_right"></div>
        </div>
        <div class="ap_footer">
            <div class="ap_left"></div>
            <div class="ap_middle"></div>
            <div class="ap_right"></div>
        </div>
        <div class="ap_titlebar" style="width: 414px; cursor: move; display: block;">
            <div class="ap_title" style="width: 380px;">修改隱私設置</div>
        </div>
        <div class="ap_close" style="cursor: default;"><a href="#"><span class="ap_closetext" style="display: inline;">關閉</span><span class="ap_closebutton"><span></span></span></a></div>
    </div>

<%--===========================================================更改設置div 結束點================================================--%>
<%--===========================================================管理該心願單 起點================================================--%>

    <div id="divThisListContent" class="ap_popover ap_popover_sprited"  tabindex="0" style="display:none;left: 400px; top: 198.25px; z-index: 200; position: absolute; width: 250px;">
        <div class="ap_header">
            <div class="ap_left"></div>
            <div class="ap_middle"></div>
            <div class="ap_right"></div>
        </div>
        <div class="ap_body">
            <div class="ap_left"></div>
            <div class="ap_content" style="padding-left: 17px; padding-right: 17px; padding-bottom: 8px;">
                <span id="editThisListContent" style="display: inline;" class="wlNoUnderline">
                    <div class="wl-popover-header">管理該心願單</div>





                    <div id="listAction-edit" class="wlMenuItem">
                        <a href="https://www.amazon.cn/registry/wishlist/2XOZ0I5G30KB8/settings.html/ref=cm_wl_act_settings">修改相關設置</a>
                    </div>
                    <div id="listAction-editName" class="wlMenuItem ap_custom_close">
                        <a href="#">
                            <span>編輯心願單名稱...</span>
                        </a>
                    </div>

                    <div id="listAction-editPrivacy" class="wlMenuItem ap_custom_close">
                        <a href="#">
                            <span>更改保密設置...</span>
                        </a>
                    </div>


                    <div id="listAction-delete" class="wlMenuItem">
                        <a href="https://www.amazon.cn/gp/registry/delete.html/ref=cm_wl_act_del?ie=UTF8&amp;id=2XOZ0I5G30KB8">刪除該心願單</a>
                    </div>


                </span>
            </div>
            <div class="ap_right"></div>
        </div>
        <div class="ap_footer">
            <div class="ap_left"></div>
            <div class="ap_middle"></div>
            <div class="ap_right"></div>
        </div>
        <div class="ap_titlebar" style="display: none;">
            <div class="ap_title"></div>
        </div>
        <div class="ap_close" style="display: none;"><a href="#"><span class="ap_closetext"></span><span class="ap_closebutton"><span>Close</span></span></a></div>
    </div>

    <%--===========================================================管理該心願單 結束點================================================--%>
   <%--===========================================================心願單TOP 起點================================================--%>

    <div>
        <div class="TableSearch">
            <label for="wishlistSearch">查找他人的心願單</label>
            <input placeholder="輸入姓名或電子郵件" name="field-name" id="wishlistSearch" type="text" size="15" />
            <input class="go" type="image"  src="/website4/images/go.gif" />
        </div>

 <span id="wishName"  contenteditable="true">心願單名稱</span>
        <span id="listTitleHoverLink" style="display: none;">點擊編輯心願單名稱</span>
        <div id="privacyMessage">
       
      <span style="display: none" id="privacyMessagePrivateTxt">只有你能看到該心願單。</span>
      <span style="display: inline" id="privacyMessagePublicTxt">任何人都可以搜索並看該心願單。</span>
      <span style="display: none" id="privacyMessageUnlistedTxt">任何人都可以看到該心願單。</span>
            <span id="editPrivacyLink" class="btn btn-small btn-link" >更改设置</span>
        |   <span id="previewLink" class="btn btn-small btn-link" >預覽心願單</span>


    </div>
        <div>
            <span id="editThisList" class="btn btn-small btn-link" ><i class="icon-align-justify"></i>管理該心願單</span>
             <span id="Span1" class="btn btn-small btn-link" ><i class="icon-envelope"></i>與朋友分享</span>

        </div>
   </div>
  
   <%--===========================================================心願單TOP 結束點================================================--%>

<%--    =========================================搜尋條件==================================== --%>

    		<div class="sortbarTopAnimate"></div>

       <table class="TableSearch">
	<tbody><tr  valign="top">
		<td class="sortbarText "><label for="revealDropdown">顯示</label>
</td>
		<%--<td class="sortbarText productToggle"><label for="productGroupDropdown">類別</label>
</td>--%>
		<td class="sortbarText sortToggle"><label for="sortDropdown">排序</label>
</td>
		<%--<td colspan="2" class="sortbarText viewToggle"><label for="viewDropdown">檢視方式</label>
</td>--%>
</tr>
	<tr valign="top">
		<td><select name="reveal" id="revealDropdown" class="sortbarText"><option value="unpurchased" selected="selected">未購買</option>
<option value="purchased">以購買</option>
<option value="all">全部</option>
</select>
</td>
		<%--<td><select name="filter" id="productGroupDropdown" class="sortbarText productToggle"><option value="all">所有商品</option>
<option value="price-drop">查看降价商品</option>
<option value="siS3KOCF20NRF09A">所有Amazon.cn商品</option>
<option value="sxS3KOCF20NRF09A">广泛的商品</option>
<option value="wfa">觀念</option>
<option value="3">图书</option>
<option value="31">玩具</option>
</select>
</td>--%>
		<td><select name="sort" id="sortDropdown" class="sortbarText sortToggle"><option value="universal-title">产品名称</option>
<option value="universal-price">价格（从低到高）</option>
<option value="universal-price-desc">价格（从高到低）</option>
<option value="date-added" selected="yes">增添商品日期</option>
<option value="last-updated">最后更新</option>
<option value="priority">优先级（由高到低）</option>
</select>
</td>
		<%--<td><select name="layout" id="viewDropdown" class="sortbarText viewToggle"><option value="standard" selected="yes">标准</option>
<option value="compact">紧凑</option>
</select>
</td>--%>
        <td class="go">
            <input type="image"  src="/website4/images/go.gif" />
        </td>
	
</tr>
      
</tbody></table>

    <div style="clear:both"></div>
  
<%--    =========================================搜尋條件==================================== --%>
    <div class="row">
      <div class="span2">
        <a href="#" class="thumbnail">
            <img src="/website4/images/iwant.png" alt=""/> 
        </a>
      </div>
      <div class="span3"  > 
              <div style="padding-bottom:10px"><strong>先記一下，稍後購買</strong></div>  
        <input type="text"  style="width:250px" />
        

       <button class="btn btn-mini btn-info">添加至心願單</button>
          
          
      </div>
              <div class="span2"> 
          <img src="http://g-ec4.images-amazon.com/images/G/28/gifts/registries/wishlist/helperborder._V401956180_.png" width="10" alt="" style="padding-right:7px; height:90px; width: 10px;" height="113" border="0" />
              <span class="wfaHelpExamplesText">添加想購買的商品</span>
              </div>

    </div>
    <hr />

    <div class="row">
      <div class="span2">
        <a href="#" class="thumbnail">
            <img src="/website4/images/iwant.png" alt=""/> 
        </a>
      </div>
      <div class="span5 keyword"  > 
              <div style="padding-bottom:10px"><strong>觀念關鍵字</strong></div>  
        

            <button class="btn btn-mini btn-warning">搜尋結果</button>
          | <a href="#" ><span class="label label-info" >移动到另一心愿单</span></a>
          | <a href="#" ><span class="label label-info" >移除</span></a> 
          

      </div>
        <div class="span2">
           <div class="textLink"> <a class="btn btn-small btn-link">编辑評論、數量、優先級</a></div>
       
        </div>

    </div>
    <hr />

    <div class="row">
      <div class="span2">
        <a href="#" class="thumbnail">
            <img src="/WebSite4/ashx/ProductCartHandler.ashx?ID=2015" alt=""/> 
        </a>
      </div>
      <div class="span5">      
        <h4><strong><a href="#">商品名稱</a></strong></h4>
          <div><span>BY品牌</span></div>
           <div><span>價錢</span></div>
            <div><span>賣家</span></div>
          
            <a href="#" ><span class="label label-info" >移动到另一心愿单</span></a> |   <a href="#" ><span class="label label-info" >移除</span></a> --%>

      </div>
        <div class="span2">
           <div class="textLink"> <a class="btn btn-small btn-link">编辑評論、數量、優先級</a></div>
       
        </div>
    </div>

    <div class="row">
      <div class="span9">
     
        <p>
      <%--    <i class="icon-user"></i> by <a href="#">品牌</a> --%>
          | <i class="icon-calendar"></i> 添加日期：2014年5月12日
          | <button class="btn btn-mini btn-warning">加入購物車</button>
          | <a href="#" ><span class="label label-info" >移动到另一心愿单</span></a>
          | <a href="#" ><span class="label label-info" >移除</span></a> 
<%--                      | <a href="#" class="btn btn-small btn-link">移动到另一心愿单</a>
                   | <a href="#" class="btn btn-small btn-link">移除</a>--%>
          | <a href="#" class="btn btn-small btn-link">编辑评论、数量、优先级</a>
      <%--    | <i class="icon-comment"></i> <a href="#">3 Comments</a>--%>
    
       <%--   | <i class="icon-tags"></i> Tags : <a href="#"><span class="label label-info">Snipp</span></a> 
          <a href="#"><span class="label label-info">Bootstrap</span></a> 
          <a href="#"><span class="label label-info">UI</span></a> 
          <a href="#"><span class="label label-info">growth</span></a>--%>
        </p>
      </div>
    </div>
<%--  </div>
</div>--%>
<hr/>

<div class="row">
  <div class="span8">
    <div class="row">
      <div class="span8">
        <h4><strong><a href="#">Title of the post</a></strong></h4>
      </div>
    </div>
    <div class="row">
      <div class="span2">
        <a href="#" class="thumbnail">
            <img src="http://placehold.it/260x180" alt="">
        </a>
      </div>
      <div class="span6">      
        <p>
          Lorem ipsum dolor sit amet, id nec conceptam conclusionemque. Et eam tation option. Utinam salutatus ex eum. Ne mea dicit tibique facilisi, ea mei omittam explicari conclusionemque, ad nobis propriae quaerendum sea.
        </p>
      </div>
    </div>
    <div class="row">
      <div class="span8">
        <p></p>
        <p>
          <i class="icon-user"></i> by <a href="#">Mark</a> 
          | <i class="icon-calendar"></i> Sept 16th, 2012
          | <i class="icon-comment"></i> <a href="#">3 Comments</a>
          | <i class="icon-share"></i> <a href="#">39 Shares</a>
          | <i class="icon-tags"></i> Tags : <a href="#"><span class="label label-info">Snipp</span></a> 
          <a href="#"><span class="label label-info">Bootstrap</span></a> 
          <a href="#"><span class="label label-info">UI</span></a> 
          <a href="#"><span class="label label-info">growth</span></a>
        </p>
      </div>
    </div>
  </div>
</div>
<hr>

<div class="row">
  <div class="span8">
    <div class="row">
      <div class="span8">
        <h4><strong><a href="#">Title of the post</a></strong></h4>
      </div>
    </div>
    <div class="row">
      <div class="span2">
        <a href="#" class="thumbnail">
            <img src="http://placehold.it/260x180" alt=""/>
        </a>
      </div>
      <div class="span6">      
        <p>
          Lorem ipsum dolor sit amet, id nec conceptam conclusionemque. Et eam tation option. Utinam salutatus ex eum. Ne mea dicit tibique facilisi, ea mei omittam explicari conclusionemque, ad nobis propriae quaerendum sea.
        </p>
        <p><a href="#">Read more</a></p>
      </div>
    </div>
    <div class="row">
      <div class="span8">
        <p></p>
        <p>
          <i class="icon-user"></i> by <a href="#">Mark</a> 
          | <i class="icon-calendar"></i> Sept 16th, 2012
          | <i class="icon-comment"></i> <a href="#">3 Comments</a>
          | <i class="icon-share"></i> <a href="#">39 Shares</a>
          | <i class="icon-tags"></i> Tags : <a href="#"><span class="label label-info">Snipp</span></a> 
          <a href="#"><span class="label label-info">Bootstrap</span></a> 
          <a href="#"><span class="label label-info">UI</span></a> 
          <a href="#"><span class="label label-info">growth</span></a>
        </p>
      </div>
    </div>
  </div>
</div>
<hr/>

<%--    =========================================編輯評論 起點==============================--%>
    <div id="divComment" class="ap_popover ap_popover_sprited" surround="6,16,18,16" tabindex="0" style="display:none; left: 702px; top: 274.5px; z-index: 200; position: absolute; width: 400px;">
        <div class="ap_header">
            <div class="ap_left"></div>
            <div class="ap_middle"></div>
            <div class="ap_right"></div>
        </div>
        <div class="ap_body">
            <div class="ap_left"></div>
            <div class="ap_content" style="padding: 18px 17px 8px;">
                <div id="addnotespopover">
                    <table class="notesInlineAlert message mini warning" style="display: none">
                        <tbody>
                            <tr>
                                <td valign="top" style="padding-right: 10px;">
                                    <span class="swSprite s_alertSm" style="padding: 0px; width: 17px; height: 17px;"></span>
                                </td>
                                
                            </tr>
                        </tbody>
                    </table>

                    <div style="padding-top: 5px; padding-bottom: 5px;">
                        <span>
                            <div style="float: left;" class="popimg">
                                <img src="http://g-ec4.images-amazon.com/images/G/28/gifts/registries/wishlist/note01._SL72_V391057560_.png" width="36" alt="商品图片" height="35" border="0"><img src="http://g-ec4.images-amazon.com/images/G/28/x-locale/common/transparent-pixel._V386947693_.gif" vspace="0" width="36" hspace="0" alt="" height="35" border="0"></div>
                        </span>
                        <span>
                            <div style="font-weight: bold; font-size: 11px;" class="poptitle peekabooFixHeight">123</div>
                            <div class="popbyline peekabooFixHeight"></div>
                        </span>
                    </div>
                    
                    

                    <div style="padding-top: 5px; clear: left;">
                        <div style="padding-bottom: 5px;">
                            <div style="text-align: left; float: left; font-weight: bold;">
                                <label class="labelcomments" for="textareaitemComment.I1I4CB7MLPPVRJ">評論</label>
                            </div>
                            <div class="microGrey" style="text-align: right;">(不超過100字) </div>
                        </div>
                        <div>
                            <textarea class="popcomments" rows="4" cols="38" name="itemComment.I1I4CB7MLPPVRJ" id="textareaitemComment.I1I4CB7MLPPVRJ" style="width: 328px;"></textarea>
                        </div>
                        <table>
                            <tbody>
                                <tr class="noteFieldNoError desiredField">
                                    <td style="padding-top: 7px; padding-bottom: 5px; font-weight: bold; text-align: right;">
                                        <label for="labelrequestedQty.I1I4CB7MLPPVRJ">希望得到的数量：</label>
                                    </td>
                                    <td style="padding-left: 5px; align: left;">
                                        <input type="text" size="3" class="tiny popqty" value="1" name="requestedQty.I1I4CB7MLPPVRJ" id="labelrequestedQty.I1I4CB7MLPPVRJ">
                                    </td>
                                </tr>
                                <tr class="noteFieldNoError purchasedField">
                                    <td style="font-weight: bold; text-align: right;">
                                        <label for="labelpurchasedQty:0.I1I4CB7MLPPVRJ">已接受商品数量：</label>
                                    </td>
                                    <td style="padding-left: 5px; align: left;">
                                        <input type="text" size="3" class="tiny popPurchasedQty" value="0" name="purchasedQty:0.I1I4CB7MLPPVRJ" id="labelpurchasedQty:0.I1I4CB7MLPPVRJ">
                                    </td>
                                </tr>
                                <tr class="priorityField">
                                    <td style="font-weight: bold; text-align: right;">
                                        <label for="labelpriority.I1I4CB7MLPPVRJ">優先級：</label>
                                    </td>
                                    <td style="padding-left: 5px; align: left;">
                                        <select class="tiny popPriority" name="priority.I1I4CB7MLPPVRJ"  id="labelpriority.I1I4CB7MLPPVRJ">
                                            <option value="2">高</option>
                                            <option selected="selected" value="1">中级</option>
                                            <option value="0">低</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div style="padding-bottom: 20px; padding-top: 10px;">
                         <button id="Button1" class="btn btn-mini btn-warning" type="button">保存</button>
                        <button id="Button2" class="btn btn-mini" type="button">取消</button>
                    </div>
                </div>
            </div>
            <div class="ap_right"></div>
        </div>
        <div class="ap_footer">
            <div class="ap_left"></div>
            <div class="ap_middle"></div>
            <div class="ap_right"></div>
        </div>
        <div class="ap_titlebar" style="width: 364px; cursor: move; display: block;">
            <div class="ap_title" style="width: 330px;">編輯評論、數量、優先級</div>
        </div>
        <div class="ap_close" style="cursor: default;"><a href="#"><span class="ap_closetext" style="display: inline;">關閉</span><span class="ap_closebutton"><span></span></span></a></div>
    </div>
<%--    =========================================編輯評論 結束點==============================--%>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="AsidePlaceHolder" Runat="Server">

        <div class="span2" >
		    <img src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm" class="img-circle">
        </div>
        
        <div class="span3">
            <h4>使用者名稱</h4>
            <h6>電子郵件:tuhongze@gmail.com</h6>
            <h6>送到：
添加送貨地址</h6>
            <h6>生日</h6>
            <h6>關於我</h6>
          
                 
        </div>
      
        <div class="span2">
 <button class="btn btn-success " type="button">新建心願單</button>
               <hr />
            <div class="btn-group">
                <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
                    你的心願單 
                    <span class="icon-heart icon-white"></span><span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#"><span class="icon-gift"></span>新建一</a></li>
                    <li><a href="#"><span class="icon-gift"></span> 新建二</a></li>
                </ul>
            </div>
            <hr />
            <div><span>朋友和家人的心願單</span></div>

        </div>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="scriptPlaceHolder" Runat="Server">
    <script>
        $('.ap_closetext').click(function () {
            $(this).parents('.ap_popover').css("display", "none");
        });
        $('.ap_closebutton').click(function () {
            $(this).parents('.ap_popover').css("display", "none");
        });
       
        //管理該心願單
        $('#editThisList').mouseover(function () {
    
            $('#divThisListContent').css("display", "inline");
            $('#divThisListContent').css("left", this.offsetLeft-21);
            $('#divThisListContent').css("top", this.offsetTop-21);
        });
        //更改設置
        $('#editPrivacyLink').click(function () {
            if ($('#divPrivacyLink').css("display") == "none") {
                $('#divPrivacyLink').css("display", "inline");
            } else
            {
                $('#divPrivacyLink').css("display", "none");

            }
            $('#divPrivacyLink').css("left", this.offsetLeft );
            $('#divPrivacyLink').css("top", this.offsetTop+15);
        });
        $('#divThisListContent').mouseleave(function () {
            $('#divThisListContent').css("display", "none");

        });
        //編輯評論、數量
        $('.textLink>a').click(function () {
          
            if ($('#divComment').css("display") == "none") {
                $('#divComment').css("display", "inline");
            } else {
                $('#divComment').css("display", "none");

            }
            $('#divComment').css("left", this.offsetLeft-380);
            $('#divComment').css("top", this.offsetTop-200 );
        });

        $('#wishName').hover(function () {
            $('#listTitleHoverLink').css("display", "inline");
        }, function () {
            $('#listTitleHoverLink').css("display", "none");

        }).blur(function () {
            $('#listTitleHoverLink').html("以保存");
        });
      


    </script>

</asp:Content>