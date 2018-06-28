<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Info_Examen.Tests.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 262px;
            height: 193px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="float: left; width: 300px;" class="boek1">
            <img alt="" class="auto-style1" src="boek1.jpg" />
            <br />
            <asp:Button ID="btn_Bestel_Editie1" runat="server" OnClick="btn_Bestel_Editie1_Click" Text="Bestellen!" />
        </div>
        <div style="float: left; width: 300px;" class="boek2">
        <img alt=""  class="auto-style1" src="boek2.jpg" />
            <br />
            <asp:Button ID="btn_Bestel_Editie2" runat="server" Text="Bestellen!" OnClick="btn_Bestel_Editie2_Click" />
        </div>
        <div class="boek3" style="float: left; width: 300px;">
        <img alt="" class="auto-style1" src="boek3.jpg" />
            <br />
            <asp:Button ID="btn_Bestel_Editie3" runat="server" Text="Bestellen!" OnClick="btn_Bestel_Editie3_Click" />
        </div>
    
    </div>
    </form>
    Boek1: <asp:Label ID="lbl_Boek1" runat="server"></asp:Label><br />
    Boek2: <asp:Label ID="lbl_Boek2" runat="server"></asp:Label><br />
    Boek3: <asp:Label ID="lbl_Boek3" runat="server"></asp:Label><br />
    </body>
</html>
