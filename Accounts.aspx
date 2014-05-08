<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Accounts.aspx.cs" Inherits="bootsshop_Accounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//cdn.datatables.net/1.10.0/css/jquery.dataTables.css" rel="stylesheet" />
    <style>
        #tableselect {
            /*width:100%;*/
            float: right;
        }

            #tableselect td {
                width: auto;
                float: left;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="span9">
        <ul class="breadcrumb">
            <li><a href="index.aspx">首頁</a> <span class="divider">/</span></li>
            <li class="active">帳務中心</li>
        </ul>
        <h3>帳務中心</h3>
        <hr class="soft" />


        <form id="selectform" method="post" action="Accounts.aspx">
            <table id="tableselect">
                <tr>
                    <%--<td>
                        <input type="text" value="" placeholder="請輸入要搜尋的內容" id="query1" runat="Server" /></td>--%>
                  <%--  <td>
                        <select value="篩選條件" id="select1" runat="Server">
                            <option value="0">請選擇</option>
                        </select></td>--%>
                    <td>從<input id="start" type="date"></td>
                    <td>到<input id="end" type="date"></td>
                    <td>
                        <input type="button" id="buttion1" value="搜尋" />
                    <td>
                </tr>
            </table>
        </form>


        <div class="row">
            <div class="span9" style="min-height: 900px">
                <div class="well">
                    <table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
                        <thead>
                            <tr>
                                <th>會員編號</th>
                                <th>訂單編號</th>
                                <th>交易編號</th>
                                <th>交易時間</th>
                                <th>交易類別</th>
                                <th>支出</th>
                                <th>收入</th>
                                <th>剩餘金額</th>
                                <th>對象</th>
                                <th>明細</th>
                                <th>入帳時間</th>
                                <th>狀態</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="Scripts/DataTables-1.9.4/media/js/jquery.js"></script>
    <script src="//cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script>
    <script>
        $('#buttion1').click(function () {
            alert("123")
        });


        $('#example').dataTable({
            "bprocessing": true,
            "sAjaxSource": "ashx/AccountHandler.ashx",
            "sAjaxDataProp": "",
            "aoColumns": [
                { "mData": "MemberID" },
                { "mData": "OrderID" },
                { "mData": "TransNo" },
                { "mData": "TransDateTime" },
                { "mData": "TransType" },
                { "mData": "Expend" },
                { "mData": "Income" },
                { "mData": "Balance" },
                { "mData": "Target" },
                { "mData": "Details" },
                { "mData": "BillingDate" },
                { "mData": "Status" },
            ]
        });
    </script>

</asp:Content>

