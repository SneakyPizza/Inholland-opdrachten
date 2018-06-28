using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace Info_Examen.Database_binding
{
    public partial class database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection conn = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            conn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath(@"\App_Data") + @"\Duckstad.mdb";
            //conn.ConnectionString = ConfigurationManager.ConnectionStrings["Duckstad"].ToString();
            cmd.Connection = conn;
            if (txt_Naam.Text == "")
            {
                cmd.CommandText = "SELECT naam FROM Inwoners";
            }else
            {
                cmd.CommandText = "SELECT naam FROM Inwoners WHERE id = ?";
                OleDbParameter param = new OleDbParameter();
                param.Value = txt_Naam.Text;
                cmd.Parameters.Add(param);
            }
            try
            {
                conn.Open();
                OleDbDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    lbl_Output.Text += rdr["naam"].ToString() + "<br />";
                }
            }
            catch (Exception ex)
            {
                lbl_Output.Text = "Database verbinding mislukt! <br />" + ex;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btn_Go_Click(object sender, EventArgs e)
        {

        }
    }
}