using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueryStringDemo
{
    public partial class Ontvanger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["usertxt1"]) && !string.IsNullOrEmpty(Request.QueryString["usertxt2"]))
            {
                inhoudje.InnerHtml = "Waarde van de QueryStrings die zijn doorgegeven zijn:<br />Usertxt1: "
                    + Request.QueryString["usertxt1"] + "<br />Usertxt2: " + Request.QueryString["usertxt2"];
            }
            else
            {
                Server.Transfer("Default.aspx");
            }
        }
    }
}