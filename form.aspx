<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="Admin.form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://bootstrapcreative.com/wp-bc/wp-content/themes/wp-bootstrap/codepen/bootstrapcreative.js?v=5"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            width: 91%
        }
        .auto-style3 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <section>
    <div class="container">
      
      
      <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-8 col-xl-6">
          <div class="row">
            <div class="col text-center">
              <h1>Thank You!</h1>
              <p class="text-h3">
                  Name:<asp:Label ID="lblName" runat="server"></asp:Label><br />
                  Checkin:<asp:Label ID="lblCi" runat="server"></asp:Label><br />
                  CheckOut:<asp:Label ID="lblCo" runat="server"></asp:Label><br />
                  Room<asp:Label ID="lblRoom" runat="server"></asp:Label><br />
                   Room<asp:Label ID="lblCost" runat="server"></asp:Label><br />



              </p>
            </div>
          </div>
       
             <div class="row align-items-center mt-4">
            <div class="col">

                <table class="auto-style2">
                    <tr>
                        <td class="auto-style1">Room Type:</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>

                        <td>

              <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Width="538px">
											<asp:ListItem>Family Room</asp:ListItem>
											<asp:ListItem>Deluxe Room</asp:ListItem>
											<asp:ListItem>Suite Room</asp:ListItem>
                  </asp:DropDownList>
                        </td>
                </table></div></div>
                
            <div class="auto-style3">
                            <div class="row align-items-center mt-4"> 
                Room Number:
                   <input class="form-control" placeholder="Room Number" type="text" /></td>
                
                            
          </div>
          <div class="row align-items-center mt-4">
            <div class="col">
                 Status<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Height="61px" Width="253px"  required="true">
                              <asp:ListItem>Available</asp:ListItem>
                              <asp:ListItem>Unavailable</asp:ListItem>
                              </asp:RadioButtonList>
                     
           <div ></div></div>
        
          </div></div>
          <div class="row align-items-center mt-4">
            <div class="col">
              &nbsp;</div>
          </div>

         
        </div>
      </div>
    </div>
  </section>
        </div>
    </form>
</body>
</html>
