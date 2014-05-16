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
                    <div class="wl-popover-header">管理该心愿单</div>





                    <div id="listAction-edit" class="wlMenuItem">
                        <a href="https://www.amazon.cn/registry/wishlist/2XOZ0I5G30KB8/settings.html/ref=cm_wl_act_settings">修改相关设置</a>
                    </div>
                    <div id="listAction-editName" class="wlMenuItem ap_custom_close">
                        <a href="#">
                            <nobr>编辑心愿单名称...</nobr>
                        </a>
                    </div>

                    <div id="listAction-editPrivacy" class="wlMenuItem ap_custom_close">
                        <a href="#">
                            <nobr>更改保密设置...</nobr>
                        </a>
                    </div>


                    <div id="listAction-delete" class="wlMenuItem">
                        <a href="https://www.amazon.cn/gp/registry/delete.html/ref=cm_wl_act_del?ie=UTF8&amp;id=2XOZ0I5G30KB8">删除该心愿单</a>
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
  <h3>心願單名稱</h3>
        <div id="privacyMessage">
       
      <span style="display: none" id="privacyMessagePrivateTxt">只有你能看到該心願單。</span>
      <span style="display: inline" id="privacyMessagePublicTxt">任何人都可以搜索並看該心願單。</span>
      <span style="display: none" id="privacyMessageUnlistedTxt">任何人都可以看到該心願單。</span>
            <span id="editPrivacyLink" class="btn btn-small btn-link" >更改设置</span>
        |   <span id="previewLink" class="btn btn-small btn-link" >預覽心願單</span>
    </div>
        <div>
            <span id="editThisList" class="btn btn-small btn-link" >管理該心願單</span>
      
        </div>
   </div>
  
   <%--===========================================================心願單TOP 結束點================================================--%>

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
<%--       <button class="btn btn-mini btn-warning">加入購物車</button>
          
            <a href="#" ><span class="label label-info" >移动到另一心愿单</span></a> |   <a href="#" ><span class="label label-info" >移除</span></a> --%>
<%--            <a class="btn" href="#">移動到另一心願單</a></p>--%>
   <%--       <a href="#" class="btn btn-large btn-primary disabled">移動到另一心願單</a>--%>

      </div>
        <div class="span2">
        <%--  添加日期：2014年5月12日--%>
<%--            <a class="btn  btn-link">编辑评论、数量、优先级</a>--%>
           <div> <a class="btn btn-small btn-link">编辑评论、数量、优先级</a></div>
       
        </div>
    </div>
    <div class="row">
      <div class="span8">
     
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
<hr>
<%--<div id="WishName">
    <h1>心願單名稱</h1>
    <br />



</div>
<table>
    <tbody>
        <tr>
            <td>圖片</td>
            <td><div>
                123
                </div></td>
        </tr>
    </tbody>

</table>--%>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="AsidePlaceHolder" Runat="Server">

<%--<div class="span3" >--%>
<%--	<div class="row-fluid">--%>
        <div class="span2" >
		    <img src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm" class="img-circle">
        </div>
        
        <div class="span3">
            <h4>User Name</h4>
            <h6>Email: MyEmail@servidor.com</h6>
            <h6>Ubication: Colombia</h6>
            <h6>Old: 1 Year</h6>
            <h6><a href="#">More... </a></h6>
            <h4>你的全部心愿单</h4>
        </div>
        
        <div class="span2">
            <div class="btn-group">
                <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
                    Action 
                    <span class="icon-cog icon-white"></span><span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#"><span class="icon-wrench"></span> Modify</a></li>
                    <li><a href="#"><span class="icon-trash"></span> Delete</a></li>
                </ul>
            </div>
        </div>
<%--</div>--%>
<%--</div>--%>

</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="scriptPlaceHolder" Runat="Server">
    <script>
        $('.ap_closetext').click(function () {
            $('.ap_popover').css("display","none");
        });
        $('#editThisList').hover(function () {
    
            $('#divThisListContent').css("display", "inline");
            $('#divThisListContent').css("left", this.offsetLeft-21);
            $('#divThisListContent').css("top", this.offsetTop-21);
        });

        $('#editPrivacyLink').click(function () {
            $('#divPrivacyLink').css("display", "inline");
        });
        $('#divThisListContent').mouseleave(function () {
            $('#divThisListContent').css("display", "none");

        });
    </script>

</asp:Content>