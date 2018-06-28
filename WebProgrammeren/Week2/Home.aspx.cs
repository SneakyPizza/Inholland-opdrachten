using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week2
{
    public partial class Home : System.Web.UI.Page
    {
        private string _name;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Confirm_Click(object sender, EventArgs e)
        {
            _name = tb_Firstname.Text;
            string surname = tb_Surname.Text;
            string assignname;
            double age = Convert.ToDouble(tb_Age.Text);

            if (val_Gender.IsValid)
            {
                if (rbtnl_Gender.ID == "0")
                {
                    assignname = "Mijnheer ";
                } else if(rbtnl_Gender.ID == "0")
                {
                    assignname = "Mevrouw ";
                } else
                {
                    assignname = "Xe ";
                }
            }

                if (age <= 18)
                {
                val_Age.IsValid == true;
                }


           

            //Firstname is valid
            if(val_name.IsValid)
            {
                lbl_Welcome.Text = ("welkom " + _name);
            } else if (val_name.IsValid && val_Surname.IsValid) {
                lbl_Welcome.Text = ("Welkom mevrouw of mijnheer " + surname);
            } else {

            }

            
        }
        
        public string OutputName()
        {
            return _name;
        }
    }
}