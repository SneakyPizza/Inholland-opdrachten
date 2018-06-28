<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Week2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Voornaam: "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_Firstname" runat="server" Width="149px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="val_name" runat="server" ControlToValidate="tb_Firstname" ErrorMessage="fgyilgrqfasd"></asp:RequiredFieldValidator>
            <br />
            Achternaam:&nbsp;&nbsp;
            <asp:TextBox ID="tb_Surname" runat="server" Width="146px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="val_Surname" runat="server" ControlToValidate="tb_Surname" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_Welcome" runat="server" Text="Label"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="val_Gender" runat="server" ControlToValidate="rbtnl_Gender" ErrorMessage="Gender niet ingevuld"></asp:RequiredFieldValidator>
            <asp:RadioButtonList ID="rbtnl_Gender" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtn_Male_SelectedIndexChanged">
                <asp:ListItem Value="0">Man</asp:ListItem>
                <asp:ListItem Value="1">Vrouw</asp:ListItem>
                <asp:ListItem Value="2">Other</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Leeftijd: "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_Age" runat="server" Height="16px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="val_Age" runat="server" ErrorMessage="Input Age"></asp:RequiredFieldValidator>
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_Email" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="val_Email" runat="server" ControlToValidate="tb_Email" ErrorMessage="Input  Email"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirm Email:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tb_ConfirmEmail" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btn_Confirm" runat="server" Text="Klik hier" Width="97px" OnClick="btn_Confirm_Click" />
        </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
