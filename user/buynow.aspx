<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buynow.aspx.cs" Inherits="user_buynow" MasterPageFile="MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="frm">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="clk" OnClick="Button1_Click" Text="Proceed to Pay" />
    </div>
</asp:Content>
