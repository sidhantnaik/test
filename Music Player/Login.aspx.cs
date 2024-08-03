using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Music_Player
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click1(object sender, EventArgs e)
        {
            string cs = ("data source=SIDHANT; initial catalog=MusicPlayerDatabase; integrated security=true");
            SqlConnection con = new SqlConnection(cs);

            try
            {
                string query = "select * from dbo.LoginInfo";
                con.Open();

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();

                Boolean flag = false;

                while (reader.Read())
                {
                    if (txtusername.Text == reader.GetString(0) && txtpassword.Text == reader.GetString(1))
                    {
                        flag = true;
                        break;
                    }
                }

                if (flag)
                {
                    Outputlabel.Text = ("Login Succesfuly");

                    Response.Redirect("Display.aspx");
                }
                else
                {
                    Outputlabel.Text = ("Login Unsuccesfuly");
                }
            }

            catch (SqlException se)
            {
                Response.Write(se);
            }
            finally
            {
                con.Close();
            }
        }
    }
}