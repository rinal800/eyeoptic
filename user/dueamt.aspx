<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="dueamt.aspx.cs" Inherits="user_dueamt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="frm">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
      
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="clk" Text="Proceed to Pay" OnClick="Button1_Click" />
    </div>
</asp:Content>

