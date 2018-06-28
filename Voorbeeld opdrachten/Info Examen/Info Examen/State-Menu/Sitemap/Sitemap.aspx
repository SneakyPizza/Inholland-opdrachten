<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sitemap.aspx.cs" Inherits="Info_Examen.Sitemap.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" StartingNodeOffset="0" ShowStartingNode="false" />
        <br />
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:Menu>
    
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" ParentLevelsDisplayed="0">
        </asp:SiteMapPath>
        <br />
    
    </div>
    </form>
</body>
</html>
