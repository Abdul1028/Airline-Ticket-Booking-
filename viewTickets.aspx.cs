using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace project
{
    public partial class viewTickets : System.Web.UI.Page
    {

        string strConn = WebConfigurationManager.ConnectionStrings["Hawayeein"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            String bookid = Session["bookid"].ToString();

            string queryString = "SELECT * FROM passeneger_details WHERE booking_id = @bookingId ";

            using (SqlConnection connection = new SqlConnection(strConn))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@bookingId", bookid);

                connection.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                      name.Text = reader["name"].ToString();
                        from.Text = reader["from"].ToString();
                         to.Text = reader["to"].ToString();
                         flight.Text = reader["flight_no"].ToString();
                         seat.Text = reader["seat"].ToString();
                         email.Text = reader["phone"].ToString();
                         gender.Text = reader["gender"].ToString();
                         age.Text = reader["age"].ToString();
                         booking_id.Text = reader["booking_id"].ToString();
                    }

                    else
                    { 
                        Response.Redirect("enter_booking_id.aspx?showPopup=userNotFound");
                    }
                }
            }
        }
    }
}




