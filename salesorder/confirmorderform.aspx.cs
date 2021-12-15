using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace salesorder
{
    public partial class confirmorderform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lblproduct.Text = (string)Session["prd"];
            Lblqty.Text = (string)Session["qua"];
            Lblcost.Text = (string)Session["total"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Session["totamt"] = Lblcost.Text;
            Response.Redirect("paymentform.aspx");
            
        }

       
    }
}