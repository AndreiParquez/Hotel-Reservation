using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Admin
{
    public partial class Rooms : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phoeb\Downloads\HotelReservation.mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        void LoadRecord()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand comm = new SqlCommand("SELECT * FROM RoomsTable", con);
                SqlDataAdapter d = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                d.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("login.aspx");
        }

        protected void Enter_Click(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO RoomsTable (Status) VALUES (@Status)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Status", "Available");

                connection.Open();
                command.ExecuteNonQuery();
            }

            LoadRecord(); // Refresh the table after inserting a new room
        }
    }
}
