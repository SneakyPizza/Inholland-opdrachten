<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="Info_Examen.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txt_Naam" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btn_Create" runat="server" OnClick="btn_Create_Click" Text="Set cookie!" />
        <br />
        <asp:Button ID="btn_Delete" runat="server" OnClick="btn_Delete_Click" Text="Delete cookie" />
        <br />
        Uit cookie:
        <br />
        <asp:Label ID="lbl_From_Cookie" runat="server"></asp:Label>
        <br />
        <br />
    
    <a href="Cookies.aspx">Ververs</a></div>
    </form>
</body>
</html>
