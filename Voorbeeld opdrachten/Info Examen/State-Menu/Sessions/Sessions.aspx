<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sessions.aspx.cs" Inherits="Info_Examen.sessions" %>

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
        <asp:Button ID="btn_Add" runat="server" OnClick="btn_Add_Click" Text="Plaats session" />
        <br />
        <asp:Button ID="btn_Remove" runat="server" OnClick="btn_Remove_Click" Text="Verwijder session" />
        <br />
        <br />
        Uit de session:
        <asp:Label ID="lbl_Session" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
