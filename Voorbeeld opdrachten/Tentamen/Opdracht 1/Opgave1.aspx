<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Opgave1.aspx.cs" Inherits="Opdracht_1.Opgave1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <b><u>Voer je leeftijd in:</u></b>
    <asp:TextBox ID="Txt_Leeftijd" runat="server"></asp:TextBox><br />
    <asp:RequiredFieldValidator ID="ReqValidatorLeeftijd" runat="server" ControlToValidate="Txt_Leeftijd" EnableClientScript="false" 
        ValidationGroup="check" ErrorMessage="Het veld leeftijd is niet ingevuld, vul dit veld in." ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:RangeValidator ID="RangeValidatorLeeftijd" runat="server" MinimumValue="0" MaximumValue="130" ForeColor="Red"
            ControlToValidate="Txt_Leeftijd" EnableClientScript="false" Type="Integer" ValidationGroup="check" 
            ErrorMessage="Leeftijd mag niet lager dan 0 of hoger dan 130 zijn"></asp:RangeValidator>
    <br />

        <asp:Button ID="Btn_leeftijdcheck" runat="server" ValidationGroup="check" Text="Leeftijd check" OnClick="Btn_leeftijdcheck_Click" /><br />
        <asp:Label ID="Lbl_checkerror" runat="server"></asp:Label>
    </center>
</asp:Content>
