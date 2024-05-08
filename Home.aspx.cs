using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Admin
{
    public partial class _try : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phoeb\Downloads\HotelReservation.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM DataTable", con);
            con.Open();
            int reservationCount = (int)cmd.ExecuteScalar();
            con.Close();
            RLabel.Text = reservationCount.ToString();

            SqlCommand cmd1 = new SqlCommand("SELECT SUM(Cost) FROM DataTable", con);
            con.Open();
            object totalCost = cmd1.ExecuteScalar();
            con.Close();
            LabelTotalCost.Text = "₱ " + totalCost.ToString();



            SqlCommand command = new SqlCommand("SELECT COUNT(*) AS AvailableRooms FROM [dbo].[RoomsTable] WHERE [Status] = 'Available'", con);
            con.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                int availableRooms = Convert.ToInt32(reader["AvailableRooms"]);
                lblAvailableRooms.Text = availableRooms.ToString();
            }
            reader.Close();
        }


    }
}