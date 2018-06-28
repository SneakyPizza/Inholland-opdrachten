using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Gebruik de Object Linking and Embedding - Database API voor Access:
using System.Data.OleDb;
// Eenduidige toegang tot Web.config via de ConfigurationManager class:
using System.Configuration;

namespace MSAccessSQLInjection
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //=================================================================

            // Manier 1: de SQL injectie gevoelige manier...
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["CijfersDB"].ToString();

            //=================================================================

            // Eerste deel
            string query = "SELECT [Naam], [Studienummer], [Onderwijseenheid], [Cijfer] FROM [Cijfers] WHERE [ID] = " + txtInvoer.Text;

            // Tweede deel
            //string query = "SELECT * FROM [Cijfers] WHERE [Onderwijseenheid] = '" + txtInvoer.Text + "'";

            // Derde deel
            //string query = "SELECT [Cijfer] FROM [Cijfers] WHERE [Onderwijseenheid] = '" + txtInvoer.Text + "'";

            // Altijd nodig voor onderdelen van manier 1:
            OleDbCommand cmd = new OleDbCommand(query, conn);

            //=================================================================

            // Manier 2: de SQL injectie bestendige manier...
            // Vierde deel
            //OleDbCommand cmd = new OleDbCommand();
            //cmd.CommandText = "SELECT [Cijfer] FROM [Cijfers] WHERE [Onderwijseenheid] = ?";
            //OleDbParameter param = new OleDbParameter();
            //// onnodig in het geval van MS Access, wel nodig bij SQL Server:
            ////param.ParameterName = @"nuttelozestring";
            //param.Value = txtInvoer.Text;
            //cmd.Parameters.Add(param);
            //cmd.Connection = conn;

            // Waarom werken parameters?
            // Alles wat in een parameter staat wordt door de DBMS (Access
            // in dit geval) in behandeling genomen als field data en
            // niet als onderdeel van de SQL statement zelf. Dat
            // betekent dat dingen als typesafety-checks niet alleen aan de 
            // heel flexibele string-zijde in C#, maar ook aan de veel
            // stringentere DBMS-zijde actief zijn. Er 
            // wordt nu bijv. door de DBMS zelf gekeken of de invoer wel
            // een Int, VarChar van bep. lengte, oid is. Ook spelen nog een
            // aantal andere DBMS faciliteiten een rol. Hierdoor wordt
            // SQL injectie in het al moeilijk te injecteren Access
            // (tot vooralsnog?) geheel onmogelijk gemaakt!

            //=================================================================

            // Challenge query:
            //OleDbCommand cmd = new OleDbCommand();
            //cmd.CommandText = "SELECT [Naam], [Studienummer], [Cijfer] FROM [Cijfers] WHERE [Onderwijseenheid] = ?";
            //cmd.Parameters.Add(new OleDbParameter("@blaat", txtInvoer.Text));
            //cmd.Connection = conn;

            //=================================================================

            using (conn)
            {
                conn.Open();

                OleDbDataReader rdr = cmd.ExecuteReader();

                using (rdr)
                {
                    gvwCijferZooi.DataSource = rdr;
                    gvwCijferZooi.DataBind();
                    
                    // Challenge code
                    //TableRow row;
                    //TableCell cell;
                    //while (rdr.Read())
                    //{
                    //    row = new TableRow();
                    //    for (int i = 0; i < rdr.FieldCount; i++)
                    //    {
                    //        cell = new TableCell();
                    //        cell.Text = rdr[i].ToString();
                    //        row.Cells.Add(cell);
                    //    }
                    //    tblChallenge.Rows.Add(row);
                    //}
                    
                }
                // Na dit blok wordt automatisch rdr.Dispose() aangeroepen
                // op de OleDbDataReader rdr. Deze wordt hier dus gesloten...
            }
            // Na dit buitenste using blok zal van 'conn' de Dispose() methode
            // worden aangeroepen, wat vergelijkbaar is met de Close() methode.
            // Hierdoor hoeven we niet met de hand te '.Close()'-en!
        }
    }
}

/*
Volgorde Demo:
==============

// Eerste deel
11
11 GROUP BY ID
11 GROUP BY ID, Naam
11 GROUP BY ID, Naam, Studienummer
11 GROUP BY ID, Naam, Studienummer, Onderwijseenheid
11 GROUP BY ID, Naam, Studienummer, Onderwijseenheid, Cijfer

// Tweede deel
OE-2
OE-2' OR '1'='1

// Derde deel
OE-2
OE-2' OR '1'='1
OE-2' UNION SELECT Studienummer FROM Cijfers

// Vierde deel
OE-2
OE-2 GROUP BY ID
OE-2' OR '1'='1
OE-2' UNION SELECT Studienummer FROM Cijfers
*/