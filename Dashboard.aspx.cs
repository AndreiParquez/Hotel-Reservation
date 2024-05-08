using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Runtime.Remoting.Messaging;

namespace Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phoeb\Downloads\HotelReservation.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnGenerateReceipt_Click(object sender, EventArgs e)
        {

            // Get the room number from the input textbox
            int roomNumber = int.Parse(RoomNo.Text);

            // Get the current date
            DateTime currentDate = DateTime.Now;

            // Construct the SQL query to retrieve the record(s) for the specified room and date range
            string query = $"SELECT CheckIn, CheckOut FROM DataTable WHERE RoomType = {roomNumber} AND CheckIn <= '{currentDate}' AND CheckOut >= '{currentDate}'";

            // Create a new SqlCommand object to execute the query
            SqlCommand command = new SqlCommand(query, con);
            con.Open();
            // Execute the query and retrieve the results
            SqlDataReader reader = command.ExecuteReader();

            // Check if any records were returned
            if (reader.HasRows)
            {
                // Read the first record (assuming there is only one record)
                reader.Read();

                // Extract the check-in and check-out times from the record
                DateTime checkInTime = DateTime.Parse(reader["CheckIn"].ToString());
                DateTime checkOutTime = DateTime.Parse(reader["CheckOut"].ToString());

                // Calculate the number of days the room is booked
                int bookingDays = (int)(checkOutTime - checkInTime).TotalDays;

                // Set the status of the room based on whether it is currently booked or not
                if (bookingDays > 0)
                {
                    // Room is currently booked
                    statusTextBox.Text = "Booked";
                }
                else
                {
                    // Room is not currently booked
                    statusTextBox.Text = "Available";
                }
            }
            else
            {
                // No records were found for the specified room and date range
                statusTextBox.Text = "Available";
            }

            // Close the reader and the connection
            reader.Close();
           con.Close();
        }

    }
}