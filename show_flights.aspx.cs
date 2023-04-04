using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace project
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strConn = WebConfigurationManager.ConnectionStrings["Hawayeein"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            String s = Session["Source"].ToString();
            String d = Session["Destination"].ToString();


            SqlConnection Conn = new SqlConnection(strConn);
            string query = "SELECT * FROM flight_details WHERE Source = '" + s + "' AND Destination = '" + d + "';";
            Conn.Open();
            SqlDataAdapter da2 = new SqlDataAdapter(query, Conn);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            GridView1.DataSource = dt2;
            GridView1.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



            String n = DropDownList1.SelectedItem.ToString();

            Console.WriteLine(n);


            if (n == "Indigo")
            {
                try
                {

                    Label1.Text = "Indigo Flights";
                    SqlConnection Con = new SqlConnection(strConn);
                    string indigo_query = "select * from flight_details where Flight = 'Indigo' ;";


                    Con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(indigo_query, Con);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Label1.Text += ex.ToString();
                }


            }

            else if (DropDownList1.SelectedIndex == 2)
            {
                Label1.Text = "Vistara Flights";
                SqlConnection Con = new SqlConnection(strConn);
                string vistara_query = "select * from flight_details where Flight = 'Vistara' ;";


                Con.Open();
                SqlDataAdapter da = new SqlDataAdapter(vistara_query, Con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            else if (DropDownList1.SelectedIndex == 3)
            {
                Label1.Text = "Lufthansa Flights";
                SqlConnection Con = new SqlConnection(strConn);
                string lufthansa_query = "select * from flight_details where Flight = 'Lufthansa' ;";


                Con.Open();
                SqlDataAdapter da = new SqlDataAdapter(lufthansa_query, Con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }


            else if (DropDownList1.SelectedIndex == 4)
            {
                Label1.Text = "Cheapest Flights";
                SqlConnection Con = new SqlConnection(strConn);
                string min_query = "SELECT * FROM flight_details WHERE Price = (SELECT MIN(Price) FROM flight_details);";


                Con.Open();
                SqlDataAdapter da = new SqlDataAdapter(min_query, Con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            else
            {
                Label1.Text = "All Flights";
            }
        }

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            String number = GridView1.Rows[rowindex].Cells[7].Text;
            lbl.Text = number;

            Session["flight"] = number;
            Response.Redirect("passenger_details.aspx");




        }
    }


    