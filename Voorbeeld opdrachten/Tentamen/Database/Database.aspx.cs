using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace Database
{
    public partial class Database : System.Web.UI.Page
    {
        private OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["DBStarwars"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                OleDbCommand cmd = new OleDbCommand("SELECT Id, Klassenaam FROM vaartuigklassen", conn);

                try
                {

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
}