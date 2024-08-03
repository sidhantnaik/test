using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Music_Player
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string cs = ("data source=SIDHANT; initial catalog=MusicPlayerDatabase; integrated security=true");
            SqlConnection con = new SqlConnection(cs);

            try
            {
                string query = "insert into dbo.LoginInfo values(@Username,@Password)";
                con.Open();

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Username", txtusername.Text);
                cmd.Parameters.AddWithValue("@Password", txtpassword.Text);

                if (txtpassword.Text == txtconpassword.Text)
                {
                    int result = cmd.ExecuteNonQuery();

                    if (result > 0)
                    {
                        Outputlabel.Text=("Sign Up Succesfuly");
                    }
                    else
                    {
                        Outputlabel.Text = ("Failed to Sign Up");
                    }

                }
                else
                {
                    Outputlabel.Text = ("Please Check your Password");
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