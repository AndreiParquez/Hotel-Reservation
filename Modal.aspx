<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modal.aspx.cs" Inherits="Admin.Modal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="">
  <button type="button" style="background-color:darkmagenta; border-radius:6px;color:white;border:1px solid white; height:40px;" data-toggle="modal" data-target="#formInsert">
    Insert Data
  </button>  
  <button type="button" style="background-color:darkmagenta; border-radius:6px;color:white;border:1px solid white; height:40px;" data-toggle="modal" data-target="#formEdit">
    Insert Data
  </button>  
</div>
<div style="margin-top:170px">
<div class="modal fade" id="formInsert" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"><div style="margin-top:-20px">
  <div class="modal-dialog modal-dialog-centered" role="document">
   
      <div class="modal-content">
      <div class="modal-header border-bottom-0">
      
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form>
        <div class="modal-body">
          <div class="form-group">
            <label for="email1">Name</label>
            <Asp:Textbox ID="FullName" runat="server" class="form-control" type="text" placeholder="Enter your Fullname"></Asp:Textbox>
              <label for="email1">Address</label>
              <asp:Textbox ID="Address" runat="server"  class="form-control" type="text" placeholder="Enter your Address"></asp:Textbox>
              <label for="email1">Check In</label>
              <asp:Textbox ID="CheckIn" runat="server" class="form-control" type="date" required />
              <label for="email1">Check Out</label>
              <asp:Textbox ID="CheckOut" runat="server" class="form-control" type="date" required />
              <label for="email1">Room Type</label>
              <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
											<asp:ListItem>Family Room</asp:ListItem>
											<asp:ListItem>Deluxe Room</asp:ListItem>
											<asp:ListItem>Suite Room</asp:ListItem>
										</asp:DropDownList>
              <label for="email1">Children Number</label>
			<Asp:Textbox ID="ChildrenNum" runat="server" class="form-control" type="text" placeholder="No. of Children"></Asp:Textbox>
              <label for="email1">Adults Number</label>
              <Asp:Textbox ID="AdultsNum" runat="server" class="form-control" type="text" placeholder="No. of Adults"></Asp:Textbox>
              <label for="email1">Contact No.</label>
  
              <Asp:Textbox ID="ContactNumber" runat="server" class="form-control" type="text" placeholder="Contact Number"></Asp:Textbox>
                      <div class="modal-footer border-top-0 d-flex justify-content-center">
            <asp:Button style="background-color:darkmagenta; border-radius:6px;color:white;border:1px solid white;margin-left:10px " runat="server" ID="Enter" text="Book Now" OnClick="Enter_Click" Height="53px" Width="213px" />
        </div>
        </div>


</div></div>

         




      </form>
    </div>
  </div>
</div>


            </form>
        </div>
    </form>
</body>
</html>
