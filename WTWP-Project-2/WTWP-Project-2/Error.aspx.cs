using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WTWP_Project_2
{
    public partial class Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this,this.GetType(),"hata","alert('"+Request.QueryString["hata"]+"')",true);
            Response.Redirect("~/Default.aspx",false);

        }
    }
}