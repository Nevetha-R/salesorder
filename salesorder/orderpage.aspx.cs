using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace salesorder
{
    public partial class orderpage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=ITCLABJ70\SQLEXPRESS;Initial Catalog=salesorder;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btncheck_Click(object sender, EventArgs e)
        {
            conn.Open();
            string checkprod = "select qty from  product where pname='" +DropDownList1.SelectedValue + "'";
            SqlCommand com = new SqlCommand(checkprod, conn);
           int quantity =(Int32)com.ExecuteScalar();
            int q = Convert.ToInt32(Txtqty.Text);
           if (q<=quantity)
            {
                int res;
                string checkcost = "select cost from  product where pname='" + DropDownList1.SelectedValue+ "'";
                SqlCommand com1 = new SqlCommand(checkcost, conn);
                int cost = (Int32)com1.ExecuteScalar();
                res =cost*q ;
                Txtamt.Text = res.ToString();
            }
            else
            {
                Lblres.Text = "Required Quantity is not available";
            }
            conn.Close();
        }

        protected void Btnorder_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText= "insert into orderdetails (orderedprd,orderedqty,totalamt) values ('"+DropDownList1.SelectedValue + "',"+Convert.ToInt32(Txtqty.Text)+","+Convert.ToInt32(Txtamt.Text)+")";
            cmd.ExecuteNonQuery();
            conn.Close();
            Session["prd"] = DropDownList1.SelectedValue;
            Session["qua"] = Txtqty.Text;
            Session["total"] = Txtamt.Text;
            Response.Redirect("confirmorderform.aspx");
        }

        protected void Btnreset_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect(Page.Request.RawUrl);
        }
    }
}