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
    public partial class Arama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lstTOP5.DataSource = UrunDB.urunAra(txtArama.Text);

            lstTOP5.DataBind();
        }

        protected void lstTOP5_LayoutCreated(object sender, EventArgs e)
        {

        }

        protected void lstTOP5_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "SepeteEkle")
            {
                SatilanUrun u = new SatilanUrun();
                u.SatilanUrunID = Convert.ToInt32(e.CommandArgument);
                (Session[Misc.GecerliKullanici] as Kullanici).sepeteEkle(u);
                ((Literal)Page.Master.FindControl("lblSepettekiUrunMiktari")).Text = (Session[Misc.GecerliKullanici] as Kullanici).sepettekiElemanSayisi().ToString();

            }
        }

        protected void lstTOP5_SelectedIndexChanged(object sender, EventArgs e)
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
    }
}