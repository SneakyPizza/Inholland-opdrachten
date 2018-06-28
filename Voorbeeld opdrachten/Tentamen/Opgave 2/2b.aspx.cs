using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Opgave_2
{
    public partial class _2b : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("counter=" + Application["counter"].ToString());
        }

        protected void btn_verhoog_Click(object sender, EventArgs e)
        {
            Global.test();
        }
    }
}