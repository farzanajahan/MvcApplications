<%@ Page Language="C#" Inherits="MvcApplication.Views.Authenticate.Index"  CodeBehind="~/Views/Authenticate/Index.aspx.cs" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <fieldset>
    <div>
    <form method="post" action="<%=Url.Action("logon", "authenticate") %>">
        User ID:  <input type="text" name="userId" /><br />
        Password: <input type="password" name="password" /><br />
        <input type="submit" value="Log On" />
    </form>
    </div>
</fieldset>

</asp:Content>
