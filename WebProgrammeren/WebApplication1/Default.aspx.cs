using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        private static string _btn_name;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.SetActiveView(View1);
            }

            int currentview = MultiView1.ActiveViewIndex;
            int LiveSessionsCount = (int)Application["LiveSessionsCount"];
            int ddl_value = Convert.ToInt32(ddl_Views.SelectedValue);


            lbl_ActiveUsers.Text = LiveSessionsCount.ToString();

            HttpCookie aCookie = new HttpCookie("cookie");
            aCookie.Value = currentview.ToString();
            aCookie.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(aCookie);

            switch (ddl_value)
            {
                case 0:
                    MultiView1.SetActiveView(View1);
                    break;
                case 1:
                    MultiView1.SetActiveView(View2);
                    break;
                case 2:
                    MultiView1.SetActiveView(View3);
                    break;
                case 3:
                    MultiView1.SetActiveView(View4);
                    break;
                case 4:
                    MultiView1.SetActiveView(View5);
                    break;
            }
        }

        protected void btn_PostBack_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_Query_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx?!btn=" + btn_Query.Text + "query= " + tb_Value.Text);
            _btn_name = btn_Query.Text;    
        }

        public static string BTN_Name
        {
            get { return _btn_name; }
        }
    }

}