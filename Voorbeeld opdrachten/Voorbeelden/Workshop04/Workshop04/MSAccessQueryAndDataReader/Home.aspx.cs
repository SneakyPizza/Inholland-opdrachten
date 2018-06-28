using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace MSAccessQueryAndDataReader
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["Vacaturebank"].ToString();

            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = conn;
            if (string.IsNullOrEmpty(txtFilter.Text))
            {
                cmd.CommandText = "SELECT * FROM Vacacures";
            }
            else
            {
                // Mijn eigen voorbeeld in de sheets:
                //cmd.CommandText = String.Format("SELECT * FROM Vacacures WHERE Baan LIKE '%{0}%'", txtFilter.Text);
                // Opdracht 2 tijdens de les:
                cmd.CommandText = String.Format("SELECT Baan, Uren, Regio FROM Vacacures WHERE Salaris >= {0}", txtFilter.Text);
            }

            try
            {
                conn.Open();
                lblData.Text = "";
                OleDbDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    // Mijn eigen voorbeeld in de sheets:
                    //lblData.Text += String.Format("{0}: {1}<br />\n", reader["Id"].ToString(), reader["Baan"].ToString());
                    // Opdracht 2 tijdens de les:
                    lblData.Text += String.Format("{0} voor {1} uur in de regio {2}<br />\n", reader["Baan"].ToString(), reader["Uren"].ToString(), reader["Regio"].ToString());
                }
            }
            catch (Exception exc)
            {
                lblData.Text = exc.Message;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}