using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.DataAccessLayer;

namespace WTWP_Project_2
{
    public partial class Kullanicilar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.QueryString["ID"] != null)
                    if (Request.QueryString["Pid"] == "0")
                    {
                        KullaniciDB.sil(Convert.ToInt32(Request.QueryString["ID"]));
                    }

            }
            lstKullanicilar.Items.Clear();
            lstKullanicilar.DataSource = KullaniciDB.tumunuCek();
            lstKullanicilar.DataBind();
        }
    }
}