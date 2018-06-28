<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 401px">
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <br />
                <br />
                <asp:View ID="View1" runat="server">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">HyperLink</asp:HyperLink>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Button ID="btn_PostBack" runat="server" OnClick="btn_PostBack_Click" Text="Post Back URL" />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Button ID="btn_Query" runat="server" OnClick="btn_Query_Click" Text="Query String" />
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <asp:Button ID="btn_CrossPage" runat="server" Text="Cross Page Posting" />
                </asp:View>
                <asp:View ID="View5" runat="server">
                    <asp:Button ID="btn_SessionState" runat="server" Text="Session State" />
                </asp:View>
                <br />
                <br />
            </asp:MultiView>
        </div>
        <p>
            <asp:Label ID="lbl1" runat="server" Text="Actieve Gebruikers: "></asp:Label>
            <asp:Label ID="lbl_ActiveUsers" runat="server"></asp:Label>
        </p>
        <p>
            <asp:DropDownList ID="ddl_Views" runat="server" AutoPostBack="True">
                <asp:ListItem Value="0">View1</asp:ListItem>
                <asp:ListItem Value="1">View2</asp:ListItem>
                <asp:ListItem Value="2">View3</asp:ListItem>
                <asp:ListItem Value="3">View4</asp:ListItem>
            </asp:DropDownList>
        </p>
        <asp:TextBox ID="tb_Value" runat="server"></asp:TextBox>
    </form>
</body>
</html>
