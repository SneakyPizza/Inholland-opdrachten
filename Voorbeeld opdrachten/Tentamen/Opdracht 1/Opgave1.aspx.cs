using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Opdracht_1
{
    public partial class Opgave1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_leeftijdcheck_Click(object sender, EventArgs e)
        {
            if (Txt_Leeftijd.Text != "")
            {
                int leeftijd = int.Parse(Txt_Leeftijd.Text);
                if (leeftijd < 18)
                {
                    Lbl_checkerror.Text = "Helaas, je mag nog niet stemmen";
                }
                else if (leeftijd >= 18)
                {
                    Lbl_checkerror.Text = "Je mag stemmen, gefeliciteerd";
                }
            }
            
        }
    }
}