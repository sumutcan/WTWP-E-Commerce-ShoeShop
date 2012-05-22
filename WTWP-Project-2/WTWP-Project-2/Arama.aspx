<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Arama.aspx.cs" Inherits="WTWP_Project_2.Arama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Ürün Arama</h3>
    <center><asp:TextBox ID="txtArama" runat="server"></asp:TextBox><asp:Button ID="btnArama"
        runat="server" Text="Ara" /></center>

           <asp:ListView runat="server" ID="lstTOP5" 
        onselectedindexchanged="lstTOP5_SelectedIndexChanged" 
        onitemdatabound="lstTOP5_ItemDataBound" 
        onlayoutcreated="lstTOP5_LayoutCreated" onitemcommand="lstTOP5_ItemCommand">
    <LayoutTemplate>
    <div style="padding-left:27px; padding-top:12px">
    
              <table width="470"  border="0" cellspacing="0" cellpadding="0">
              <tr><td height="100%"><div style="padding-left:27px; padding-top:12px">
              <table width="470"  border="0" cellspacing="0" cellpadding="0">
                <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                
              
                <tr>
                  <td height="16" align="left" valign="middle"><div style="padding-left:24px; padding-top:0px"><img alt=""  src="images/line_1.jpg" width="436" height="1"></div></td>
                </tr>
                
              </table>
            </div></td></tr>
              </table>    
    </div>
    </LayoutTemplate>
    <ItemTemplate>
    <tr>
                  <td align="center" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                      <tr align="left" valign="top">
                        <td width="242" style="border-right:1px solid #DBDBDB "><div style="padding-left:0px; padding-top:2px; padding-bottom:10px">
                            <table border="0" cellspacing="0" cellpadding="0" style="width: 465px">
                              <tr align="left" valign="top">
                                <td width="98"><div style="padding-left:0px; padding-top:29px"><a href="#"><img alt=""  src="images/ca_1.jpg" width="91" height="55" border="0"></a></div>
                                    <div style="padding-left:18px; padding-top:22px">
                                      <table width="55"  border="0" cellspacing="0" cellpadding="0">
                                        <tr align="left" valign="middle">
                                         
                                          
                                        </tr>
                                      </table>
                                  </div></td>
                                <td><table  border="0" cellspacing="0" cellpadding="0" style="width: 365px">
                                    <tr>
                                      <td height="24" align="left" valign="top" class="style5" style="background-image:url(images/rep_1.jpg); background-position:bottom ; background-repeat:repeat-x "><img alt=""  src="images/offer.jpg" width="109" height="15">
                                          <a href='<%#Eval("SatilanUrunID","/DetayGoruntule.aspx?ID={0}") %>'> <%#Eval("Urun.Uretici.Ad")%></a></td>
                                    </tr>
                                    <tr>
                                      <td height="40" align="left" valign="middle" class="style5" style="background-image:url(images/rep_1.jpg); background-position:bottom ; background-repeat:repeat-x "><%#Eval("Urun.Description") %></td>
                                    </tr>
                                    <tr>
                                      <td height="22" align="left" valign="middle" class="style5" style="background-image:url(images/rep_1.jpg); background-position:bottom ; background-repeat:repeat-x ">Numara: <span class="style3"><strong><%#Eval("Numara") %></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;Renk: <span class="style3"><strong><%#Eval("Renk") %></strong></span></td>
                                    </tr>
                                    <tr>
                                      <td height="25" align="left" valign="bottom" class="style5"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                          <tr align="left" valign="middle">
                                            <td class="style7"><strong>&nbsp;<span class="style8"><%#Eval("Fiyat") %></span>TL</strong></td>
                                            <td valign="middle" align="center"><div style="float:right; margin-top:5px;">
                                            <asp:UpdatePanel runat="server" ID="updateSepeteEkle">
                                            <ContentTemplate>
                                            <asp:LinkButton runat="server" ID="lnkSepeteEkle" CommandName="SepeteEkle" CommandArgument='<%#Eval("SatilanUrunID")%>' CssClass="aSatinAl"><div class="btnSatinAl">Sepete Ekle</div></asp:LinkButton></div> <div style="margin-top:5px; position:relative; float:right;"><asp:LinkButton CssClass="aSatinAl" runat="server" ID = "lnkKarsilastir" CommandArgument='<%#Eval("SatilanUrunID")%>' CommandName="Karsilastir"><div class="btnSatinAl">Karşılaştır</div></asp:LinkButton>
                                            </ContentTemplate>
              
                                            </asp:UpdatePanel>
                                            </div></td>
                                          </tr>
                                      </table></td>
                                    </tr>
                                </table></td>
                              </tr>
                            </table>
                        </div></td>
                        
                      </tr>
                  </table></td>
                </tr>
    </ItemTemplate>
      </asp:ListView>
</asp:Content>
