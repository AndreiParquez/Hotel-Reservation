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
    public partial class Modal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phoeb\Downloads\HotelReservation.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Enter_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert Into DataTable values('" + FullName.Text + "','" + Address.Text + "','" + CheckIn.Text + "','" + CheckOut.Text + "','" + AdultsNum.Text + "','" + ChildrenNum.Text + "','" + DropDownList1.SelectedValue + "','" + ContactNumber.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Sucessfully Inserted');", true);
         
            FullName.Text = "";
            Address.Text = "";
            AdultsNum.Text = "";
            ContactNumber.Text = "";
            ChildrenNum.Text = "";
            CheckIn.Text = "";
            CheckOut.Text = "";

        }

       
    }
}