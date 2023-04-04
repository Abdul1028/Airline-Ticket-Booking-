using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class enter_booking_id : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["showPopup"] == "userNotFound")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('No such Booking ID Exist.');", true);
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["bookid"] = TextBox1.Text.ToString();
            Response.Redirect("viewTickets.aspx");
        }


    }
}