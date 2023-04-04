using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strConn = WebConfigurationManager.ConnectionStrings["Hawayeein"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            String n = name.Text.ToString();
            String user = username.Text.ToString();
            String  mail = email.Text.ToString();
            String p  = pass.Text.ToString();


            String password1 = pass.Text;
            String password2 = pass2.Text;

            Label1.Text = password1;

            if (!password1.Equals(password2))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage3();", true);
            }


            else
            {



                try
                {
                    SqlConnection objConn = new SqlConnection(strConn);
                    string strQuery = "INSERT INTO USER_DETAILS VALUES (@name , @user , @email, @pass);";
                    objConn.Open();
                    SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                    objCmd.Parameters.AddWithValue("@name", name.Text);
                    objCmd.Parameters.AddWithValue("@user", username.Text);
                    objCmd.Parameters.AddWithValue("@email", email.Text);
                    objCmd.Parameters.AddWithValue("@pass", pass.Text);

                    int i = objCmd.ExecuteNonQuery();

                    if (i > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage();", true);

                    }

                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage2();", true);
                    }

                }

                catch (Exception ex)
                {
                    Label1.Text = ex.ToString();
                }


            }


        }
    }
}