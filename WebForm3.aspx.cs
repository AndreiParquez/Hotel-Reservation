using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phoeb\Downloads\HotelReservation.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Enter_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("SELECT * FROM DataTable WHERE CheckIn <= @CheckOut AND CheckOut >= @CheckIn AND RoomNo = @RoomNo", con);
            comm.Parameters.AddWithValue("@CheckIn", CheckIn.Text);
            comm.Parameters.AddWithValue("@CheckOut", CheckOut.Text);
            comm.Parameters.AddWithValue("@RoomNo", DropDownList1.SelectedValue);
            SqlDataReader reader = comm.ExecuteReader();
             
            if (reader.HasRows)
            {
                // There is a conflicting booking
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "swal('Sorry','This room is already reserved during the specified dates.','error')", true);
            }
            else
            {
                reader.Close();
                // Compute the booking cost
                DateTime checkInDate = DateTime.Parse(CheckIn.Text);
                DateTime checkOutDate = DateTime.Parse(CheckOut.Text);
                int numDays = (int)(checkOutDate - checkInDate).TotalDays;
                decimal costPerDay = 500;
                decimal totalCost = numDays * costPerDay;
                comm = new SqlCommand("INSERT INTO DataTable (FullName, Address, CheckIn, CheckOut, AdultsNum, ChildrenNum, RoomNo, ContactNumber, Cost) VALUES (@FullName, @Address, @CheckIn, @CheckOut, @AdultsNum, @ChildrenNum, @RoomNo, @ContactNumber, @Cost)", con);
                comm.Parameters.AddWithValue("@FullName", FullName.Text);
                comm.Parameters.AddWithValue("@Address", Address.Text);
                comm.Parameters.AddWithValue("@CheckIn", CheckIn.Text);
                comm.Parameters.AddWithValue("@CheckOut", CheckOut.Text);
                comm.Parameters.AddWithValue("@AdultsNum", AdultsNum.Text);
                comm.Parameters.AddWithValue("@ChildrenNum", ChildrenNum.Text);
                comm.Parameters.AddWithValue("@RoomNo", DropDownList1.SelectedValue);
                comm.Parameters.AddWithValue("@ContactNumber", ContactNumber.Text);
                comm.Parameters.AddWithValue("@Cost", totalCost);
                comm.ExecuteNonQuery();

                ClientScript.RegisterClientScriptBlock(this.GetType(), "Ok", "swal('Reserved!','Successfully Inserted!','success')", true);


                // Get the email address and order number from the textboxes
                string emailAddress = Address.Text;
                string guestName = FullName.Text;
                string checkIn = CheckIn.Text;
                string checkOut = CheckOut.Text;
                string roomType = DropDownList1.SelectedValue;
                int firstValue = int.Parse(AdultsNum.Text);
                int secondValue = int.Parse(ChildrenNum.Text);
                int sum = firstValue + secondValue;

                string numGuests = sum.ToString();
                new string('*', 40);


                // Create the email message
                MailMessage message = new MailMessage();
                message.From = new MailAddress("hoteltransylvania.reservation@gmail.com");
                message.To.Add(emailAddress);
                message.Subject = "Reservation Confirmation";
                string emailBody = $"Dear {guestName},\n\nThank you for choosing Hotel Transylvania for your upcoming stay.\n\nWe are pleased to confirm your reservation for the following dates:\n\nCheck-in: {checkIn}\nCheck-out: {checkOut}\nRoom type: {roomType}\nNumber of guests: {numGuests}\n\n{new string('*', 40)}\n\nTotal cost:  ₱{totalCost:N}\n\nWe look forward to welcoming you to our hotel and making your stay a comfortable and enjoyable one.\n\nIf you have any questions or require any assistance, please do not hesitate to contact us.\n\nBest regards,\nThe Hotel Transylvania Team";

                message.Body = emailBody;


                // Create the SMTP client and send the message using your credentials
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.EnableSsl = true;

                client.Credentials = new NetworkCredential("hoteltransylvania.reservation@gmail.com", "ebmjuomcrekpgoai");
                client.Send(message);


                FullName.Text = "";
                Address.Text = "";
                AdultsNum.Text = "";
                ContactNumber.Text = "";
                ChildrenNum.Text = "";
                CheckIn.Text = "";
                CheckOut.Text = "";


            }

            con.Close();


        }


    }
}
