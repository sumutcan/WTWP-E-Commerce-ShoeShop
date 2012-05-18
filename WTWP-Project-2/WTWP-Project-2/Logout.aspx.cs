using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;

namespace WTWP_Project_2
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Kullanici cikisYapan = Session[Misc.GecerliKullanici] as Kullanici;
            
            cikisYapan.sepetiKaydet();
            
            Session[Misc.GecerliKullanici] = null;

            Response.Redirect("~/Default.aspx", false);

        }
    }
}