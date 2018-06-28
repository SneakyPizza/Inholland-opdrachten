<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Opgave_2.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Lbl_Teller" runat="server"></asp:Label>
    <asp:Button ID="btn_verhoog" runat="server" Text="Verhoog" OnClick="btn_verhoog_Click" />
</asp:Content>
