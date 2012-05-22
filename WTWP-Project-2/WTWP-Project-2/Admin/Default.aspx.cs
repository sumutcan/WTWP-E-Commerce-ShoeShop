using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

namespace WTWP_Project_2.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlTextReader rdr = new XmlTextReader("http://www.tcmb.gov.tr/kurlar/today.xml");
            DataSet ds = new DataSet();
            ds.ReadXml(rdr);
            GridView1.DataSource = ds.Tables["Currency"];
            GridView1.DataBind();

        }
    }
}