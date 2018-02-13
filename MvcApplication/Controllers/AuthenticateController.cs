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

        public RedirectToRouteResult logon(string userId, string password)
        {
            var result = Authenticator.Authenticate(userId, password);

            return RedirectToAction("index", "departments");
        }

    }
}
