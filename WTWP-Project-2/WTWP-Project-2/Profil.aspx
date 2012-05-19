<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="WTWP_Project_2.Profil" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
    	<legend>Kullanıcı Profili</legend>
        <dl>
        	<dt><label for="txtAd"> Ad:</label></dt>
            <dd><asp:TextBox ID="txtAd" runat="server" MaxLength="128" Width="185px"></asp:TextBox>
            <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtAd" ErrorMessage="Zorunlu alan" Display="Dynamic"></asp:RequiredFieldValidator></dd>

        </dl>
        <dl>
        <dt><label for="txtSoyad"> Soyad:</label></dt>
        <dd><asp:TextBox ID="txtSoyad" runat="server" MaxLength="128" Width="185px"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtSoyad" ErrorMessage="Zorunlu alan" Display="Dynamic"></asp:RequiredFieldValidator></dd>
        </dl>
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
                    </dd>
        </dl>
        <dl>
        	<dt><label for="txtSifreTekrar">Şifre (Tekrar):</label></dt>
            <dd><asp:TextBox
                    ID="txtSifreTekrar" TextMode="Password" runat="server" MaxLength="32"></asp:TextBox>
                    </dd>
        </dl>
        <dl>
        	<dt><label for="gender">Cinsiyet:</label></dt>
            <dd>
                <asp:DropDownList ID="cmbCinsiyetler" runat="server">
                <asp:ListItem Text="Belirtmek İstemiyorum" Value="X"></asp:ListItem>
                <asp:ListItem Text="Erkek" Value="E"></asp:ListItem>
                <asp:ListItem Text="Kadın" Value="K"></asp:ListItem>
                </asp:DropDownList>
            </dd>
        </dl>
        <dl>
        	<dt><label for="dobYear">Doğum yılı:</label></dt>
            <dd>
                <select size="1" runat="server" name="dobYear" id="dobYear">
                	<option value="2000">2000</option>
                    <option value="1999">1999</option>
                    <option value="1998">1998</option>
                    <option value="1997">1997</option>
                    <option value="1996">1996</option>
                    <option value="1995">1995</option>
					<option value="1994">1994</option>
					<option value="1993">1993</option>
					<option value="1992">1992</option>
					<option value="1991">1991</option>
					<option value="1990">1990</option>
					<option value="1989">1989</option>
					<option value="1988">1988</option>
					<option value="1987">1987</option>
					<option value="1986">1986</option>
					<option value="1985">1985</option>
					<option value="1984">1984</option>
					<option value="1983">1983</option>
					<option value="1982">1982</option>
					<option value="1981">1981</option>
					<option value="1980">1980</option>
					<option value="1979">1979</option>
					<option value="1978">1978</option>
					<option value="1977">1977</option>
					<option value="1976">1976</option>
					<option value="1975">1975</option>
					<option value="1974">1974</option>
					<option value="1973">1973</option>
					<option value="1972">1972</option>
					<option value="1971">1971</option>
					<option value="1970">1970</option>
					<option value="1969">1969</option>
					<option value="1968">1968</option>
					<option value="1967">1967</option>
					<option value="1966">1966</option>
					<option value="1965">1965</option>
					<option value="1964">1964</option>
					<option value="1963">1963</option>
					<option value="1962">1962</option>
					<option value="1961">1961</option>
					<option value="1960">1960</option>
					<option value="1959">1959</option>
					<option value="1958">1958</option>
					<option value="1957">1957</option>
					<option value="1956">1956</option>
					<option value="1955">1955</option>
					<option value="1954">1954</option>
					<option value="1953">1953</option>
					<option value="1952">1952</option>
					<option value="1951">1951</option>
					<option value="1950">1950</option>
                </select>
            </dd>
        </dl>
        <dl>
        <dt><label for="txtAlanKoduEv">Sabit Telefon:</label></dt>
        <dd>
        <asp:TextBox ID="txtAlanKoduEv" runat="server" MaxLength="3"  
                Width="39px"></asp:TextBox>
        <asp:FilteredTextBoxExtender runat="server" TargetControlID="txtAlanKoduEv" FilterType="Numbers"></asp:FilteredTextBoxExtender> - 
            <asp:TextBox ID="txtTelNoEv" runat="server" MaxLength="7" 
                Width="78px"></asp:TextBox>
            <asp:MaskedEditExtender
                ID="MaskedEditExtender1" TargetControlID="txtTelNoEv" runat="server" MaskType="Number" Mask="9999999" >
            </asp:MaskedEditExtender>


        </dd>
            
        </dl>
                <dl>
        <dt><label for="txtAlanKoduCep">Mobil Telefon:</label></dt>
        <dd>
        <asp:TextBox ID="txtAlanKoduCep" runat="server" MaxLength="3"  
                Width="39px"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtAlanKoduCep" FilterType="Numbers"></asp:FilteredTextBoxExtender> - 
            <asp:TextBox ID="txtTelNoCep" runat="server" MaxLength="7" 
                Width="78px"></asp:TextBox>
            <asp:MaskedEditExtender
                ID="MaskedEditExtender2" TargetControlID="txtTelNoCep" runat="server" MaskType="Number" Mask="9999999" >
            </asp:MaskedEditExtender>


        </dd>
            
        </dl>
        <dl>
        <dd>    	
            <asp:Button ID="btnGonder"
            runat="server" CssClass="NFButton" Text="Gönder" onclick="btnGonder_Click" /></dd>
        </dl>

    </fieldset>
</asp:Content>
