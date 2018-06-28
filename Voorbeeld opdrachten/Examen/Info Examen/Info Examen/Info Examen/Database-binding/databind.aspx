<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="databind.aspx.cs" Inherits="Info_Examen.Database_binding.databind" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButtonList DataSource="<%# lijst %>" ID="rbtn" runat="server" AutoPostBack="True">
            
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="lbl_Selected_Item" runat="server" Text="<%# rbtn.SelectedValue %>"></asp:Label>
    </div>
    </form>
</body>
</html>
