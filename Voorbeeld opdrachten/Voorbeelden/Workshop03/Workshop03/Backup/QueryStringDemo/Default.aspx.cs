using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueryStringDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                // Deze code had in dit geval ook onder de event handler van
                // de knop gemogen uiteraard!
                if (!string.IsNullOrEmpty(TextBox4.Text) && !string.IsNullOrEmpty(TextBox1.Text)) 
                {
                    string urlstring1 = TextBox4.Text.Trim();
                    urlstring1 = urlstring1.Replace(' ', '_');

                    string urlstring2 = TextBox1.Text.Trim();
                    urlstring2 = urlstring2.Replace(' ', '_');

                    Response.Redirect("Ontvanger.aspx?usertxt1=" + urlstring1 + "&usertxt2=" + urlstring2);
                }
                else
                {
                    Label1.Text = "BraboError: GetMiljaer Zulle, ge kon beter wa ingevul hedde, hei!";
                }
            }
        }
    }
}