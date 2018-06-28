<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="database.aspx.cs" Inherits="Info_Examen.Database_binding.database" %>

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
        <asp:Button ID="btn_Go" runat="server" OnClick="btn_Go_Click" Text="Zoek" />
        <br />
        <asp:Label ID="lbl_Output" runat="server"></asp:Label>

    </div>
    </form>
</body>
</html>
