<%@ Page EnableViewState="false" Language="C#" AutoEventWireup="true" CodeBehind="Get.aspx.cs" Inherits="Info_Examen.querystring" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <!-- Belangrijk op GET! -->
    <form id="form1" method="get" runat="server">
    <div>
    
        GET METHODE!<br />
        <br />
    
        Naam:
        <asp:Label ID="lbl_Naam" runat="server"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txt_Naam" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btn_Send" runat="server" Text="GET" />
    
        <br />
    
    </div>
    </form>
</body>
</html>
