<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Databases.aspx.cs" Inherits="tentamen.Databases" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/JipEnJanneke.mdb" SelectCommand="SELECT * FROM [Boeken]"></asp:AccessDataSource>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource1" DataTextField="Titel" DataValueField="Id">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Prijs: "></asp:Label>
&nbsp;<asp:Label ID="lbl_Prijs" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Jaar: "></asp:Label>
&nbsp;<asp:Label ID="lbl_Jaar" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="ISBN: "></asp:Label>
&nbsp;<asp:Label ID="lbl_ISBN" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
