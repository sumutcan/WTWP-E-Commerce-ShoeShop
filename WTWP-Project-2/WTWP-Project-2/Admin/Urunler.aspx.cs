using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.DataAccessLayer;
using System.Collections;
using WTWP_Project_2.ClassLayer;

namespace WTWP_Project_2.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.QueryString["ID"] != null)
                    if (Request.QueryString["Pid"] == "0")
                    {
                        UrunDB.UrunSil(Convert.ToInt32(Request.QueryString["ID"]));
                    }
                    else if (Request.QueryString["Pid"] == "1")
                    {
                        ArrayList urun = new ArrayList();
                        urun = UrunDB.UrunAraGenel(Convert.ToInt32(Request.QueryString["ID"]));
                        SatilanUrun k = urun[0] as SatilanUrun;

                        txtStok.Text = k.Stok.ToString();
                        txtRenk.Text = k.Renk;
                        txtFiyat.Text = k.Fiyat.ToString();
                        txtBeden.Text = k.Numara.ToString();
                    }
            }
            lstUrunler.Items.Clear();
            lstUrunler.DataSource = UrunDB.TumUrunleriCek();
            lstUrunler.DataBind();
        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            if (txtArama.Text == "")
                Response.Redirect("Admin/Default.aspx");
            else
            {
                if (UrunDB.UrunAraGenel(txtArama.Text) != null)
                {
                    lstUrunler.Items.Clear();
                    lstUrunler.DataSource = UrunDB.UrunAraGenel(txtArama.Text);
                    lstUrunler.DataBind();
                }
            }
        }

        protected void btnUrunKaydet_Click(object sender, EventArgs e)
        {
            if (txtBeden.Text == "" || txtFiyat.Text == "" || txtRenk.Text == "" || txtStok.Text == "")
            {
                Response.Write("<script>alert('Doldurulmamış alanlar mevcut.')</script>");
            }
            else
            {
                SatilanUrun k = new SatilanUrun();
                k.SatilanUrunID = Convert.ToInt32(Request.QueryString["ID"]);
                k.Renk = txtRenk.Text;
                k.Numara = Convert.ToInt32(txtBeden.Text);
                k.Stok = Convert.ToInt32(txtStok.Text);
                k.Fiyat = Convert.ToInt32(txtFiyat.Text);

                if (Request.QueryString["Pid"] == "1")
                {

                    UrunDB.UrunGuncelle(k.SatilanUrunID, k.Renk, k.Numara, k.Stok, k.Fiyat);
                    Response.Redirect("Admin/Urunler.aspx");
                    pnlBasarili.Visible = true;
                    spanBasarili.InnerHtml = "Kullanıcı başarıyla güncellendi.";
                }
                else
                {
                        UrunDB.UrunEkle(k);
                        pnlBasarili.Visible = true;
                        spanBasarili.InnerHtml = "Kullanıcı başarıyla eklendi.";
                }

                lstUrunler.Items.Clear();
                lstUrunler.DataSource = KullaniciDB.UrunAraGenel(txtArama.Text);
                lstUrunler.DataBind();
            }
        }
    }
}