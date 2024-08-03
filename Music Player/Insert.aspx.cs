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
    public partial class Insert : System.Web.UI.Page
    {
         string cs = ("data source=SIDHANT; initial catalog=MusicPlayerDatabase; integrated security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            Idgenerator idgenerator = new Idgenerator();
            int id = idgenerator.getId("SongsList");
            txtId.Text = (id+1).ToString();
        }

        public void UploadSong ()
        {
            byte[] Song ;

            SqlConnection con = new SqlConnection(cs);

            
          try
          {
                
                string query = "insert into dbo.SongsList values(@sid,@Title,@Data)";
                con.Open ();

                SqlCommand cmd= new SqlCommand(query, con);

            Stream stream = FileUploadSong.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(stream);
            Song = br.ReadBytes((Int32)stream.Length);


                // com.Connection = con;
                cmd.Parameters.AddWithValue("@sid", txtId.Text);
            cmd.Parameters.AddWithValue("@Data", Song);
            cmd.Parameters.AddWithValue("@Title", txttitle.Text);

            

            int result = cmd.ExecuteNonQuery();

            if (result > 0) {
                LabelError.Text = "Success";
                    txttitle.Text = "";

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
            UploadSong ();
        }
    }
}