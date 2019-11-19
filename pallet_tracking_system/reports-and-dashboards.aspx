<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reports-and-dashboards.aspx.cs" Inherits="reports_and_dashboards" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heroImage" Runat="Server">
    <div class="carousel-item active h-90" style="background-image: url('img/fixed/preventive_maintenance.png')">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="captionHeroImage" Runat="Server">
    <h1>Reportes<br>
        y Dashboards</h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sectionContent" Runat="Server">
        <asp:Literal ID="ltChart" runat="server"></asp:Literal>
</asp:Content>

