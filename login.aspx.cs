using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from login where username=@user and password=@pass";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@user", usernameTextbox.Text);
            cmd.Parameters.AddWithValue("@pass", passwordTextbox.Text);
            con.Open();
            SqlDataReader dr= cmd.ExecuteReader();
            if (dr.HasRows)
            { Session["user"] =usernameTextbox.Text;
                //Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts","<script>alert('Login Successful !!!')</script>");
                Response.Redirect("Dashboard.aspx");
            }

            else {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!!')</script>");

            }
            con.Close();
        }
    }
}