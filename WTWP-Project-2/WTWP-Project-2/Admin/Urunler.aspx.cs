using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.DataAccessLayer;
using WTWP_Project_2.ClassLayer;

namespace WTWP_Project_2.Admin
{
    public partial class Urunler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                foreach (Uretici u in UrunDB.tumUreticileriCek())
                    cmbUreticiler.Items.Add(new ListItem(u.Ad, u.ID.ToString()));

                if (Request.QueryString["ID"] != null)
                    if (Request.QueryString["Pid"] == "0")
                    {
                        UrunDB.sil(Convert.ToInt32(Request.QueryString["ID"]));
                    }
                    else if (Request.QueryString["Pid"] == "1")
                    {
                        try
                        {
                            SatilanUrun cekilenUrun = UrunDB.tekUrunGetir(Convert.ToInt32(Request.QueryString["ID"])).First<SatilanUrun>();

                            cmbCinsiyet.Value = cekilenUrun.Urun.Cinsiyet.ToString();
                            cmbUreticiler.Value = cekilenUrun.Urun.Uretici.ID.ToString();
                            txtFiyat.Value = cekilenUrun.Fiyat.ToString();
                            txtRenk.Value = cekilenUrun.Renk;
                            txtStok.Value = cekilenUrun.Stok.ToString();
                            txtNumara.Value = cekilenUrun.Numara.ToString();



                        }
                        catch { }
                    }



            }
            else
            {
                if (Request.QueryString["Pid"] == "1")
                {
                    UrunDB.guncelle(Convert.ToInt32(Request.QueryString["ID"]), Convert.ToInt32(Request.QueryString["ProductID"]), Convert.ToInt32(cmbUreticiler.Value), Convert.ToInt32( txtStok.Value), txtRenk.Value, Convert.ToDouble(txtFiyat.Value), cmbCinsiyet.Value,Convert.ToInt32( txtNumara.Value));
                }
                else
                {
                    int eklenenUrunID = UrunDB.urunEkle(Convert.ToInt32(cmbUreticiler.Value), Convert.ToChar(cmbCinsiyet.Value), Convert.ToDouble(txtFiyat.Value), txtRenk.Value, Convert.ToInt32(txtStok.Value), Convert.ToInt32(txtNumara.Value));
                    if (fileUrunFoto.HasFile)
                    {
                        if (fileUrunFoto.PostedFile.ContentType == "image/jpeg")
                        {
                            if (fileUrunFoto.PostedFile.ContentLength < 102400)
                            {
                                string filename = eklenenUrunID + ".jpg";
                                fileUrunFoto.SaveAs(@"C:\Users\umutcan\WTWP-E-Commerce-ShoeShop\WTWP-Project-2\WTWP-Project-2\UrunResimleri\" + filename);

                            }

                        }

                    }

                }
            }
            lstUrunler.Items.Clear();
            lstUrunler.DataSource = UrunDB.tumunuCek();
            lstUrunler.DataBind();
        }
    }
}