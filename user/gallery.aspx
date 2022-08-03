<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="user_gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" CellPadding="20">
        <ItemTemplate>
            <%--   Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            pname:--%>
            <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
            <br />
            <%--  pimg:
            <asp:Label ID="pimgLabel" runat="server" Text='<%# Eval("pimg") %>' />
            <br />--%>
            <asp:HyperLink ID="ilnk" runat="server" NavigateUrl='<%# Eval("Id","cartpro.aspx?id={0}") %>' CssClass="imgs">
                <asp:Image ID="Image3" runat="server" Height="350px" ImageUrl='<%# Eval("pimg") %>' Width="350px" /><div class="capt">AddToCart</div>
            </asp:HyperLink>
            <br />
            <%--    price:--%>
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <%--<br />
            pdesc:
            <asp:Label ID="pdescLabel" runat="server" Text='<%# Eval("pdesc") %>' />
            <br />
            pstat:
            <asp:Label ID="pstatLabel" runat="server" Text='<%# Eval("pstat") %>' />
            <br />--%>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [prod]"></asp:SqlDataSource>
</asp:Content>