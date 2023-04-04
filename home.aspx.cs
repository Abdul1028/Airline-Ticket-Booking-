using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["showPopup"] == "same")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('Source and Destination cannot be same.');", true);
            }


            if (Session["isLog"] == null)
            {
                welcome.Text = "";
                
            }

            else
            {
                string s = Session["isLog"].ToString();
                welcome.Text = "Welcome, "+s;
            }

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            String source = from.SelectedItem.ToString();
            String destination = to.SelectedItem.ToString();


            if(source == destination)
            {
                Response.Redirect("home.aspx?showPopup=same");
            }

            else
            {
                Session["Source"] = source;
                Session["Destination"] = destination;

                Response.Redirect("show_flights.aspx");
            }


        }
    }
}