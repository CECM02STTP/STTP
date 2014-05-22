<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BarterSettings.aspx.cs" Inherits="BarterSettins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        /* Functional styling;
 * These styles are required for noUiSlider to function.
 * You don't need to change these rules to apply your design.
 */
        .noUi-target,
        .noUi-target * {
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -ms-touch-action: none;
            -ms-user-select: none;
            -moz-user-select: none;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .noUi-base {
            width: 100%;
            height: 100%;
            position: relative;
        }

        .noUi-origin {
            position: absolute;
            right: 0;
            top: 0;
            left: 0;
            bottom: 0;
        }

        .noUi-handle {
            position: relative;
            z-index: 1;
        }

        .noUi-stacking .noUi-handle {
            /* This class is applied to the lower origin when
   its values is > 50%. */
            z-index: 10;
        }

        .noUi-stacking + .noUi-origin {
            /* Fix stacking order in IE7, which incorrectly
   creates a new context for the origins. */
            *z-index: -1;
        }

        .noUi-state-tap .noUi-origin {
            -webkit-transition: left 0.3s, top 0.3s;
            transition: left 0.3s, top 0.3s;
        }

        .noUi-state-drag * {
            cursor: inherit !important;
        }

        /* Slider size and handle placement;
 */
        .noUi-horizontal {
            height: 18px;
        }

            .noUi-horizontal .noUi-handle {
                width: 34px;
                height: 28px;
                left: -17px;
                top: -6px;
            }

            .noUi-horizontal.noUi-extended {
                padding: 0 15px;
            }

                .noUi-horizontal.noUi-extended .noUi-origin {
                    right: -15px;
                }

        .noUi-vertical {
            width: 18px;
        }

            .noUi-vertical .noUi-handle {
                width: 28px;
                height: 34px;
                left: -6px;
                top: -17px;
            }

            .noUi-vertical.noUi-extended {
                padding: 15px 0;
            }

                .noUi-vertical.noUi-extended .noUi-origin {
                    bottom: -15px;
                }

        /* Styling;
 */
        .noUi-background {
            background: #FAFAFA;
            box-shadow: inset 0 1px 1px #f0f0f0;
        }

        .noUi-connect {
            background: #3FB8AF;
            box-shadow: inset 0 0 3px rgba(51,51,51,0.45);
            -webkit-transition: background 450ms;
            transition: background 450ms;
        }

        .noUi-origin {
            border-radius: 2px;
        }

        .noUi-target {
            border-radius: 4px;
            border: 1px solid #D3D3D3;
            box-shadow: inset 0 1px 1px #F0F0F0, 0 3px 6px -5px #BBB;
        }

            .noUi-target.noUi-connect {
                box-shadow: inset 0 0 3px rgba(51,51,51,0.45), 0 3px 6px -5px #BBB;
            }

        /* Handles and cursors;
 */
        .noUi-dragable {
            cursor: w-resize;
        }

        .noUi-vertical .noUi-dragable {
            cursor: n-resize;
        }

        .noUi-handle {
            border: 1px solid #D9D9D9;
            border-radius: 3px;
            background: #FFF;
            cursor: default;
            box-shadow: inset 0 0 1px #FFF, inset 0 1px 7px #EBEBEB, 0 3px 6px -3px #BBB;
        }

        .noUi-active {
            box-shadow: inset 0 0 1px #FFF, inset 0 1px 7px #DDD, 0 3px 6px -3px #BBB;
        }

        /* Handle stripes;
 */
        .noUi-handle:before,
        .noUi-handle:after {
            content: "";
            display: block;
            position: absolute;
            height: 14px;
            width: 1px;
            background: #E8E7E6;
            left: 14px;
            top: 6px;
        }

        .noUi-handle:after {
            left: 17px;
        }

        .noUi-vertical .noUi-handle:before,
        .noUi-vertical .noUi-handle:after {
            width: 14px;
            height: 1px;
            left: 6px;
            top: 14px;
        }

        .noUi-vertical .noUi-handle:after {
            top: 17px;
        }


        .inputClass {
            display: block;
            margin: 0 auto 10px;
        }
    </style>
    <%--  --%>
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
    <script src="js/jquery.nouislider.min.js"></script>
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

