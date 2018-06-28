using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Info_Examen
{
    public partial class sessions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_Session.Text = ReadSession("naam");
        }
        public string ReadSession(string name)
        {
            string output;
            try
            {
                output = (string)Session[name];
            }
            catch(Exception)
            {
                output = null;
            }
            return output;
        }
        public void AddSession(string name, string value)
        {
            Session[name] = value;
            Response.Redirect("sessions.aspx");
        }
        public void RemoveSession(string name)
        {
            Session[name] = null;
            Response.Redirect("sessions.aspx");
        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            AddSession("naam", txt_Naam.Text);
        }

        protected void btn_Remove_Click(object sender, EventArgs e)
        {
            RemoveSession("naam");
        }
    }
}