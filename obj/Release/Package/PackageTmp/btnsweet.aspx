<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="btnsweet.aspx.cs" Inherits="Admin.btnsweet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>

    <form id="form1" runat="server">    <asp:UpdatePanel ID="panel1" runat="server"><ContentTemplate>
                <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
         </ContentTemplate></asp:UpdatePanel>
    </form>
</body>
</html>
