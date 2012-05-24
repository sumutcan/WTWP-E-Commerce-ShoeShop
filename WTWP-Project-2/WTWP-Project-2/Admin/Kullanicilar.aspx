<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Kullanicilar.aspx.cs" Inherits="WTWP_Project_2.Kullanicilar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Kullanıcı Yönetimi</h2>
                            
                <asp:Panel runat="server" ID="pnlBasarili" Visible="false" EnableViewState="false"><span class="notification n-success" runat="server" id="spanBasarili">Başarılı işlemde buranın innerhtmli değişecek</span></asp:Panel>
                <asp:Panel runat="server" ID="pnlHata" Visible="false" EnableViewState="false"><span class="notification n-error" runat="server" id="span1">Hatalı işlemde buranın innerhtmli değişecek</span></asp:Panel>
                <div class="module">
                <h2><span>Kullanıcılar</span></h2>
                 <div class="module-table-body">

                             <asp:ListView ID="lstKullanicilar" runat="server">
                             <LayoutTemplate>
                                <table id="myTable" class="tablesorter">
                                                      	<thead>
                                <tr>
                                    <th style="width:5%">ID</th>
                                    <th style="width:20%">Ad</th>
                                    <th style="width:21%">Soyad</th>
                                    <th style="width:13%">E-Posta</th>
                                    
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
                                    <td class="align-center"><%#Eval("ID") %></td>
                                    <td><%#Eval("Ad") %></td>
                                    <td><%#Eval("Soyad") %></td>
                                    <td><%#Eval("Email") %></td>
                                 
                                    <td>
                                        <a href='<%#Eval("ID","Kullanicilar.aspx?ID={0}&Pid=0")%>'><img src="bin.gif" tppabs="http://www.xooom.pl/work/magicadmin/images/bin.gif" width="16" height="16" alt="delete" /></a>
                                    </td>
                                </tr>
                             
                             </ItemTemplate>
                             </asp:ListView>
                            </div>
                              </div>

           <div class="grid_12">
        		<div style="clear:both;"></div>
            </div> <!-- End .grid_12 -->


</asp:Content>
