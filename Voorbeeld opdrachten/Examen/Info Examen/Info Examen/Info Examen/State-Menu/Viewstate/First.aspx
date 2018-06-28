<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First.aspx.cs" Inherits="Info_Examen.Viewstate.First" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eerste pagina</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Naam:<br />
        <asp:TextBox ID="txt_Naam" runat="server"></asp:TextBox>
        <br />
        Plaats:<br />
        <asp:TextBox ID="txt_Plaats" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btn_Submit" runat="server" PostBackUrl="second.aspx" Text="Post" />
    
    </div>
    </form>
</body>
</html>
