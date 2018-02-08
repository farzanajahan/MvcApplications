<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<% var model = Model as ClassLibrary.Authenticator.AuthenticateResult; %>
<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title></title>
</head>
<body>
    <div>
        Status: <% if(model.Error) { %>
                    <%=model.ErrorMessage %>
                <% } else { %>
        Authenticated
                <%} %><br />
        Person_ID => <%=model.ExtensionAttribute13 %><br />
        Member Of:<br />
        <ul>
        <% foreach(var item in model.MemberOf) {%>
            <li><%=item %></li>
        <%} %>
        </ul>
    </div>
</body>
</html>
