<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notif Modal.aspx.cs" Inherits="Admin.Notif_Modal" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .modalPopup{
        background-color:aqua;
        width:800px;
        height:450px;
        border:3px solid black;
    }
    .modalPopup .header{
          background-color:greenyellow;
          height:30px;
          color:white;
          line-height:30px;
          text-align:center;
          font-weight:bold;
    }
    .modalPopup .footer{
        padding:3px;
    }
    .modalPopup .button{
          height:23px;
          color:white;
          line-height:23px;
          text-align:center;
          font-weight:bold;
          cursor:pointer;
          background-color:red;
          border:1px solid white;



    }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        
        <asp:ScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Height="101px" Text="Get" Width="232px" />

            <asp:Label ID="lblpopup" runat="server"></asp:Label>
        </div>
       <ajaxToolkit:ModalPopupExtender ID="mpe" PopupControlID="Panel1" TargetControlID="lblpopup" CancelControlID="btnclose" runat="server"></ajaxToolkit:ModalPopupExtender>
        <asp:Panel ID="Panel1" CssClass="modalPopup" runat="server">
           <div id="headerdiv" class="header"></div>
           <div id="divdetails"></div>
           <div id="footerdiv" class="footer">  <asp:Button ID="btnclose"runat="server" Text="x" />   </div>

        </asp:Panel>
    </form>
    <ajaxToolkit:PopupControlExtender runat="server"></ajaxToolkit:PopupControlExtender>
</body>
</html>
