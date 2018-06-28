<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrossPageMain.aspx.cs" Inherits="CrossPagePostingDemo.CrossPageMain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>
        Cross Page Posting is een meer geautomatiseerde manier om form data
        tussen page calls vast te houden dan via de QueryString.
    </p>
    <p>
        Vul hier een fav movie titel in om middels Cross Page Posting door te geven aan CrossPageDeferred.aspx:
        <br />
        <asp:TextBox ID="txtMovieTitle" runat="server"></asp:TextBox>
        <br />
        Vul hier je rating (schaal van 10.0, net als IMDB) in voor de betreffende film:
        <br />
        <asp:TextBox ID="txtRating" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="CrossPagePosting Demo" PostBackUrl="~/CrossPageDeferred.aspx" />
    </p>
    </div>
    </form>
</body>
</html>
