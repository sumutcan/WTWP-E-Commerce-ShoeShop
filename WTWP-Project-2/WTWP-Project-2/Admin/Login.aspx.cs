using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WTWP_Project_2.ClassLayer;


namespace WTWP_Project_2.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkGiris_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != null && TextBox2.Text != null)
            {
                string posta = TextBox1.Text;
                string pass = TextBox2.Text;
                Adm admin = new Adm();
                admin.Email = posta;
                admin.Sifre = pass;
                if (admin.girisYap() != null )
                {
                    Session[Misc.GecerliKullanici] = admin;
                    Response.Redirect("~/Admin/Default.aspx", false);
                }
                else 
                {
                    mesaj.Text = "E-posta veya sifre gecersiz.";
                    mesaj.Visible = true;
                }
            }
            else
            {
                mesaj.Text = "E-posta veya sifre alani doldurulmadi!";
                mesaj.Visible = true;
            }
        }
    }
}