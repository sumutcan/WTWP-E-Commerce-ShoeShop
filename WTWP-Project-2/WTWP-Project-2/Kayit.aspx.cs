using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;

namespace WTWP_Project_2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[Misc.KullaniciIslemleriHandler] == null)
                Session[Misc.KullaniciIslemleriHandler] = new KullaniciIslemleriHandler();
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            KullaniciIslemleriHandler handler = Session[Misc.KullaniciIslemleriHandler] as KullaniciIslemleriHandler;
            handler.kullaniciKaydet(txtAd.Text,txtSoyad.Text,txtEPosta.Text,txtSifre.Text,new Telefon(0,txtAlanKoduEv.Text,txtTelNoEv.Text),new Telefon(0,txtAlanKoduCep.Text,txtTelNoCep.Text),Convert.ToChar(cmbCinsiyetler.SelectedValue),Convert.ToInt32(dobYear.Value));
        }
    }
}