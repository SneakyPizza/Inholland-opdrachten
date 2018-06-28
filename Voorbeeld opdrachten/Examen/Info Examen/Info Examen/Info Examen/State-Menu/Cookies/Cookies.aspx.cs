using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Info_Examen
{
    public partial class Cookies : System.Web.UI.Page
    {
        
        //Functie om cookies uit te lezen!
        public string LeesCookie(string naam)
        {
            string output;
            try
            {
                output = Request.Cookies["koekje"][naam];
            }
            catch(Exception)
            {
                output = null;
            }
            return output;
        }
        //Functie om cookie aante maken!
        public void PlaatsCookie(string name, string value, int hours = 24)
        {
            HttpCookie koekje = new HttpCookie("koekje");
            DateTime now = DateTime.Now;
            koekje.Values.Add(name, value);
            koekje.Expires = now.AddHours(hours);
            Response.Cookies.Add(koekje);
            //response.redirect("paginanaam.aspx"); //zodat de cookie direct wordt weergeven!
        }


        //Functie om cookies te verwijderen!
        public void DeleteCookie(string name)
        {
            HttpCookie koekje = new HttpCookie("koekje");
            DateTime now = DateTime.Now;
            koekje.Values.Add(name, null);
            koekje.Expires = now.AddYears(-1);
            Response.Cookies.Add(koekje);
            //response.redirect("paginanaam.aspx"); //zodat de cookie direct wordt weergeven!
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (LeesCookie("naam") != null)
            {
                lbl_From_Cookie.Text = Request.Cookies["koekje"]["naam"];
            }
        }

        protected void btn_Create_Click(object sender, EventArgs e)
        {
            PlaatsCookie("naam", txt_Naam.Text);
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            DeleteCookie("naam");
        }
    }
}