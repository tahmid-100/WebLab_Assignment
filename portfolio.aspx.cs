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
    public partial class WebForm1 : System.Web.UI.Page
        
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayLastPortfolioEntry();
            }
        }

        private void DisplayLastPortfolioEntry()
        {
            string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT TOP 1 phone, email, university, degree FROM aboutme ORDER BY id DESC";
                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lblPhone.Text = reader["phone"].ToString();
                        lblEmail.Text = reader["email"].ToString();
                        lblUniversity.Text = reader["university"].ToString();
                        lblDegree.Text = reader["degree"].ToString();
                    }
                }

                reader.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("contactme.aspx");
        }
    }
}