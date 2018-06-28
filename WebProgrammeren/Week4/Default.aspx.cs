using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

namespace Week4
{
    public partial class Default : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void btn_Conn_Click(object sender, EventArgs e)
        {
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath(@"\App_data") + @"\lesvacancesdejjlombard.accdb";

            OleDbCommand cmdcount = new OleDbCommand();
            //cmdcount.Connection = conn;
            //cmdcount.CommandText = "SELECT * FROM blacklisted COUNT(*)";
            

            OleDbCommand cmdjoin = new OleDbCommand();
            cmdjoin.Connection = conn;
            cmdjoin.CommandText = "SELECT * FROM spullen";
            
           
            try
            {
                conn.Open();
                lbl_Conn.Text += "<br />Connection is: " +
                    conn.State.ToString();

                OleDbDataReader readercount = cmdcount.ExecuteReader();
                readercount = cmdcount.ExecuteReader();

                OleDbDataReader readerjoin = cmdjoin.ExecuteReader();
                readerjoin = cmdjoin.ExecuteReader();


                readerjoin.Read();
                while (readerjoin.Read())
                {
                    lbl_Query1.Text = String.Format("{0}: {1}<br />\n",
                        readerjoin["Id"].ToString(), readerjoin["Omschrijving"].ToString());
                }

               /* readercount = cmdcount.ExecuteReader();
                cmdcount.CommandText = "SELECT * FROM blacklisted COUNT(*)";
                readercount.Read();

                while(readercount.Read())
                {
                    lbl_Query2.Text = String.Format("{0}<br />\n",
                        readercount["Id"].ToString());
                } */
            }
            catch (Exception exc)
            {
                lbl_Conn.Text = exc.Message;
            }
            finally
            {
                conn.Close();
                lbl_Conn.Text += "<br />Connection is: " +
                    conn.State.ToString();
            }
        }
    }
}