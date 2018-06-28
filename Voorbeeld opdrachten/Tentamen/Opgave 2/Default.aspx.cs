using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Opgave_2
{
    public partial class Default : System.Web.UI.Page
    {

        public static int teller;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               teller = 0;
            }

            if (Session["counter"] != null)
            {
                teller = Convert.ToInt32(Session["counter"]);
            }

            Lbl_Teller.Text = teller.ToString();
        }

        protected void btn_verhoog_Click(object sender, EventArgs e)
        {
            teller++;
            Session["counter"] = teller;
        }
    }
}