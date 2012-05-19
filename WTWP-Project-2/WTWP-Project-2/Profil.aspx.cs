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
    public partial class Profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session[Misc.GecerliKullanici] == null)
                    throw new GecersizOturumException("Bu işlem için yetkiniz yok.");
                
                if (Session[Misc.KullaniciIslemleriHandler] == null)
                    Session[Misc.KullaniciIslemleriHandler] = new KullaniciIslemleriHandler();

                if (!IsPostBack)
                {

                    KullaniciIslemleriHandler handler = Session[Misc.KullaniciIslemleriHandler] as KullaniciIslemleriHandler;
                    handler.profilBilgileriniGetir((Session[Misc.GecerliKullanici] as Kullanici).ID);

                    txtAd.Text = handler.Kullanici.Ad;
                    txtSoyad.Text = handler.Kullanici.Soyad;
                    txtEPosta.Text = handler.Kullanici.Email;
                    cmbCinsiyetler.SelectedValue = handler.Kullanici.Cinsiyet.ToString();
                    dobYear.Items.FindByValue(handler.Kullanici.DogumYili.ToString()).Selected = true;

                    txtAlanKoduEv.Text = handler.Kullanici.EvTel.AlanKodu;
                    txtTelNoEv.Text = handler.Kullanici.EvTel.No;

                    txtAlanKoduCep.Text = handler.Kullanici.CepTel.AlanKodu;
                    txtTelNoCep.Text = handler.Kullanici.CepTel.No;


                    (Session[Misc.GecerliKullanici] as Kullanici).HamSifre = handler.Kullanici.HamSifre;
                    (Session[Misc.GecerliKullanici] as Kullanici).CepTel = handler.Kullanici.CepTel;
                    (Session[Misc.GecerliKullanici] as Kullanici).EvTel = handler.Kullanici.EvTel;
                }

                
            }
            catch (GecersizOturumException ex)
            {
                Response.Redirect("~/Error.aspx?hata="+ex.Message,false);
            }
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            try
            {
                KullaniciIslemleriHandler handler = Session[Misc.KullaniciIslemleriHandler] as KullaniciIslemleriHandler;
                Kullanici gecerli = Session[Misc.GecerliKullanici] as Kullanici;
                handler.profilBilgileriniGuncelle(gecerli.ID, txtAd.Text, txtSoyad.Text, txtSifre.Text, txtSifreTekrar.Text, txtEPosta.Text, dobYear.Value, Convert.ToChar(cmbCinsiyetler.SelectedValue), gecerli.EvTel.ID, txtTelNoEv.Text, txtAlanKoduEv.Text, txtTelNoCep.Text, txtAlanKoduCep.Text, gecerli.CepTel.ID, gecerli.HamSifre);

                ((Panel)Page.Master.FindControl("pnlBilgi")).Visible = true;
                ((HtmlGenericControl)Page.Master.FindControl("bilgiMesaji")).InnerText = "Profil bilgileri başarıyla güncellendi..";
            }
            catch (Exception ex)
            {
                ((Panel)Page.Master.FindControl("pnlHata")).Visible = true;
                ((HtmlGenericControl)Page.Master.FindControl("hataMesaji")).InnerText = ex.Message;
            }
        }
    }
}