using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTWP_Project_2.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkGiris_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx",false);
        }
    }
}