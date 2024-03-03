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
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {

                Response.Write("Welcome to Site " + Session["user"].ToString());
            }

            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {

                Session["user"] = null;
                Response.Redirect("login.aspx");
            }
        }


        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                if (int.TryParse(TextBox1.Text, out int phone))
                {
                    string query = "INSERT INTO aboutme (phone, email, university, degree) VALUES (@phn, @email, @uni, @degree)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@phn", phone);
                    cmd.Parameters.AddWithValue("@email", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@uni", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@degree", TextBox4.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                }


            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
          


            string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = con.CreateCommand();

                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "update aboutme set phone='" + TextBox1.Text + "',email='" + TextBox2.Text + "',university='" + TextBox3.Text + "',degree='" + TextBox4.Text + "' where id=" + Convert.ToInt32(TextBox5.Text) + "";
                con.Open();
                cmd.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                con.Close();
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = con.CreateCommand();

                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "delete from aboutme where phone='" + TextBox1.Text + "'";
                con.Open();
                cmd.ExecuteNonQuery();
                TextBox1.Text = "";
            }

        }

        
    }
}