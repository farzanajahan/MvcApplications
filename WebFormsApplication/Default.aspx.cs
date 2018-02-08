using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;
using System.Data.OracleClient;
using System.Data;
using System.Net;
using System.Text;

namespace WebFormsApplication
{
    public partial class _Default : Page
    {
        protected override void OnPreInit(EventArgs e)
        {
            //new GlobalTemplate().Render(System.IO.Path.Combine(MapPath("~/"), "globaltemplate.master"));
              
            MasterPageFile = MasterPageVirtualPathProvider.MasterPageFileLocation;
            //MasterPageFile = "~/globaltemplate.master";
            base.OnPreInit(e);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            var departments = Department.LoadFromFile(Server.MapPath("departments.csv"));

            foreach (Department department in departments)
            {
                this.Div1.InnerHtml  += department.GlobalDeptName+"<br/>";
            }
        }
        
    }
}