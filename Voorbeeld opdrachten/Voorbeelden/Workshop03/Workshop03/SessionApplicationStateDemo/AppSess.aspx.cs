using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionApplicationStateDemo
{
    public partial class AppSess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AantalPageLoads"] != null)
            {
                Session["AantalPageLoads"] = (int)Session["AantalPageLoads"] + 1;
                lblAantalPageloads.Text = Session["AantalPageLoads"].ToString();
            }

            if (Application["AantalGebruikers"] != null)
            {
                lblAantalGebruikers.Text = Application["AantalGebruikers"].ToString();
            }
        }
    }
}