using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Admin
{
    public partial class form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the reservation details from the session
                string name = (string)Session["FullName"];
          
                string checkInDate = (string)Session["CheckIn"];
                string checkOutDate = (string)Session["CheckOut"];
                string roomType = (string)Session["RoomType"];
                

                // Display the reservation details in the labels
                lblName.Text = name;
                lblCi.Text = checkInDate;
                lblCo.Text = checkOutDate;
                lblRoom.Text = roomType;
                
            }
        }
    }
    }
