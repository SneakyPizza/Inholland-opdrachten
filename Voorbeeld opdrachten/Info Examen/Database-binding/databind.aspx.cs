using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Info_Examen.Database_binding
{
    public partial class databind : System.Web.UI.Page
    {
       public string[] lijst = new string[10];
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int i;
                for (i = 0; i < 10; i++)
                {
                    lijst[i] = i + "test";
                }
                try
                {
                    rbtn.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }
            }else
            {
                lbl_Selected_Item.DataBind();
            }
        }
    }
}