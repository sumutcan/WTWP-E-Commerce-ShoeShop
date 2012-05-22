using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;
using WTWP_Project_2.DataAccessLayer;

namespace WTWP_Project_2
{
    public partial class DetayGoruntule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            dtlUrunDetaylari.DataSource = UrunDB.tekUrunGetir(Convert.ToInt32(Request.QueryString["ID"]));
            dtlUrunDetaylari.DataBind();
        }
    }
}