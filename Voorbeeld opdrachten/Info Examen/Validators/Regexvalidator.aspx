<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regexvalidator.aspx.cs" Inherits="Info_Examen.Validators.Regexvalidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Regular expression:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regex1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Komt niet overeen met 2cijfers - 3 letters - 2 cijfers" ValidationExpression="^([0-9]{2})-([a-zA-Z]{3})-([0-9]{2})$"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Probeer!" />
        <br />
        <br />
        Compare validator:<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Niet hetzelfde!"></asp:CompareValidator>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Probeer!" />
        <br />
        <br />
        Required field validator:<br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Moet worden ingevuld!"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button3" runat="server" Text="Probeer!" />
    
    </div>
    </form>
</body>
</html>
