<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="databind 2.aspx.cs" Inherits="Info_Examen.Database_binding.databind_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" ConflictDetection="CompareAllValues" DataFile="~/App_Data/Programmeervakken.mdb" DeleteCommand="DELETE FROM [Docenten] WHERE [Id] = ? AND (([Naam] = ?) OR ([Naam] IS NULL AND ? IS NULL)) AND (([Woonplaats] = ?) OR ([Woonplaats] IS NULL AND ? IS NULL)) AND (([Geboortejaar] = ?) OR ([Geboortejaar] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Docenten] ([Id], [Naam], [Woonplaats], [Geboortejaar]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Docenten]" UpdateCommand="UPDATE [Docenten] SET [Naam] = ?, [Woonplaats] = ?, [Geboortejaar] = ? WHERE [Id] = ? AND (([Naam] = ?) OR ([Naam] IS NULL AND ? IS NULL)) AND (([Woonplaats] = ?) OR ([Woonplaats] IS NULL AND ? IS NULL)) AND (([Geboortejaar] = ?) OR ([Geboortejaar] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Naam" Type="String" />
                <asp:Parameter Name="original_Naam" Type="String" />
                <asp:Parameter Name="original_Woonplaats" Type="String" />
                <asp:Parameter Name="original_Woonplaats" Type="String" />
                <asp:Parameter Name="original_Geboortejaar" Type="Int32" />
                <asp:Parameter Name="original_Geboortejaar" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Naam" Type="String" />
                <asp:Parameter Name="Woonplaats" Type="String" />
                <asp:Parameter Name="Geboortejaar" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Naam" Type="String" />
                <asp:Parameter Name="Woonplaats" Type="String" />
                <asp:Parameter Name="Geboortejaar" Type="Int32" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Naam" Type="String" />
                <asp:Parameter Name="original_Naam" Type="String" />
                <asp:Parameter Name="original_Woonplaats" Type="String" />
                <asp:Parameter Name="original_Woonplaats" Type="String" />
                <asp:Parameter Name="original_Geboortejaar" Type="Int32" />
                <asp:Parameter Name="original_Geboortejaar" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="AccessDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
                <asp:BoundField DataField="Woonplaats" HeaderText="Woonplaats" SortExpression="Woonplaats" />
                <asp:BoundField DataField="Geboortejaar" HeaderText="Geboortejaar" SortExpression="Geboortejaar" />
                <asp:CommandField ButtonType="Button" HeaderText="Selecteer" ShowHeader="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="AccessDataSource1">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Naam:
                <asp:TextBox ID="NaamTextBox" runat="server" Text='<%# Bind("Naam") %>' />
                <br />
                Woonplaats:
                <asp:TextBox ID="WoonplaatsTextBox" runat="server" Text='<%# Bind("Woonplaats") %>' />
                <br />
                Geboortejaar:
                <asp:TextBox ID="GeboortejaarTextBox" runat="server" Text='<%# Bind("Geboortejaar") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Naam:
                <asp:TextBox ID="NaamTextBox" runat="server" Text='<%# Bind("Naam") %>' />
                <br />
                Woonplaats:
                <asp:TextBox ID="WoonplaatsTextBox" runat="server" Text='<%# Bind("Woonplaats") %>' />
                <br />
                Geboortejaar:
                <asp:TextBox ID="GeboortejaarTextBox" runat="server" Text='<%# Bind("Geboortejaar") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Naam:
                <asp:Label ID="NaamLabel" runat="server" Text='<%# Bind("Naam") %>' />
                <br />
                Woonplaats:
                <asp:Label ID="WoonplaatsLabel" runat="server" Text='<%# Bind("Woonplaats") %>' />
                <br />
                Geboortejaar:
                <asp:Label ID="GeboortejaarLabel" runat="server" Text='<%# Bind("Geboortejaar") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
