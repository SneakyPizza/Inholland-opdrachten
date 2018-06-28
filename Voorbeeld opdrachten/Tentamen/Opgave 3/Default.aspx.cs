using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace Opgave_3
{
    public partial class Default : System.Web.UI.Page
    {
        //connectionstring
        private OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["DBStarwars"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //voertuigklassen
                OleDbCommand cmd = new OleDbCommand("SELECT Id, Klassenaam FROM vaartuigklassen", conn);

                //affiliaties
                OleDbCommand cmd1 = new OleDbCommand("SELECT Id, naam FROM facties", conn);

                //voertuigklassen
                try
                {
                    conn.Open();
                    Drop_vaartuigklasse.DataSource = cmd.ExecuteReader();
                    Drop_vaartuigklasse.DataTextField = "Klassenaam";
                    Drop_vaartuigklasse.DataValueField = "Id";
                    Drop_vaartuigklasse.DataBind();
                }
                catch (Exception exc)
                {
                    lblConnectionFeedback.Text = exc.Message;
                }
                finally
                {
                    conn.Close();
                }

                //affiliaties
                try
                {
                    conn.Open();
                    Drop_affiliatie.DataSource = cmd1.ExecuteReader();
                    Drop_affiliatie.DataTextField = "naam";
                    Drop_affiliatie.DataValueField = "Id";
                    Drop_affiliatie.DataBind();
                }
                catch (Exception exc)
                {
                    lblConnectionFeedback.Text = exc.Message;
                }
                finally
                {
                    conn.Close();
                }



            }
        }

        protected void btn_voegtoe_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand("INSERT INTO ruimtevaartuigen (naam, klasse, affiliatie, hyperdrive) VALUES (@naam, @klasse, @affiliatie, @hyperdrive)", conn);
            cmd.Parameters.AddWithValue("@naam", Txt_NaamRuimteVoertuig.Text);
            cmd.Parameters.AddWithValue("@klasse", Drop_vaartuigklasse.SelectedValue);
            cmd.Parameters.AddWithValue("@affiliatie", Drop_affiliatie.SelectedValue);
            cmd.Parameters.AddWithValue("@hyperdrive", Check_Hyperdrive.Checked);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception exc)
            {
                lblConnectionFeedback.Text = exc.Message;
            }
            finally
            {
                conn.Close();
            }

        }
    }
}