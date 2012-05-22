<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Karsilastir.aspx.cs" Inherits="WTWP_Project_2.Karsilastir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:DetailsView ID="dtlKarsilastir1" runat="server" Height="50px" Width="125px" 
        CellPadding="4"  ForeColor="#333333" 
        GridLines="None" AutoGenerateRows="False">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />

    <Fields>
        
        <asp:TemplateField HeaderText="Uretici">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server"
                  Text='<%# Eval("Urun.Uretici.Ad", "{0}") %>'></asp:Label>
                <br />
                <strong>
                (Açıklama: </strong>
                <asp:Label ID="Label2" runat="server"
                  Text='<%# Eval("Urun.Description") %>'></asp:Label>
                
                </asp:Label><strong>)</strong>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Numara"
          HeaderText="Numara" SortExpression="Numara" />
          <asp:BoundField DataField="Renk"
          HeaderText="Renk" SortExpression="Renk" />
          <asp:BoundField DataField="Fiyat"
          HeaderText="Fiyat" SortExpression="Fiyat" />
    
    </Fields>

</asp:DetailsView>
<hr />
<asp:DetailsView ID="dtlKarsilastir2" runat="server" Height="50px" Width="125px" 
        CellPadding="4"  ForeColor="#333333" 
        GridLines="None" AutoGenerateRows="False">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />

    <Fields>
        
        <asp:TemplateField HeaderText="Uretici">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server"
                  Text='<%# Eval("Urun.Uretici.Ad", "{0}") %>'></asp:Label>
                <br />
                <strong>
                (Açıklama: </strong>
                <asp:Label ID="Label2" runat="server"
                  Text='<%# Eval("Urun.Description") %>'></asp:Label>
                
                </asp:Label><strong>)</strong>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Numara"
          HeaderText="Numara" SortExpression="Numara" />
          <asp:BoundField DataField="Renk"
          HeaderText="Renk" SortExpression="Renk" />
          <asp:BoundField DataField="Fiyat"
          HeaderText="Fiyat" SortExpression="Fiyat" />
    
    </Fields>

</asp:DetailsView>

</asp:Content>
