using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormExcercise
{
    public partial class Form1 : Form
    {
       const double PRICE_CARD = 12;
        const double PRICE_RENT_DAY = 55;

        public Form1()
        {
            InitializeComponent();
        }

        //Calculate BTW
        private void calcBTW_btn_Click(object sender, EventArgs e)
        {
            string input;
            double parsedInput;
            double btw;
            double price;

            input = this.Inputfield.Text;
            parsedInput = double.Parse(input);
            this.inputPrice_lbl.Text = parsedInput.ToString();

            btw = Math.Round(parsedInput / 100 * 19);
            this.btw_lbl.Text = btw.ToString();

            price = Math.Round(parsedInput + btw);
            this.totalPrice_lbl.Text = price.ToString();
        }

        //Calculate Highestnum, Average and Diffrence between highestnum and the averagenum
        private void CalcAverage_btn_Click(object sender, EventArgs e)
        {
            string input1;
            string input2;
            double num1;
            double num2;
            
            input1 = this.Num1_txtb.Text;
            input2 = this.Num2_textb.Text;

            num1 = double.Parse(input1);
            num2 = double.Parse(input2);

            this.HighestNum_lbl.Text = Math.Max(num1, num2).ToString();
            this.Average_lbl.Text = ((num1 + num2) / 2).ToString();
            this.Diffrence_lbl.Text = (double.Parse(this.HighestNum_lbl.Text) - double.Parse(this.Average_lbl.Text)).ToString();
        }

        //Get the right price at the right age
        private void CalcAgePrice_btn_Click(object sender, EventArgs e)
        {
            double age = Convert.ToDouble(double.Parse(this.Age_txtb.Text));

            if(age >= 55 || age <= 5)
            {
                this.AgePrice_lbl.Text = "gratis";
            } else if(age >= 6 && age < 13) {
                this.AgePrice_lbl.Text = (Price_card / 2).ToString();
            } else {
                this.AgePrice_lbl.Text = Price_card.ToString();
            }
        }
        public double Price_card
        {
            get { return PRICE_CARD; }   
        }

        //Calc rent value
        private void CalcRent_btn_Click(object sender, EventArgs e)
        {
            double days = double.Parse(this.DaysHired_txtb.Text);
            double km = double.Parse(this.KmDriven_txtb.Text);
            double lit = double.Parse(this.Litres_txtb.Text);

            double price = (days * PRICE_RENT_DAY);

            if(km >= 101)
            {
                km -= 100;
                km = (km * 0.25f);
            } else
            {
                km = 0;
            }

            if (GasCost_cb.Checked)
            {
                lit = (lit * 2.20f);
                price = price + lit + km;
                this.RentValue_lbl.Text = price.ToString();
            } else
            {
                price = price + km;
                this.RentValue_lbl.Text = price.ToString();
            }
        }

        private void LanguageCheck_btn_Click(object sender, EventArgs e)
        {
            bool monoglot;

            if(this.English_cb.Checked && this.Spanish_cb.Checked)
            {
                monoglot = false; 
            } else {
                monoglot = true;
            }

            if(monoglot == true && this.English_cb.Checked)
            {
                this.Output_Lang_tb.Text = "Yes!";
            } else if(monoglot == true && this.Spanish_cb.Checked)
            {
                this.Output_Lang_tb.Text = "Si!";
            } else
            {
                this.Output_Lang_tb.Text = "Nao!";
            }
 
                
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
