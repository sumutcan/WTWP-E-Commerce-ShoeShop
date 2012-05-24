using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;
using WTWP_Project_2.DataAccessLayer;
using System.Collections;
using System.Data;

namespace WTWP_Project_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session[Misc.GecerliKullanici] == null)
                {
                    Response.Redirect("~/Default.aspx",false);
                }
                else
                {
                    if (IsPostBack)
                    {
                        if (Request.QueryString["ID"] != null)
                        {
                            if (Request.QueryString["Pid"] == "0")
                            {
                                sepettenCikar(Convert.ToInt32(Request.QueryString["ID"]));
                            }
                        }

                    }
                    else
                    {
                        UrunDB.sepettekiUrunleriGetir((Session[Misc.GecerliKullanici] as Kullanici).Sepet);
                        lstSepet.DataSource = UrunDB.sepettekiUrunleriGetir((Session[Misc.GecerliKullanici] as Kullanici).Sepet);
                        lstSepet.DataKeyNames = new string[] { "Key" };
                        lstSepet.DataBind();


                    }
                }
            }
            catch { }
            
        }

        public void sepettenCikar(int urunID)
        {
            Kullanici k = Session[Misc.GecerliKullanici] as Kullanici;
            k.sepettenCikar(urunID);
        }

        protected void btnTemizle_Click(object sender, EventArgs e)
        {
            foreach (Control item in lstSepet.Controls)
            {
                if (item is CheckBox)
                {
                    CheckBox chk = (CheckBox)item;
                    chk.Checked = false;
                }
            }
        }

        protected void btnTumunuSec_Click(object sender, EventArgs e)
        {
            foreach (Control item in lstSepet.Controls)
            {
                if (item is CheckBox)
                {
                    CheckBox chk = (CheckBox)item;
                    chk.Checked = true;
                }
            }
        }

        protected void txtAdet_TextChanged(object sender, EventArgs e)
        {
            foreach (ListViewItem item in lstSepet.Items)
            {
                if (((TextBox)item.FindControl("txtAdet")).Equals((TextBox)sender))
                {
                    Dictionary<int, SatilanUrun> al = UrunDB.sepettekiUrunleriGetir((Session[Misc.GecerliKullanici] as Kullanici).Sepet);

                    SatilanUrun u = al[Convert.ToInt32(lstSepet.DataKeys[item.DataItemIndex].Value.ToString())];
                    
                    ((Label)item.FindControl("lblSubFiyat")).Text = (Convert.ToDouble(u.Fiyat) * Convert.ToDouble(((TextBox)item.FindControl("txtAdet")).Text)).ToString();
                    double netToplam = Convert.ToDouble(lblNetToplam.Text) + Convert.ToDouble(((Label)item.FindControl("lblSubFiyat")).Text);
                }
            }
        }

        protected void lstSepet_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            
        }

        protected void lstSepet_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "UrunCikar")
            { 
            
            }
        }

    }
}