<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MSAccessSQLInjection.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            Geef je kenmerk (identificatie, onderwijseenheidsnummer):
            <asp:TextBox ID="txtInvoer" runat="server" Width="541px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                onclick="btnSubmit_Click" />
            <br />
            <br />
            <asp:GridView ID="gvwCijferZooi" runat="server" ShowHeader="False">
            </asp:GridView>
            <asp:Table ID="tblChallenge" runat="server">
            </asp:Table>
            
            <!--
                 Hieronder een aantal controls die ik heb gebruikt op de 
                 aanvankelijk nog lege pagina om te checken of de
                 database bereikbaar was. Het lijkt heel wat, maar alles
                 hieronder is auto-generated nadat ik de controls op de 
                 pagina had gesleept en de datasource en properties had
                 ingesteld. Ze zijn er dus voor eventuele testdoeleinden!
            -->

            <!--
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ID" DataSourceID="AccessDataSource1">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
                    <asp:BoundField DataField="Studienummer" HeaderText="Studienummer" 
                        SortExpression="Studienummer" />
                    <asp:BoundField DataField="Onderwijseenheid" HeaderText="Onderwijseenheid" 
                        SortExpression="Onderwijseenheid" />
                    <asp:BoundField DataField="Cijfer" HeaderText="Cijfer" 
                        SortExpression="Cijfer" />
                </Columns>
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/Cijfers.mdb" 
                SelectCommand="SELECT * FROM [Cijfers] WHERE ([Onderwijseenheid] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtInvoer" Name="Onderwijseenheid" 
                        PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
            -->
        </p>
    </div>
    </form>
</body>
</html>
