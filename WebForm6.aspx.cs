using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace project
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 


        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("youremail@gmail.com");
                mail.To.Add("shaikhrubi910@gmail.com");
                mail.Subject = "Test Email";
                mail.Body = "Heyy rubina! Abdul and ritik this side sending you an email from Hawayeein Airlines for testing purpose please provide us a good template of email to send to the customers!";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("hawayeeinairlines", "tghxdtosbiuwvcgx");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                Console.WriteLine("mail Send");
            }
            catch (Exception ex)
            {
               
                Label1.Text =  ex.ToString();
            }


        }
    }
}