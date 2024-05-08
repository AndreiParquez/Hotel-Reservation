using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;


namespace Admin
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=(localDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phoeb\Downloads\HotelReservation.mdf;Integrated Security=True;Connect Timeout=30");
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            if (username.Text != null || password.Text != null)
            {
                try
                {

                    con.Open();
                    cm = new SqlCommand("select * from usersTable where username ='" + username.Text + "'and password ='" + password.Text + "'", con);
                    dr = cm.ExecuteReader();
                    dr.Read();
                    if (dr.HasRows)
                    {
                        if (username.Text == dr[1].ToString() && password.Text == dr[2].ToString())
                        {
                            Session["Username"] = username.Text;
                            Response.Redirect("Home.aspx");
                        }

                    }
                    else
                    {
                        invalid.Text = "Incorrect Username or Password";

                    }
                }
                catch (Exception ex)
                {
                }
               
                con.Close();

            }
        }

    }

}