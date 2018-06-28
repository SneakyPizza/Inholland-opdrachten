<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kenteken.aspx.cs" Inherits="tentamen.Kenteken" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txt_Kenteken1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txt_Kenteken2" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cval1" runat="server" ControlToCompare="txt_Kenteken1" ControlToValidate="txt_Kenteken2" ErrorMessage="Niet gelijk!"></asp:CompareValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Kenteken2" ErrorMessage="Geen geldig kenteken!" ValidationExpression="^([1-9]{2})-([A-J|L-Z][A-Z])-([A-Z]{2})$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:TextBox ID="txt_Kenteken3" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cval2" runat="server" ControlToCompare="txt_Kenteken2" ControlToValidate="txt_Kenteken3" ErrorMessage="Niet gelijk!"></asp:CompareValidator>
    
    </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
