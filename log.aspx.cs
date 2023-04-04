using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string Conn = WebConfigurationManager.ConnectionStrings["Hawayeein"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {

            SqlConnection sqlcon = new SqlConnection(Conn);

        sqlcon.Open();
            string query = "SELECT * FROM user_details WHERE email = @email  AND password = @pass";

            SqlCommand objCmd = new SqlCommand(query,sqlcon);
            objCmd.Parameters.AddWithValue("@email",userbox.Text);
            objCmd.Parameters.AddWithValue("@pass", passbox.Text);

            SqlDataReader dataReader = objCmd.ExecuteReader();



            SqlDataAdapter a = new SqlDataAdapter("SELECT * FROM user_details WHERE email = '" + userbox.Text + "' AND password = '" + passbox.Text + "'", Conn);
            DataTable dt = new DataTable();
            a.Fill(dt);


            if (dataReader.Read() )
            {
                Session["isLog"] = dataReader.GetString(0);
                Response.Redirect("home.aspx");
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage();", true);
               
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alertMessage2();", true);
    
            }
        }
    }
}