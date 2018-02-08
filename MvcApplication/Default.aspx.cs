using System;
using System.Web.UI;


namespace WebFormsApplication
{
    public partial class _Default : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("/departments");
        }
        
    }
}