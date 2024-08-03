using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Web.Services.Description;

namespace Music_Player
{
    public partial class Insert1 : System.Web.UI.Page
    {
        string cs = ("data source=SIDHANT; initial catalog=MusicPlayerDatabase; integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            Idgenerator idgenerator1 = new Idgenerator();
            int id = idgenerator1.getId("SongsList2");
            txtId.Text = (id + 1).ToString();
        }

        public void UploadSong()
        {
           

            SqlConnection con = new SqlConnection(cs);

            try
            {
                if (FileUploadSong.HasFile)
                {
                    
                   string filePath = "C:\\Users\\sidha\\source\\repos\\Music Player\\Music Player\\Songs1\\" + FileUploadSong.FileName;
                    FileUploadSong.SaveAs(filePath);


                }

                string query = "insert into dbo.SongsList2 values(@sid,@Title,@Path)";
                con.Open();

                SqlCommand cmd = new SqlCommand(query, con);



                // com.Connection = con;
                cmd.Parameters.AddWithValue("@sid", txtId.Text);
                cmd.Parameters.AddWithValue("@Title", txttitle.Text);
                cmd.Parameters.AddWithValue("@Path", "./Songs1/"+txttitle.Text+".mp3");


                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    LabelError.Text = "Success";
                   

                }
                else
                {
                    LabelError.Text = "Failed";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {

            UploadSong();
        }
    }
}