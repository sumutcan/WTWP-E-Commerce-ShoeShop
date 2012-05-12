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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["LoggedUser"] == null)
                {
                    Response.Redirect("../Default.aspx");
                }
                else
                {
                    if (!IsPostBack)
                    {
                        if (Request.QueryString["ID"] != null)
                            if (Request.QueryString["Pid"] == "0")
                            {
                                sepettenCikar(Convert.ToInt32(Request.QueryString["ID"]));
                            }
                    }
                }
            }
            catch { }
            
        }

        public void sepettenCikar(int urunID)
        {
            Kullanici k = Session["LoggedUser"] as Kullanici;
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


    }
}