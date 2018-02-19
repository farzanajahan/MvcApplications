using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClassLibrary;


namespace MvcApplication.Controllers
{
    public class DepartmentsController : Controller
    {
        //
        // GET: /Departments/

        public ActionResult Index()
        {
            
            return View("DepartmentsView", Department.LoadFromFile(Server.MapPath("departments.csv")));
        }

        public ActionResult TestView(int id)
        {

            return View("DepartmentsView");
        }

        public ActionResult TestDepartment(string path)
        {

            return View("DepartmentsView", Department.LoadFromFile(path));
        }

    }
}
