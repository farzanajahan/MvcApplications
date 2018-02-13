<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title></title>
</head>
<body>
    <div>
    <form method="post" action="<%=Url.Action("logon", "authenticate") %>">
        User ID: <input type="text" name="userId" /><br />
        Password: <input type="password" name="password" /><br />
        <input type="submit" value="Log On" />
    </form>
    </div>
</body>
</html>
