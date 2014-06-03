<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%@PreviousPageType VirtualPath="~/index.aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="AsidePlaceHolder" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
        <Columns>
            <asp:ImageField DataImageUrlField="PictureID" DataImageUrlFormatString="~/ashx/StdntGoodsImage.ashx?PictureID={0}" HeaderText="商品圖片">
                <ControlStyle Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="GoodsName" HeaderText="商品名稱" />
            <asp:BoundField DataField="SellerID" HeaderText="賣家帳號" />
            <asp:BoundField DataField="Price" HeaderText="商品價錢" />
            <asp:BoundField DataField="Quantity" HeaderText="數量" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="scriptPlaceHolder" Runat="Server">
</asp:Content>

