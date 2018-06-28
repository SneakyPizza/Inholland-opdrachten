using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Info_Examen.Viewstate
{
    public partial class second : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                TextBox naam = (TextBox)PreviousPage.FindControl("txt_Naam");
                TextBox plaats = (TextBox)PreviousPage.FindControl("txt_Plaats");
                if (naam != null && plaats != null)
                {
                    lbl_Name.Text = naam.Text;
                    lbl_Place.Text = plaats.Text;
                    lbl_Prev_Page.Text = PreviousPage.Header.Title;
                }
            }
        }
    }
}