<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QueryStringDemo.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <p>
        View State is leuk en aardig voor het bewaren van de toestand van een bepaalde pagina. Maar informatie doorgeven aan
        een andere pagina kun je er niet mee doen... De simpelste manier om dat te doen is met de hand via een QueryString:
    </p>
    <p>
        Vul hier iets in om via QueryString door te geven naar Ontvanger.aspx:
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        Vul hier nog iets in om via QueryString door te geven naar Ontvanger.aspx:
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="QueryStringDemo" />
    </p>
    </div>
    </form>
</body>
</html>
