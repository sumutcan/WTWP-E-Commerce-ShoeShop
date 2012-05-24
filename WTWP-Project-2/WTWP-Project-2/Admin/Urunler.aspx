<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="WTWP_Project_2.Admin.Urunler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Ürün Yönetimi</h2>
                            
                <asp:Panel runat="server" ID="pnlBasarili" Visible="false" EnableViewState="false"><span class="notification n-success" runat="server" id="spanBasarili">Başarılı işlemde buranın innerhtmli değişecek</span></asp:Panel>
                <asp:Panel runat="server" ID="pnlHata" Visible="false" EnableViewState="false"><span class="notification n-error" runat="server" id="span1">Hatalı işlemde buranın innerhtmli değişecek</span></asp:Panel>
                <div class="module">
                <h2><span>Ürünler</span></h2>
                 <div class="module-table-body">

                             <asp:ListView ID="lstUrunler" runat="server">
                             <LayoutTemplate>
                                <table id="myTable" class="tablesorter">
                                                      	<thead>
                                <tr>
                                    <th style="width:5%">StokID</th>
                                    <th style="width:10%">Üretici</th>
                                    <th style="width:10%">Stok Miktarı</th>
                                    <th style="width:8%">Cinsiyet</th>
                                    <th style="width:8%">Renk</th>
                                    <th style="width:5%">Numara</th>
                                    <th style="width:5%">Fiyat</th>
                                    

                                    <th style="width:15%"></th>
                                </tr>
                            </thead>
                              <tbody>
                                <asp:PlaceHolder runat="server" id="itemPlaceHolder"></asp:PlaceHolder>
                               </tbody>
                               </table>
                             </LayoutTemplate>

        

                             <ItemTemplate>
                                                            <tr>
                                    <td class="align-center"><%#Eval("SatilanUrunID") %></td>
                                    <td><%#Eval("Urun.Uretici.Ad") %></td>
                                    <td><%#Eval("Stok") %></td>
                                    <td><%#Eval("Urun.Cinsiyet") %></td>
                                    <td><%#Eval("Renk") %></td>
                                    <td><%#Eval("Numara") %></td>
                                    <td><%#Eval("Fiyat") %></td>
                               
                                 
                                    <td>
                                        <a href='<%#Eval("SatilanUrunID","Urunler.aspx?ID={0}&Pid=0")%>'><img src="bin.gif" tppabs="http://www.xooom.pl/work/magicadmin/images/bin.gif" width="16" height="16" alt="delete" /></a>
                                        <a href='<%#String.Format("Urunler.aspx?ID={0}&ProductID={1}&Pid=1", Eval("SatilanUrunID"),Eval("Urun.ProductID"))%>'><img src="bin.gif" tppabs="http://www.xooom.pl/work/magicadmin/images/pencil.gif" width="16" height="16" alt="delete" /></a>
                                    </td>
                                </tr>
                             
                             </ItemTemplate>
                             </asp:ListView>
                            </div>
                              </div>

           <div class="grid_12">
        		<div style="clear:both;"></div>
            </div> <!-- End .grid_12 -->
            
            <div class="module">
             <h2><span>Ürün Ekle/Düzenle</span></h2>
            <div class="module-body">
                                     <p>
                                <label>Üretici</label>
                                <select class="input-short" runat="server" id="cmbUreticiler">

                                </select>
                                
                            </p>

                             <p>
                                <label>Stok Miktarı</label>
                                <input type="text" runat="server" class="input-short" id="txtStok"/>
                                
                            </p>

                             <p>
                                <label>Cinsiyet</label>
                                <select class="input-short" runat="server" id="cmbCinsiyet">
                                    <option value="E">Erkek</option>
                                    <option value="K">Kadın</option>
                                    
                               
                                </select>
                            </p>
                                                        <p>
                                <label>Renk</label>
                                <input type="text" runat="server" id="txtRenk" class="input-short" />
                                
                            </p>
                                                        <p>
                                <label>Fiyat</label>
                                <input type="text" runat="server" id="txtFiyat" class="input-short" />
                               
                            </p>

                                                    <p>
                                <label>Numara</label>
                                <input type="text" runat="server" id="txtNumara" class="input-short" />
                               
                            </p>
                                                             
                                 <p>
                               
                                    <asp:FileUpload ID="fileUrunFoto" runat="server" />
                              
                                </p>

                                                    <fieldset>
                                                    <asp:Button runat="server" ID="btnKaydet" Text="Kaydet" CssClass="submit-green"/>
                                
                                </fieldset>


            </div>
            </div>
            
</asp:Content>
