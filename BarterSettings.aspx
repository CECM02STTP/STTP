<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BarterSettings.aspx.cs" Inherits="BarterSettins" %>

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
    <form class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>請選擇交換物品的地區</legend>

            <!-- Select Basic -->
            <div class="control-group">
                <label class="control-label" for="Region">地區</label>
                <div class="controls">
                    <select id="選擇地區" name="選擇地區" class="input-medium">
                        <option>北部</option>
                        <option>中部</option>
                        <option>南部</option>
                        <option>東部</option>
                    </select>
                </div>
            </div>

            <!-- Select Basic -->
            <div class="control-group">
                <label class="control-label" for="SubRegion">縣市</label>
                <div class="controls">
                    <select id="SubRegion" name="SubRegion" class="input-medium">
                        <option>台北市</option>
                        <option>台北縣</option>
                        <option>基隆市</option>
                        <option>桃園市</option>
                        <option>宜蘭市</option>
                    </select>
                </div>
            </div>

        </fieldset>
    </form>
    <form class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>您的物品狀態</legend>

            <!-- Select Basic -->
            <div class="control-group">
                <label class="control-label" for="condition">物品狀態</label>
                <div class="controls">
                    <select id="condition" name="condition" class="input-medium">
                        <option>全新</option>
                        <option>近全新</option>
                        <option>非常好</option>
                        <option>很好</option>
                        <option>用過</option>
                        <option>堪用</option>
                    </select>
                </div>
            </div>

            <!-- Textarea -->
            <div class="control-group">
                <label class="control-label" for="moreInfo">物品說明</label>
                <div class="controls">
                    <textarea id="moreInfo" name="moreInfo" class="input-large">封面有些折損，請參考圖片</textarea>
                </div>
            </div>

        </fieldset>
    </form>
    <form class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>請選擇你想交換物品的分類，最多三種</legend>

            <!-- Select Basic -->
            <div class="control-group">
                <label class="control-label" for="type1">主分類</label>
                <div class="controls">
                    <select id="type1" name="type1" class="input-medium">
                        <option>Option one</option>
                        <option>Option two</option>
                    </select>
                </div>
            </div>

            <!-- Select Basic -->
            <div class="control-group">
                <label class="control-label" for="subType1">次分類</label>
                <div class="controls">
                    <select id="subType1" name="subType1" class="input-medium">
                        <option>Option one</option>
                        <option>Option two</option>
                    </select>
                </div>
            </div>

            <!-- Select Basic -->
            <div class="control-group">
                <label class="control-label" for="type2">主分類</label>
                <div class="controls">
                    <select id="type2" name="type2" class="input-medium">
                        <option>Option one</option>
                        <option>Option two</option>
                    </select>
                </div>
            </div>
            <!-- Select Basic -->
            <div class="control-group">
                <label class="control-label" for="subType2">次分類</label>
                <div class="controls">
                    <select id="subType2" name="subType2" class="input-medium">
                        <option>Option one</option>
                        <option>Option two</option>
                    </select>
                </div>
            </div>

            <!-- Select Basic -->
            <div class="control-group">
                <label class="control-label" for="type3">主分類</label>
                <div class="controls">
                    <select id="type3" name="type3" class="input-medium">
                        <option>Option one</option>
                        <option>Option two</option>
                    </select>
                </div>
            </div>

            <!-- Select Basic -->
            <div class="control-group">
                <label class="control-label" for="subType3">次分類</label>
                <div class="controls">
                    <select id="subType3" name="subType3" class="input-medium">
                        <option>Option one</option>
                        <option>Option two</option>
                    </select>
                </div>
            </div>
        </fieldset>
    </form>

    <form id="moneyForm" class="form-horizontal">
        <fieldset>
            <legend>請設定欲交換的物品價格範圍</legend>
            <div id="rangeSlider"></div>

<%--            <div id="value"></div>--%>
            <h5>最低:  </h5>
            <input id="input1" name="input1" class="inputClass" /><br />
            <h5>最高:  </h5>
            <input id="input2" name="input2" class="inputClass" />

<%--            <div id="someElement"></div>--%>

<%--            <button>Alert form values.</button>--%>
        </fieldset>
    </form>




</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptPlaceHolder" runat="Server">
    <script>
        $("#rangeSlider").noUiSlider({
            start: [100, 600],
            range: {
                'min': 0,
                'max': 1000
            },
            connect: true,
            serialization: {

                lower: [

                    $.Link({
                        // Place the value in the #value element,
                        // using the text method.
                        target: $("#value"),
                        method: "text"
                    }),

                    $.Link({
                        target: $("#input1"),
                        format: {
                            // Prefix the value with an Euro symbol
                            prefix: 'NTD ',
                            // Write the value using 1 decimal.
                            decimals: 0,
                            postfix: ',-'
                        }
                    })

                ],

                upper: [

                    $.Link({
                        // Link accepts functions too.
                        // The arguments are the slider value,
                        // the .noUi-handle element and the slider instance.
                        target: function (value, handleElement, slider) {

                            $("#someElement").text(value);

                        }
                    }),


                                        $.Link({
                                            target: $("#input2"),
                                            format: {
                                                // Prefix the value with an Euro symbol
                                                prefix: 'NTD ',
                                                // Write the value using 1 decimal.
                                                decimals: 0,
                                                postfix: ',-'
                                            }
                                        })


                    //$.Link({
                    //    // When you pass a string to a link,
                    //    // it will create a hidden input.
                    //    // You'll see the value appear when you
                    //    // alert the form contents.
                    //    target: "inputName"
                    //})

                ],

                //設小數點(optional)
                //format: {
                //    decimals: 1
                //}

            }
        });

        $('button').click(function () {
            // Use jQuery to make get the values from the form.
            // We'll decode the generated URL to keep it readable.
            alert(decodeURIComponent($("#moneyForm").serialize()));

            // Don't submit the form.
            return false;
        });
        //$('#xxx').removeClass();
        //$('#xx').addClass("active");

    </script>


</asp:Content>

