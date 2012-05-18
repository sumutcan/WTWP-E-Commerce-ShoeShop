<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WTWP_Project_2.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<fieldset>
    <legend>Giriş</legend>
       <dl>     
            <dt><label for="txtEPosta"> E-Posta:</label></dt>
            <dd><asp:TextBox ID="txtEPosta" runat="server" MaxLength="128" Width="185px"></asp:TextBox><asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEposta" 
                    ValidationExpression="^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" 
                    ErrorMessage="E-posta adresi geçersiz." Display="Dynamic"></asp:RegularExpressionValidator><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtEPosta" ErrorMessage="Zorunlu alan" Display="Dynamic"></asp:RequiredFieldValidator></dd>

        </dl>
               <dl>
        	<dt><label for="txtSifre">Şifre:</label></dt>
            <dd><asp:TextBox
                    ID="txtSifre" TextMode="Password" runat="server" MaxLength="32"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtEPosta" ErrorMessage="Zorunlu alan" Display="Dynamic"></asp:RequiredFieldValidator></dd>
        </dl>
        <dl>
        <dd><asp:LinkButton ID="lnkSifremiUnuttum" runat="server" CssClass="lnkForm" 
                onclick="lnkSifremiUnuttum_Click">Şifremi Unuttum</asp:LinkButton></dd>
            
        </dl>
        <dl>
        <dd>    	
            <asp:Button ID="btnGonder"
            runat="server" CssClass="NFButton" Text="Giriş" onclick="btnGonder_Click" /></dd>
        </dl>

</fieldset>
</asp:Content>
