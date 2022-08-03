<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="user_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="5" CellSpacing="5" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" Width="100%">
        <ItemTemplate>
            <div class="crt">
               <%-- Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                uname:
            <asp:Label ID="unameLabel" runat="server" Text='<%# Eval("uname") %>' />
                <br />
                email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />--%>
                <br />
                Product name:
            <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                <br />
                Product price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
               <%-- stat:
            <asp:Label ID="statLabel" runat="server" Text='<%# Eval("stat") %>' />--%>
                <br />
                <asp:HyperLink ID="bnow" runat="server" CssClass="clk" NavigateUrl='<%# Eval("id","buynow.aspx?id={0}") %>' Text="BuyNow"></asp:HyperLink>
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cart] WHERE ([uname] = @uname) and ([stat] = 'pending')">
        <SelectParameters>
            <asp:Parameter DefaultValue="user" Name="uname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

