using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IMDb_Scraper;

namespace CrossPagePostingDemo
{
    public partial class CrossPageDeferred : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // De vorige pagina wordt in het geheugen van de server helemaal
            // opnieuw aangemaakt all the way tot aan het PreRender event (je
            // hoeft hem immers niet te renderen).
            // Om maximale informatie uit de vorige pagina te halen, casten we
            // hier de PreviousPage naar een object van de reference type 
            // 'CrossPageMain', de klasse van die vorige pagina. Dit kun je
            // uiteraard alleen doen als je zeker weet dat je van die pagina
            // af komt!
            CrossPageMain vorige = PreviousPage as CrossPageMain;
            
            if (PreviousPage != null)
            {
                // Waarden opvragen van controls bij cross page posting:
                TextBox movtitle = PreviousPage.FindControl("txtMovieTitle") as TextBox;
                //TextBox movtitle = (TextBox)PreviousPage.FindControl("txtMovieTitle");
                TextBox movrating = (TextBox)PreviousPage.FindControl("txtRating");

                if ((movtitle != null) && (movrating != null))
                {
                    // Both fields have to be filled out for this to work...
                    string mt = movtitle.Text.Trim();
                    string mr = movrating.Text.Trim();
                    // Use IMDb API call to get required movie info for comparison:
                    IMDb imdb = new IMDb(mt, true);
                    filmzooi.InnerHtml = "Gezocht met zoekterm \"" + mt + "\":<br />" +
                        "Gevonden film op IMDb was ID <a href=\"" + imdb.ImdbURL +
                        "\" title=\"Ga der nah toe dan!\">" + imdb.Id + "</a>:<br />" + 
                        "Originele titel luidt: " + imdb.Title + " (" + imdb.Year + ")<br />" +
                        "Rating is: " + imdb.Rating + " met " + imdb.Votes + " stemmen<br />" +
                        "Jij gaf de film een: " + mr + ".<br />";
                }
                else
                {
                    filmzooi.InnerText = "Niet alle velden waren ingevuld. Klik op vorige en probeer opnieuw...";
                }
            }
            else
            {
                Server.Transfer("CrossPageMain.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrossPageMain.aspx");
        }
    }
}