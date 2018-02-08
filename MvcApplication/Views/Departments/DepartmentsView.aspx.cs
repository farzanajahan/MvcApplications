using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClassLibrary;

namespace MvcApplication.Views.Departments
{
    public class DepartmentsView : System.Web.Mvc.ViewPage
    {
        protected override void OnPreInit(EventArgs e)
        {
            MasterPageFile = MasterPageVirtualPathProvider.MasterPageFileLocation;
            base.OnPreInit(e);
        }
    }
}