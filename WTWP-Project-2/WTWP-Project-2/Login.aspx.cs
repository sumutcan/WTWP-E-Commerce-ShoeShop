using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;
using System.Web.UI.HtmlControls;

namespace WTWP_Project_2
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Misc.KullaniciIslemleriHandler] == null)
                Session[Misc.KullaniciIslemleriHandler] = new KullaniciIslemleriHandler();
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            try
            {
                KullaniciIslemleriHandler handler = Session[Misc.KullaniciIslemleriHandler] as KullaniciIslemleriHandler;

                Session[Misc.GecerliKullanici] = handler.kullaniciGiris(txtEPosta.Text, txtSifre.Text);

                if (Session[Misc.GecerliKullanici] == null)
                    throw new Exception("Email veya şifre yanlış.");

                (Session[Misc.GecerliKullanici] as Kullanici).kayitliSepetiGetir();


                Response.Redirect("~/Default.aspx",false);
            }
            catch (Exception ex)
            {
                ((Panel)Page.Master.FindControl("pnlHata")).Visible = true;
                ((HtmlGenericControl)Page.Master.FindControl("hataMesaji")).InnerText = ex.Message;
            }
        }

        protected void lnkSifremiUnuttum_Click(object sender, EventArgs e)
        {
            KullaniciIslemleriHandler handler = Session[Misc.KullaniciIslemleriHandler] as KullaniciIslemleriHandler;
            handler.sifremiUnuttum(txtEPosta.Text);
        }
    }
}