using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;
using System.Collections;

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
                lnkKayitProfil.PostBackUrl = "~/Kayit.aspx";

                pnlSepet.Visible = false;

            }
            else
            {
                pnlKullaniciGiris.Visible = false;

                pnlKayitProfil.Visible = true;
                lnkKayitProfil.Text = "Profil";
                lnkKayitProfil.PostBackUrl = "~/Profil.aspx";

                pnlSepet.Visible = true;

                try
                {
                    lblSepettekiUrunMiktari.Text = (Session[Misc.GecerliKullanici] as Kullanici).sepettekiElemanSayisi().ToString();
                }
                catch { }

                
            }
            if (Session[Misc.Karsilastirilacaklar] == null)
                Session[Misc.Karsilastirilacaklar] = new ArrayList();

            if ((Session[Misc.Karsilastirilacaklar] as ArrayList).Count == 2)
            {
                Response.Redirect("~/Karsilastir.aspx", false);
            }

            
        
            
        }

        

    }
}
