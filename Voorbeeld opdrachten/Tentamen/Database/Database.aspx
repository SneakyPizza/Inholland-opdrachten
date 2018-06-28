<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Database.aspx.cs" Inherits="Database.Database" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Star Wars Ruimtevaartuigen beheren<br />
            Naam Ruimtevaartuig <asp:TextBox ID="Txt_NaamRuimteVoertuig" runat="server"></asp:TextBox><br />

            Vaartuigklasse <asp:DropDownList ID="Drop_vaartuigklasse" AutoPostBack="true" runat="server"></asp:DropDownList><br />
            Affiliatie <asp:DropDownList ID="Drop_affiliatie" AutoPostBack="true" runat="server"></asp:DropDownList><br />

            Hyperdrive? <asp:CheckBox ID="Check_Hyperdrive" runat="server" /> <br />
            <asp:Button ID="btn_voegtoe" runat="server" OnClick="btn_voegtoe_Click" Text="Voeg Toe" /><br />
            <asp:Label ID="lblConnectionFeedback" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
