using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace salesorder
{
    public partial class paymentform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedValue.Equals("payment by cheque"))
            {
                Response.Redirect("Successorderform.aspx");
            }
            else
            {
                Response.Redirect("cardform.aspx");
            }
        }

        protected void Btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("confirmorderform.aspx");
        }
    }
}