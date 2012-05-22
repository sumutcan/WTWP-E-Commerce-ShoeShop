<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="WTWP_Project_2.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Ürün Yönetimi</h2>
               <div class="module">
                     <h2><span>Arama</span></h2>
                        
                     <div class="module-body">
                         
                            <fieldset>
                                <asp:TextBox ID="txtArama" runat="server" CssClass="input-short"></asp:TextBox>&nbsp;&nbsp;<asp:Button
                                    ID="btnAra" runat="server" Text="Kullanıcı Ara" CssClass="submit-green" 
                                    onclick="btnAra_Click" />
                            </fieldset>
                     </div>
                </div> <!-- module -->
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
                                    <th style="width:5%">ID</th>
                                    <th style="width:15%">Resim</th>
                                    <th style="width:5%">Beden</th>
                                    <th style="width:10%">Renk</th>
                                    <th style="width:10%">Ücret</th>
                                    <th style="width:5%">Stok</th>
                                    
                                    <th style="width:15%"></th>
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
                                    <td class="align-center"><%#Eval("StockID") %></td>
                                    <td><img src="<%#Eval("StockID") %>.gif" width="16" height="16" alt="edit" /></td>
                                    <td><%#Eval("Size") %></td>
                                    <td><%#Eval("Color") %></td>
                                    <td><%#Eval("PricePerPiece") %></td>
                                    <td><%#Eval("Count") %></td>
                                 
                                    <td>
                                        <a href='<%#Eval("Id","KullaniciYonetimi.aspx?ID={0}&Pid=1")%>'><img src="pencil.gif" tppabs="http://www.xooom.pl/work/magicadmin/images/pencil.gif" width="16" height="16" alt="edit" /></a>
                                        <a href='<%#Eval("Id","KullaniciYonetimi.aspx?ID={0}&Pid=0")%>'><img src="bin.gif" tppabs="http://www.xooom.pl/work/magicadmin/images/bin.gif" width="16" height="16" alt="delete" /></a>
                                    </td>
                                </tr>
                             
                             </ItemTemplate>
                             </asp:ListView>
                            </div>
                              </div>

           <div class="grid_12">
            
                <div class="module">
                     <h2><span>Urun Ekle/Guncelle</span></h2>
                        
                     <div class="module-body">
                     
                            
                            <p>
                                <label>Renk</label>
                               <asp:TextBox ID="txtRenk" CssClass="input-short" runat="server"></asp:TextBox>
                                
                            </p>
                            <p>
                                <label>Beden</label>
                               <asp:TextBox ID="txtBeden" CssClass="input-short" runat="server"></asp:TextBox>
                                
                            </p>
                            <p>
                                <label>Stok:</label>
                               <asp:TextBox ID="txtStok" CssClass="input-short" runat="server"></asp:TextBox>
                                
                            </p>  
                            <p>
                                <label>Fiyat:</label>
                               <asp:TextBox ID="txtFiyat" CssClass="input-short" runat="server"></asp:TextBox>
                                
                            </p>                                                     
                            <p>
                                &nbsp;</p>
                            
                            
                            
                            <fieldset>
                                <asp:Button ID="btnUrunKaydet" CssClass="submit-green" runat="server" 
                                    Text="Kaydet" onclick="btnUrunKaydet_Click" /> 
                       
                            </fieldset>
                    
                     </div> <!-- End .module-body -->

                </div>  <!-- End .module -->
        		<div style="clear:both;"></div>
            </div> <!-- End .grid_12 -->
</asp:Content>

