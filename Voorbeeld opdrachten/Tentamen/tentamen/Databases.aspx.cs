using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace tentamen
{
    public partial class Databases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                OleDbConnection conn = new OleDbConnection();
                OleDbCommand cmd = new OleDbCommand();
                conn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath(@"\App_data") + @"\JipEnJanneke.mdb";
                cmd.Connection = conn;
                cmd.CommandText = string.Format("SELECT * FROM boeken WHERE id = ?");
                OleDbParameter param = new OleDbParameter();
                
                try
                {
                    conn.Open();
                    OleDbDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        lbl_ISBN.Text = rdr["ISBN"].ToString();
                        lbl_Jaar.Text = rdr["Jaartal"].ToString();
                        lbl_Prijs.Text = rdr["Prijs"].ToString();
                    }
                }catch(Exception)
                {
                    Response.Write("DATABASE CONNECTIE FAILED");
                }finally
                {
                    conn.Close();
                }
            }
        }
    }
}