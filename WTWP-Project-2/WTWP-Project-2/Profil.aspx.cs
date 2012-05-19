using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;

namespace WTWP_Project_2
{
    public partial class Profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session[Misc.GecerliKullanici] == null)
                    throw new GecersizOturumException("Bu işlem için yetkiniz yok.");
            }
            catch (GecersizOturumException ex)
            {
                Response.Redirect("~/Error.aspx?hata="+ex.Message,false);
            }
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {

        }
    }
}