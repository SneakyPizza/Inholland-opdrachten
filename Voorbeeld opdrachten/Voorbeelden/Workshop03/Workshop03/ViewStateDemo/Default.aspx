<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ViewStateDemo.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h3>All TextBox Controls set to ReadOnly during Page_Load():</h3>
    <div>
        <asp:Table ID="Table1" runat="server" Height="158px" Width="642px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Naam</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">EnableViewState = True and ViewStateMode = Inherits</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Adres</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox2" runat="server" EnableViewState="False" ViewStateMode="Disabled"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">EnableViewState = False and ViewStateMode = Disabled</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Telefoon</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell runat="server">EnableViewState = True and ViewStateMode = Inherits</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    <h3>Comments and sidenotes on using View State</h3>
    <asp:BulletedList ID="BulletedList1" runat="server">
        <asp:ListItem>Voor het bewaren van de toestand van door de gebruiker gePOSTe waarden, zoals .Text en .Checked, heb je helemaal geen View State nodig (gePOSTe waarden gaan voor waarden die door de view state ingesteld zijn).</asp:ListItem>
        <asp:ListItem>Je hebt bovendien geen View State nodig voor waarden die buiten normale gebruikerscontrole liggen en die veelal constant zijn (zoals .ReadOnly) tijdens de page lifetime (hieronder vallen ook default waarden van properties)</asp:ListItem>
        <asp:ListItem>Je kunt de View State niet alleen op Controls gebruiken, maar ook op de root Control, het Page object zelf. Hier is .ViewState als een dictionary beschikbaar, waarin je strings als key-value pairs kunt opslaan, zie hieronder (alleen bij postback):</asp:ListItem>
    </asp:BulletedList>
    <p>
        <asp:Label ID="lblPageViewState" runat="server"></asp:Label>
    </p>
    </form>
</body>
</html>
