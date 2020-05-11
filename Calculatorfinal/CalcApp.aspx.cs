using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculatorfinal
{
    public partial class CalcApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {

           
                String msg = "Please enter number 1 and 2 to perform calculation";
                String msg1 = "Please enter number 1";
                String msg2 = "Please enter number 2";
                if (this.number1.Text == "" && this.number2.Text == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
                }

                else if (this.number1.Text == "" )
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg1 + "');", true);
                }
                else if (this.number2.Text == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg2 + "');", true);
                }

            try
            {

                var num1 = Convert.ToDecimal(this.number1.Text);
                var num2 = Convert.ToDecimal(this.number2.Text);
                var opratr = this.DropDownList1.SelectedValue;

                

                var reslt = 0m;

                if (opratr == "+")
                {
                    reslt = num1 + num2;

                }
                else if (opratr == "-")
                {
                    reslt = num1 - num2;
                }
                else if (opratr == "*")
                {
                    reslt = num1 * num2;
                }
                else
                {
                    decimal d = num1 / num2;
                    reslt = Math.Round(d, 4);
                }
                result.Text = reslt.ToString();
            }
            catch(FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
                
            }
        }

        protected void number1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ClearF_Click(object sender, EventArgs e)
        {
            this.number1.Text = "";
            this.number2.Text = "";
            this.result.Text = "";
            this.DropDownList1.DataTextField = "Add";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}