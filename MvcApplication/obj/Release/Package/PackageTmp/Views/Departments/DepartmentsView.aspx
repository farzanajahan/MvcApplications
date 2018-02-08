<%@ Page Language="C#" Inherits="MvcApplication.Views.Departments.DepartmentsView" CodeBehind="~/Views/Departments/DepartmentsView.aspx.cs" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div>
        <table>
            <tr><td>Name</td></tr>
        <% foreach (var item in (Model as List<ClassLibrary.Department>)) { %> 
            <tr><td><%= item.GlobalDeptName%></td></tr>
            <%} %>
        </table>
    </div>
</asp:Content>