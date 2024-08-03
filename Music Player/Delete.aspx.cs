using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Music_Player
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonInput_Click(object sender, EventArgs e)
        {
            string cs = ("data source=SIDHANT; initial catalog=MusicPlayerDatabase; integrated security=true");
            SqlConnection con = new SqlConnection(cs);

            try
            {
                string query = "delete from dbo.SongsList where Title = @title";
                con.Open();

                SqlCommand cmd = new SqlCommand(query, con);

               cmd.Parameters.AddWithValue("title",txtinput.Text);
                

                    int result = cmd.ExecuteNonQuery();

                    if (result > 0)
                    {
                        Outputlabel.Text = ("Song deleted Succesfuly");
                    }
                    else
                    {
                        Outputlabel.Text = ("Song failed to delete");
                    }

            }

            catch (SqlException se)
            {
                Response.Write(se);
            }
        }
    }
}