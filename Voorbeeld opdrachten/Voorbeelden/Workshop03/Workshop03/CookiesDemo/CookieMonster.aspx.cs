using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// This one is needed for processing SuperMaths' results...
using System.Numerics;
// Here it is then: just copy the DLL into the project map in Explorer, in SLN
// explorer, RMB on 'References' and choose 'Add Reference...'. Then under
// 'Browse' tab, select 'SuperMaths.dll' and click OK. Then add this next
// using statement to add the ability for using the SuperMaths class to your
// current namespace...
using SuperMaths;


namespace CookiesDemo
{
    public partial class CookieMonster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MyFibonacci myfib = new MyFibonacci();

            int fibIdx;
            bool isFibIdxReadSuccess = int.TryParse(TextBox1.Text, out fibIdx);
            if (isFibIdxReadSuccess)
            {
                BigInteger bi = myfib.ComputeFibonacciIterative(fibIdx);

                // If the cookie already exists on the client side,
                // this code just overwrites it, if it doesn't exist, it
                // will create it:
                HttpCookie fibreCookie = new HttpCookie("MonsterCookie");
                //fibreCookie["FibonacciNumber"] = bi.ToString();
                fibreCookie.Value = bi.ToString();
                fibreCookie.Expires = DateTime.Now.AddDays(1.0);
                Response.Cookies.Add(fibreCookie);

                lblFeedback.Text = "The " + myfib.FibIndex + " st/nd/rd/th Fibonacci number is: " + bi.ToString();
            }
            else
            {
                lblFeedback.Text = "Don't forget to supply the dealer, squealer!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Read cookie value from client (via the Request object):
            if (Request.Cookies["MonsterCookie"] != null)
            {
                //lblCookieValue.Text = "MonsterCookie's Fibonacci Number is now: " + Request.Cookies["MonsterCookie"]["FibonacciNumber"];
                lblCookieValue.Text = "MonsterCookie's Fibonacci Number is now: " + Request.Cookies["MonsterCookie"].Value;
            }
            else
            {
                lblCookieValue.Text = "MonsterCookie ain't here to read from, cookie!";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Remove cookie from client by overwriting it with an expired one:
            HttpCookie fibreCookie = new HttpCookie("MonsterCookie");
            // This will not work well if the clocks of client and server
            // are well out off sync! Think about it!
            fibreCookie.Expires = DateTime.Now.AddDays(-1.0);
            // Add cookie to the next response:
            Response.Cookies.Add(fibreCookie);
        }
    }
}