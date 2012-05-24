<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Raporlama.aspx.cs" Inherits="WTWP_Project_2.Admin.Raporlama" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="module">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<div class="module-body">

<rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="633px" 
        Font-Names="Verdana" Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
    <LocalReport ReportPath="Admin\Report1.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SHOESHOPConnectionString2 %>" 
        SelectCommand="SELECT * FROM [TOP5]"></asp:SqlDataSource>
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
        ConnectionString="name=SHOESHOPEntities" 
        DefaultContainerName="SHOESHOPEntities" EnableFlattening="False" 
        EntitySetName="TOP5">
    </asp:EntityDataSource>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server">
    </asp:EntityDataSource>
</div>
</div>
</asp:Content>
