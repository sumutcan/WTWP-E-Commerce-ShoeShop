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
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Urun urun1 = new Urun();
            Urun urun2 = new Urun();
            Urun urun3 = new Urun();
            Urun urun4 = new Urun();
            Urun urun5 = new Urun();

            urun1.ProductID = 1;
            urun1.Numara = 45;
            urun1.Renk = "yeşil";
            urun1.Fiyat = 56.4;
            urun1.Description = "dsadfsdfsd";

            urun2.ProductID = 2;
            urun2.Numara = 45;
            urun2.Renk = "yeşil";
            urun2.Fiyat = 56.4;
            urun2.Description = "dsadfsdfsd";

            urun3.ProductID = 3;
            urun3.Numara = 45;
            urun3.Renk = "yeşil";
            urun3.Fiyat = 56.4;
            urun3.Description = "dsadfsdfsd";

            urun4.ProductID = 4;
            urun4.Numara = 45;
            urun4.Renk = "yeşil";
            urun4.Fiyat = 56.4;
            urun4.Description = "dsadfsdfsd";

            urun5.ProductID = 5;
            urun5.Numara = 45;
            urun5.Renk = "yeşil";
            urun5.Fiyat = 56.4;
            urun5.Description = "dsadfsdfsd";

            ArrayList urunler = new ArrayList();
            urunler.Add(urun1);
            urunler.Add(urun2);
            urunler.Add(urun3);
            urunler.Add(urun4);
            urunler.Add(urun5);

            lstTOP5.DataSource = urunler;
            
            lstTOP5.DataBind();

        }

        protected void lstTOP5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnkSepeteEkle_Click(object sender, EventArgs e)
        {
            
        }

        protected void lstTOP5_LayoutCreated(object sender, EventArgs e)
        {

        }

        protected void lstTOP5_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (Session[Misc.GecerliKullanici] == null)
            {
                e.Item.FindControl("lnkSepeteEkle").Visible = false;

            }
            else
            {
                e.Item.FindControl("lnkSepeteEkle").Visible = true;
            }
        }

        protected void lstTOP5_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "SepeteEkle")
            {
                Urun u = new Urun();
                u.ProductID = Convert.ToInt32(e.CommandArgument);
                (Session[Misc.GecerliKullanici] as Kullanici).sepeteEkle(u);
                ((Literal)Page.Master.FindControl("lblSepettekiUrunMiktari")).Text = (Session[Misc.GecerliKullanici] as Kullanici).sepettekiElemanSayisi().ToString();

            }


        }
    }
}
