<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MSAccessConnection.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnConnectionTest" runat="server" Text="Test Connectie" 
            onclick="btnConnectionTest_Click" />
        <br />
        <br />
        <asp:Label ID="lblConnectionFeedback" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
