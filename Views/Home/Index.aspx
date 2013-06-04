<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Project_Task_Two.Models.Tmahasiswa>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">NRP</div>
        <div class="display-field"><%: Model.NRP %></div>
        
        <div class="display-label">Nama</div>
        <div class="display-field"><%: Model.Nama %></div>
        
        <div class="display-label">Fakultas</div>
        <div class="display-field"><%: Model.Fakultas %></div>
        
        <div class="display-label">Jurusan</div>
        <div class="display-field"><%: Model.Jurusan %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.NRP }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

