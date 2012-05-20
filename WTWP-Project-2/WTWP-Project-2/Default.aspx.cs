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
            Urun urun1 = new Urun(1);
            urun1.Numara = 45;
            urun1.Renk = "yeşil";
            urun1.Fiyat = 56.4;
            urun1.Description = "dsadfsdfsd";

            ArrayList urunler = new ArrayList();
            urunler.Add(urun1);

            lstTOP5.DataSource = urunler;
            lstTOP5.DataBind();

        }
    }
}
