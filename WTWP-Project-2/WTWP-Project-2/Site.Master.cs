using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;

namespace WTWP_Project_2
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Misc.GecerliKullanici] == null)
            {
                pnlKullaniciGiris.Visible = true;

                pnlKayitProfil.Visible = true;
                lnkKayitProfil.Text = "Kayıt";

                pnlSepet.Visible = false;

            }
            else
            {
                pnlKullaniciGiris.Visible = false;

                pnlKayitProfil.Visible = true;
                lnkKayitProfil.Text = "Profil";

                pnlSepet.Visible = true;
            }
        }


    }
}
