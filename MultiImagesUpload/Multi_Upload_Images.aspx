<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Multi_Upload_Images.aspx.cs" Inherits="Multi_Upload_Images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>上傳多張圖片</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #800000;
        }
        .style3
        {
            font-size: large;
            font-weight: bold;
        }
        .style4
        {
            background-color: #66FFFF;
        }

    </style>
</head>
<body bgcolor="#ffff99">
    <form id="form1" runat="server">
    <div>
        <span>FileUpload控制項(批次上傳)</span>
        <br />
        <hr />
        1.
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        2.
        <asp:FileUpload ID="FileUpload2" runat="server" />
        <br />
        3.
        <asp:FileUpload ID="FileUpload3" runat="server" />
        <br />
        <br />
        <hr />
        &nbsp;&nbsp;
        <asp:Button ID="UploadImageButton" runat="server" OnClick="UploadImageButton_Click" Text="批次上傳圖檔!!" />
    </div>
    <p>
        <asp:Label ID="UploadStatusLabel" runat="server" ForeColor="#FF3300"></asp:Label>&nbsp;
        <asp:Label ID="FileSizeStatusLabel" runat="server" ForeColor="#FF3300"></asp:Label>
    </p>
        <hr />
        <span>上傳之後，立即呈現圖片！</span>        
        <br />
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PictureID" DataSourceID="SqlDataSourceStdntGoodsPic" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="PictureID" HeaderText="圖片編號" InsertVisible="False" ReadOnly="True" SortExpression="PictureID" />
                <asp:BoundField DataField="GoodsID" HeaderText="商品編號" SortExpression="GoodsID" />
                <asp:ImageField DataImageUrlField="PictureID" DataImageUrlFormatString="~/ImageHandler.ashx?PictureID={0}" HeaderText="商品圖片">
                    <ControlStyle Width="100px" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceStdntGoodsPic" runat="server" ConnectionString="<%$ ConnectionStrings:STTPConnectionString %>" SelectCommand="SELECT * FROM [StdntGoodsPic]"></asp:SqlDataSource>
    </p>
    </form>
</body>
</html>