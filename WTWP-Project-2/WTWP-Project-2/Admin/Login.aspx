<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WTWP_Project_2.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Giriş</h2>
<asp:Literal ID="mesaj" runat="server"></asp:Literal>
<br />
<br />
    <div id="login-box-field" style="margin-top:20px;">
        Email:
    <asp:TextBox ID="TextBox1" runat="server" Width="99px" style="text-align: left"></asp:TextBox>
        <br />
    </div>
    <div id="login-box-field">
Şifre:<asp:TextBox ID="TextBox2" runat="server" 
            style="text-align: left" Width="100px"></asp:TextBox>
        <br />
    </div>

<br />
<asp:LinkButton runat="server" ID="lnkGiris" onclick="lnkGiris_Click"><img src="images/login-btn.png" width="103" height="42" style="margin-left:90px;" /></asp:LinkButton>
</asp:Content>
