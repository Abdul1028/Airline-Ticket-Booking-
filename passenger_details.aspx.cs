``using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class WebForm5 : System.Web.UI.Page
    {

        string strConn = WebConfigurationManager.ConnectionStrings["Hawayeein"].ConnectionString;

        int current_booking_id;
        int current_seat;
        String flight;
        String source;
        String destination;
        String name;
        String email;
        String age;
        String gender;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(strConn))
            {
                connection.Open();
                string query = "SELECT TOP 1 booking_id , seat FROM passeneger_details ORDER BY booking_id DESC";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            int prev_book_id = Convert.ToInt32(reader["booking_id"]);
                            int prev_seat = Convert.ToInt32(reader["seat"]);


                            current_booking_id = prev_book_id + 1;
                            current_seat = prev_seat + 1;

                        }
                    }
                }
            }

            





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            flight = Session["flight"].ToString();
            source = Session["Source"].ToString();
            destination = Session["Destination"].ToString();
            

            

            try
            {
                using (SqlConnection connection = new SqlConnection(strConn))
                {
                    connection.Open();
                    string columnName = "flight_no"; // Replace with the name of the column you want to decrement
                    string flight_no = Session["flight"].ToString(); // Replace with the id of the row you want to update
                    string query = "UPDATE FLIGHT_DETAILS SET seats = seats - 1 WHERE FLIGHT_NO = "+"'"+flight_no+"'";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@flightname", flight_no);
                        int rowsAffected = command.ExecuteNonQuery();
                        Console.WriteLine(rowsAffected + " row(s) updated.");

                        if (rowsAffected > 0)
                        {
                            deleted.Text = "Deleted successfully!";

                        }

                        else
                        {
                            deleted.Text = "Delete not complete!";
                        }


                    }


                }
            }

            catch(Exception ex)
            {
                deleted.Text = ex.ToString();
            }

            name = namebox.Text.ToString();
            email = emailbox.Text.ToString();
            age = agebox.Text.ToString();
            gender = genderbox.SelectedValue.ToString();

            Label3.Text = gender;


            try
            {

                String to = "";

                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("hawayeeinairlines@gmail.com");
                mail.To.Add(email);
                mail.Subject = "Booking Confirmation Email! ";
                mail.Body = "Greetings,\r\nHawaayein Airlines,\r\n\r\nYour ticket has been successfully booked in the name,\r\nName - "+name +"  \r\nBooking ID - "+current_booking_id +"  \r\n\r\nThankyou for booking the air tickets through Hawaayein Airlines. We at Hawaayein assure the safest journey with utmost comfort. Fly with us and experience le jaaye jaane kaha yeh hawaayein.\r\n\r\nYour ticket and Seat number  can be viewed on our website,\r\nSteps to view are:\r\n1)Visit our website.\r\n2)Click on viewticket and ticket will be displayed.\r\n\r\nHope this helped,\r\nThankyou,\r\nLove from team Hawaayein";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("hawayeeinairlines", "tghxdtosbiuwvcgx");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                Console.WriteLine("mail Send");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }


           


            try
            {

                using (SqlConnection connection = new SqlConnection(strConn))
                {
                    connection.Open();
                    string query = "INSERT INTO PASSENEGER_DETAILS VALUES (@sqlfrom , @sqlto , @sqlflight , @sqlseat ,@sqlname ,@sqlemail , @sqlage ,@sqlgender ,@sqlbooking )";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@sqlfrom", source);
                        command.Parameters.AddWithValue("@sqlto", destination);
                        command.Parameters.AddWithValue("@sqlflight", flight);
                        command.Parameters.AddWithValue("@sqlseat", current_seat );
                        command.Parameters.AddWithValue("@sqlname", name);
                        command.Parameters.AddWithValue("@sqlemail", email);
                        command.Parameters.AddWithValue("@sqlage", age);
                        command.Parameters.AddWithValue("@sqlgender", gender);
                        command.Parameters.AddWithValue("@sqlbooking", current_booking_id  );

                        int inserted = command.ExecuteNonQuery();
                        Console.WriteLine(inserted + " row(s) updated.");

                        if (inserted > 0)
                        {
                            Label4.Text = "Inserted!";

                        }

                        else
                        {
                            deleted.Text = "not inserted!";
                        }


                    }


                }

            }

            catch(Exception ex2)
            {
                Label4.Text = ex2.ToString();
            }


        }

    }
}