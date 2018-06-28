using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tentamen
{
    public partial class Bestelling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["boek1"] != null && Request.Cookies["boek2"] != null && Request.Cookies["boek3"] != null)
            {
                lbl_Boek1.Text = Request.Cookies["boek1"].Value.ToString();
                lbl_Boek2.Text = Request.Cookies["boek2"].Value.ToString();
                lbl_Boek3.Text = Request.Cookies["boek3"].Value.ToString();
            }
            else
            {
                Response.Cookies["boek1"].Value = "0";
                Response.Cookies["boek2"].Value = "0";
                Response.Cookies["boek3"].Value = "0";
            }
        }

        protected void btn_Bestel_Editie1_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["boek1"] != null)
            {
                int aantal = int.Parse(Request.Cookies["boek1"].Value);
                aantal++;
                Response.Cookies["boek1"].Value = aantal.ToString();
                Response.Redirect("/bestelling.aspx");
            }
        }

        protected void btn_Bestel_Editie2_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["boek2"] != null)
            {
                int aantal = int.Parse(Request.Cookies["boek2"].Value);
                aantal++;
                Response.Cookies["boek2"].Value = aantal.ToString();
                Response.Redirect("/bestelling.aspx");
            }
        }

        protected void btn_Bestel_Editie3_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["boek3"] != null)
            {
                int aantal = int.Parse(Request.Cookies["boek3"].Value);
                aantal++;
                Response.Cookies["boek3"].Value = aantal.ToString();
                Response.Redirect("/bestelling.aspx");
            }
        }
    }
}