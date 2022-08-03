<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="paymethod.aspx.cs" Inherits="user_paymethod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="frm">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="pay" />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/paytm.png" Height="100px" Width="100px" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="pay"/>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/gpay.png" Height="100px" Width="100px" />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="pay"/>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/upi.png" Height="100px" Width="100" />
        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="pay"/>
        <asp:Image ID="Image4" runat="server" ImageUrl="~/visa.png" Height="100" Width="100" />
    </div>
</asp:Content>
