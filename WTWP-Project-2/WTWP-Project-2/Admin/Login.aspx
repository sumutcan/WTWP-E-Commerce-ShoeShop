<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WTWP_Project_2.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Giriş</h2>
<asp:Literal ID="mesaj" runat="server"></asp:Literal>
<br />
<br />
<div id="login-box-name" style="margin-top:20px;">Email:</div><div id="login-box-field" style="margin-top:20px;"><input name="q" class="form-login" title="Username" value="" size="30" maxlength="2048" /></div>
<div id="login-box-name">Şifre:</div><div id="login-box-field"><input name="q" type="password" class="form-login" title="Password" value="" size="30" maxlength="2048" /></div>
<br />
    <span class="login-box-options"><a href="#" style="margin-left:30px;">Şifremi Unuttum</a></span>
<br />
<br />
<asp:LinkButton runat="server" ID="lnkGiris" onclick="lnkGiris_Click"><img src="images/login-btn.png" width="103" height="42" style="margin-left:90px;" /></asp:LinkButton>
</asp:Content>
