<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="second.aspx.cs" Inherits="Info_Examen.Viewstate.second" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
    
        Je naam is
        <asp:Label ID="lbl_Name" runat="server"></asp:Label>
&nbsp;en je komt uit
        <asp:Label ID="lbl_Place" runat="server"></asp:Label>
        . De vorige pagina die je bezocht is:
        <asp:Label ID="lbl_Prev_Page" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
