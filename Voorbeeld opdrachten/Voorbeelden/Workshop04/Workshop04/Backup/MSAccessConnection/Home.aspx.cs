using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Vergeet in je code-behind
// niet mee te nemen:
using System.Data.OleDb;


namespace MSAccessConnection
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnectionTest_Click(object sender, EventArgs e)
        {
            // Connectionstring in code aanmaken:
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + 
                Server.MapPath(@"\App_data") + @"\Vacaturebank.mdb";
            

            lblConnectionFeedback.Text = "";
            try
            {
                conn.Open();
                lblConnectionFeedback.Text += "Connection is: " +
                    conn.State.ToString();
            }
            catch (Exception exc)
            {
                lblConnectionFeedback.Text = exc.Message;
            }
            finally
            {
                conn.Close();
                lblConnectionFeedback.Text += "<br />Connection is: " +
                    conn.State.ToString();
            }
        }
    }
}