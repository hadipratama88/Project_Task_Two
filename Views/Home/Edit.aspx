<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Project_Task_Two.Models.Tmahasiswa>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.NRP) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.NRP) %>
                <%: Html.ValidationMessageFor(model => model.NRP) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nama) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nama) %>
                <%: Html.ValidationMessageFor(model => model.Nama) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Fakultas) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Fakultas) %>
                <%: Html.ValidationMessageFor(model => model.Fakultas) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Jurusan) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Jurusan) %>
                <%: Html.ValidationMessageFor(model => model.Jurusan) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

