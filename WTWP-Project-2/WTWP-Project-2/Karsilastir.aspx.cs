using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.DataAccessLayer;
using WTWP_Project_2.ClassLayer;
using System.Collections;

namespace WTWP_Project_2
{
    public partial class Karsilastir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            dtlKarsilastir1.DataSource = UrunDB.tekUrunGetir(((SatilanUrun)(Session[Misc.Karsilastirilacaklar] as ArrayList)[0]).SatilanUrunID);
            dtlKarsilastir1.DataBind();

            dtlKarsilastir2.DataSource = UrunDB.tekUrunGetir(((SatilanUrun)(Session[Misc.Karsilastirilacaklar] as ArrayList)[1]).SatilanUrunID);
            dtlKarsilastir2.DataBind();
        }
    }
}