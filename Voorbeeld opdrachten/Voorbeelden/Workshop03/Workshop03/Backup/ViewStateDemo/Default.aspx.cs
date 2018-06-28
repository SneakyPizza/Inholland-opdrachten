using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewStateDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // On loading the page the first time (not on a postback when
                // this form is submitted), make all textboxes ReadOnly.
                // Once set, and ViewState is enabled for the control (true 
                // by default), we expect this setting to be carried over during
                // page loads. This indeed happens. It does not happen when
                // ViewState is disabled for an individual control.
                TextBox1.ReadOnly = true;
                TextBox2.ReadOnly = true;
                TextBox3.ReadOnly = true;

                // Besides the above, Page.ViewState dictionary can also be
                // used to store custom key-value pairs in string form:
                this.ViewState["alseerstebewaardeik"] = "ReadOnly van TextBox1-2-3 op true gezet!";
                this.ViewState.Add("alstweedebewaardeik", "Misschien zijn dit voldoende voorbeelden!");
            }
            else
            {
                // This would be a good example of a situation in which
                // LINQ-to-Objects API is the preferred way of doing things.
                // Always remember:
                // - Know your options
                // - Be pragmatic about solving your problem
                // - Choose the most appropriate tool for solving your problem
                // - Keep things readable & understandable
                // Let's do things the old-fashioned way for now:
                System.Collections.IEnumerator keyEnum = ViewState.Keys.GetEnumerator();
                System.Collections.IEnumerator valEnum = ViewState.Values.GetEnumerator();

                lblPageViewState.Text = string.Empty;
                while (keyEnum.MoveNext() && valEnum.MoveNext())
                {
                    lblPageViewState.Text += "Key: " + keyEnum.Current + " value: " + ((StateItem)valEnum.Current).Value + "<br />";
                }
            }
        }
    }
}