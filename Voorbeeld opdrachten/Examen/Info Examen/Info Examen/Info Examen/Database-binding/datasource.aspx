<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datasource.aspx.cs" Inherits="Info_Examen.Database_binding.datasource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="dsource" runat="server" DataFile="~/App_Data/Programmeervakken.mdb"></asp:AccessDataSource>
    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="dsource">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
