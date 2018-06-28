using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace MSAccessParameters
{
    public partial class Opdracht3 : System.Web.UI.Page
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
                cmd.CommandText = "SELECT Baan, Uren, Regio FROM Vacacures WHERE Salaris >= ?";
                OleDbParameter param = new OleDbParameter();
                param.Value = txtFilter.Text;
                cmd.Parameters.Add(param);
            }

            lblFeedback.Text = "";

            try
            {
                conn.Open();
                OleDbDataReader reader = cmd.ExecuteReader();
                TableRow row;
                TableCell cell;
                while (reader.Read())
                {
                    row = new TableRow();
                    for (int i = 0; i < reader.FieldCount; i++)
                    {
                        cell = new TableCell();
                        cell.Text = reader[i].ToString();
                        row.Cells.Add(cell);
                    }
                    tblNeatResults.Rows.Add(row);
                }
            }
            catch (Exception exc)
            {
                lblFeedback.Text = exc.Message;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}