<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Week1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Aanmeld Pagina</h1>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Naam: "></asp:Label>
                <asp:TextBox ID="tb_name" runat="server" Height="16px" Width="153px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_NameOutput" runat="server" Text="?"></asp:Label>
            </p>
            <p>
                <asp:CheckBox ID="cb_Student" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Student" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_StudentOutput" runat="server" Text="?"></asp:Label>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Leeftijd: "></asp:Label>
                <asp:DropDownList ID="ddl_Age" runat="server">
                    <asp:ListItem Value="0">15-20</asp:ListItem>
                    <asp:ListItem Value="1">20-25</asp:ListItem>
                    <asp:ListItem Value="2">25-30</asp:ListItem>
                    <asp:ListItem Value="3">30-35</asp:ListItem>
                    <asp:ListItem Value="4">35-40</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_AgeOutput" runat="server" Text="?"></asp:Label>
            </p>
            <p>
                <asp:Button ID="btn_Confirm" runat="server" OnClick="btn_Confirm_Click" Text="Aanmelden" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_ConfirmOutput" runat="server" Text="?"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
