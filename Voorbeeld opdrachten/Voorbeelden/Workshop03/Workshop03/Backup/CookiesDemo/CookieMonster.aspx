<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookieMonster.aspx.cs" Inherits="CookiesDemo.CookieMonster" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wrede bok!</title>
    <script type="text/javascript">
        function getCookie(c_name)
        {
            var i, x, y, ARRcookies = document.cookie.split(";");
            for (i = 0; i < ARRcookies.length; i++)
            {
                x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
                y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
                x = x.replace(/^\s+|\s+$/g, "");
                if (x == c_name)
                {
                    return unescape(y);
                }
            }
        }

        function readcookie()
        {
            var fibreCookie = getCookie("MonsterCookie");
            if (fibreCookie != null)
            {
                document.getElementById('lblJSCVal').innerText = "MonsterCookie's Fibonacci Number is now: " + fibreCookie;
            }
            else
            {
                document.getElementById('lblJSCVal').innerText = "No MonsterCookie set locally...";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Fibonacci-klasse in losse DLL, antwoord in cookie naar client!</h3>
        <p>Van welk Fibonacci-getal wil je de bijbehorende waarde in de reeks berekenen?</p>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="Button1" runat="server" 
            Text="Bereken Fibonacci en Schrijf Resultaat naar Cookie" 
            onclick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="lblFeedback" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Lees cookie info van client via een roundtrip (serverside)" />
        <br />
        <br />
        <asp:Label ID="lblCookieValue" runat="server"></asp:Label>
        <br />
        <br />
        <input id="Button5" type="button" value="Lees cookie clientside only (JavaScript)" onclick="readcookie();"/>
        <br />
        <br />
        <asp:Label ID="lblJSCVal" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Verwijder Cookie van Client" />
    </div>
    </form>
</body>
</html>
