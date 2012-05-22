using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;
using WTWP_Project_2.DataAccessLayer;

namespace WTWP_Project_2.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Misc.GecerliKullanici] == null || !(Session[Misc.GecerliKullanici] is Adm))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void lbtnCikis_Click(object sender, EventArgs e)
        {
            Session[Misc.GecerliKullanici] = null;
            Response.Redirect("Login.aspx");
        }
    }
}