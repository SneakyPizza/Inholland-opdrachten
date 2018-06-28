using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Confirm_Click(object sender, EventArgs e)
        {
            string name = this.tb_name.Text;
            string student;
            string age = ddl_Age.SelectedItem.Text;

            if (cb_Student.Checked == true)
            {
                student = "is een student";
            } else {
                student = "is geen student";
            }

            lbl_NameOutput.Text = name;
            lbl_StudentOutput.Text = student;
            lbl_AgeOutput.Text = age;
            lbl_ConfirmOutput.Text = "Persoon : " + name + " " + age + " is aangemeld";
        }
    }
}