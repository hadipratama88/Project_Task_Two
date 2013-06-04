<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Project_Task_Two.Models.Tmahasiswa>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete Confirmation</h2>

    <div> 

       <p>Please confirm you want to deleted Product :  

       <i> <%=Html.Encode(Model.Name) %>? </i> </p> 

   </div> 

    

   <% using (Html.BeginForm()) { %> 

       <input name="confirmButton" type="submit" value="Delete" />         

   <% } %> 

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
