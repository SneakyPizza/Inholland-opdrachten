<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Welkom op de Pagina"></asp:Label>
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Terug naar de vorige pagina</asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="lbl_Page" runat="server"></asp:Label>
    </form>
</body>
</html>
