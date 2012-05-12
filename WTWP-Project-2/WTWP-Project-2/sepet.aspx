<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="WTWP_Project_2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="module-table-body">

                             <asp:ListView ID="lstSepet" runat="server">
                             <LayoutTemplate>
                                <table id="myTable" class="tablesorter">
                                                      	<thead>
                                <tr align="center" valign="middle">
                                                     <td class="style9" height="25" 
                                                         style="border-bottom:1px solid #DBDBDB; border-right:1px solid #DBDBDB" 
                                                         width="94">
                                                         remote</td>
                                                     <td class="style9" 
                                                         style="border-bottom:1px solid #DBDBDB; border-right:1px solid #DBDBDB" 
                                                         width="180">
                                                         Ürün(ler)</td>
                                                     <td class="style9" 
                                                         style="border-bottom:1px solid #DBDBDB; border-right:1px solid #DBDBDB" 
                                                         width="99">
                                                         Adet</td>
                                                     <td class="style9" 
                                                         style="border-bottom:1px solid #DBDBDB; border-right:1px solid #DBDBDB">
                                                         Birim Fiyat</td>
                                                     <td class="style9" 
                                                         style="border-bottom:1px solid #DBDBDB; border-right:1px solid #DBDBDB">
                                                         Toplam Fiyat</td>
                                                     <td class="style9" 
                                                         style="border-bottom:1px solid #DBDBDB; border-right:1px solid #DBDBDB">
                                                         Sil</td>
                                                 </tr>
                            </thead>
                              <tbody>
                                <asp:PlaceHolder runat="server" id="itemPlaceHolder"></asp:PlaceHolder>
                               </tbody>
                               </table>
                             </LayoutTemplate>

                                <ItemSeparatorTemplate>
                                        <hr />
                                </ItemSeparatorTemplate>
                             
                             <ItemTemplate>
                             
                             <tr>
                                     <tr align="center" valign="middle">
                                                     <td height="85" 
                                                         style="border-bottom:1px solid #DBDBDB; border-right:1px solid #DBDBDB" 
                                                         width="94">
                                                         <asp:CheckBox ID="CheckBox1" runat="server" /></td>
                                                     <td style="border-bottom:1px solid #DBDBDB; border-right:1px solid #DBDBDB">
                                                         <a href="Buraya ürünün sayfasının linki gelecek bir şekilde...">
                                                         <img alt="" border="0" height="76" src="<%#Eval("ImageURL") %>" width="93" /></a></td>
                                                     <td style="border-bottom:1px solid #DBDBDB; border-right:1px solid #DBDBDB">
                                                         <asp:TextBox ID="txtAdet" runat="server" Width="30px"></asp:TextBox></td>
                                                     <td style="border-bottom:1px solid #DBDBDB; border-right:0px solid #DBDBDB">
                                                         <span class="style7"><strong>$ <span class="style8">
                                                             <asp:Label ID="lblBirimFiyat" runat="server" Text=<%#Eval("PricePerPiece") %>></asp:Label></span></strong></span></td>
                                                     <td style="border-bottom:1px solid #DBDBDB; border-right:0px solid #DBDBDB">
                                                         <span class="style7"><strong>$ <span class="style8">
                                                             <asp:Label ID="lblFiyat" runat="server" Text="--"></asp:Label></span></strong></span>
                                                     </td>
                                                     <td>
                                                        <a href='<%#Eval("ProductID","sepet.aspx?ID={0}&Pid=0")%>'><img width="16" height="16" alt="delete" src="http://cdn1.iconfinder.com/data/icons/softwaredemo/PNG/16x16/DeleteRed.png" /></a>
                                    </td>
                                    </tr>
                                </tr>
                             
                             </ItemTemplate>
                             
                             </asp:ListView>
                         <div style="padding-left:17px; padding-top:12px; padding-bottom:15px">
                            <table width="445"  border="0" cellspacing="0" cellpadding="0">
                            <tr align="left" valign="middle">
                            <td width="53"><asp:Button ID="btnTemizle" runat="server" Text="Temizle" 
                                    BackColor="#009933" Font-Bold="True" Font-Names="Calibri" 
                                    ForeColor="White" onclick="btnTemizle_Click" /></td>
                            <td width="107"><asp:Button ID="btnTumunuSec" runat="server" Text="Tümünü Seç" 
                                    BackColor="#009933" Font-Bold="True" Font-Names="Calibri" 
                                    ForeColor="White" onclick="btnTumunuSec_Click" /></td>
                            <td width="121"><asp:Button ID="btnDevam" runat="server" Text="Devam" 
                                    BackColor="#009933" Font-Bold="True" Font-Names="Calibri" ForeColor="White" /></td>
                            <td class="style9">sub-Total: <span class="style7"><strong>$ <span class="style8">
                                <asp:Label ID="lblNetToplam" runat="server" Text="--"></asp:Label></span></strong></span></td>
                            </tr>
                            </table>
                        </div>
                             
                   </div>
</asp:Content>
