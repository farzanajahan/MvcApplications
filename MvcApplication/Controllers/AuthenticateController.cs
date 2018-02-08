using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClassLibrary;

namespace MvcApplication.Controllers
{
    public class AuthenticateController : Controller
    {
        //
        // GET: /Authenticate/

        public ActionResult Index()
        {
            return View();
        }

        public void logon(string userId, string password)
        {
            var result = Authenticator.Authenticate(userId, password);

            /*Response.Write("memberOf=" + string.Join(";", result.MemberOf));
            Response.Write("<br/>");
            Response.Write("extensionAttribute13=" + result.ExtensionAttribute13);*/

            
            Response.Redirect("/departments");                            
        }

    }
}
