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
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=ITCLABJ70\SQLEXPRESS;Initial Catalog=salesorder;Integrated Security=True");
            conn.Open();
            string checkuser = "select count(*) from loginuser where username='"+Txtusername.Text+"'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            conn.Close();
            if(temp==1)
            {
                conn.Open();
                string checkpass= "select userid from loginuser where username='" + Txtusername.Text + "'";
                SqlCommand passcom = new SqlCommand(checkpass, conn);
                string password = passcom.ExecuteScalar().ToString();
                if(password==Txtpassword.Text)
                {
                    Response.Redirect("orderpage.aspx");
                }
                else
                {
                 Lblerror.Text= "password incorrect";
                }
            }
            else
            {
                Lblerror.Text = "invalid user and password";
            }
        }
    }
}