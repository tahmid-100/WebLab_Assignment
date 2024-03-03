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
    public partial class contactme : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            SqlConnection con = new SqlConnection(cs);
            string query = "INSERT INTO contactme (name, email, message) VALUES (@n, @e, @m)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@n", TextBox1.Text);
            cmd.Parameters.AddWithValue("@e", TextBox2.Text);
            cmd.Parameters.AddWithValue("@m", TextBox3.Text);
            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Successful insertion
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Submitted !!!')</script>");
            }
            else
            {
                // Failed insertion
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Submit Failed !!!')</script>");
            }
            con.Close();
        }
        
        }
    }
