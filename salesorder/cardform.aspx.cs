using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace salesorder
{
    public partial class cardform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Txttotamt.Text = (string)Session["totamt"];
        }

        protected void Btnpay_Click(object sender, EventArgs e)
        {
            Response.Redirect("Successorderform.aspx");
        }
    }
}