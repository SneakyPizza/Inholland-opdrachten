<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppSess.aspx.cs" Inherits="SessionApplicationStateDemo.AppSess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hé Loser!</title>
    <script type="text/javascript">
        function clientvalidate(ctl, args) {
            if (args.Value === "") {
                args.IsValid = false;
            } else {
                args.IsValid = true;
            }
        }
        
        function countDown(secs, elem) {
            var element = document.getElementById(elem);
            element.innerHTML = "Please wait for " + secs + " seconds";
            if (secs < 1) {
                clearTimeout(timer);
                element.innerHTML = '<h3>Countdown Complete!</h3>';
            }
            secs--;
            var timer = setTimeout('countDown(' + secs + ',"' + elem + '")', 1000);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="status"></div>
    <script type="text/javascript">countDown(60, "status");</script>
    <div>
        <p>
            Aantal sessies geregistreerd sinds de Applicatie is gestart (Application_Start()):
            <asp:Label ID="lblAantalGebruikers" runat="server" Text=""></asp:Label>
        </p>
        <p>
            Aantal pageloads geregistreerd sinds de Sessie is gestart (Session_Start()):
            <asp:Label ID="lblAantalPageloads" runat="server" Text=""></asp:Label>
        </p>
        <p>
            In het kader van deelopgave 12 van deze week: een required field
            validator kun je ook maken met een andere validator door de eigenschap
            <br />
            'ValidateEmptyText' op True te zetten en zelf je validatie functie(s)
            te schrijven. Wat mij betreft is alleen serverside validatie voldoende!
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ErrorMessage="Dikke vette error" ValidateEmptyText="True" 
                ClientValidationFunction="clientvalidate" ControlToValidate="TextBox1">Wel iets invullen he?</asp:CustomValidator>
        </p>
    </div>
    </form>
</body>
</html>
