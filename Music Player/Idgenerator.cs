using System.Data.SqlClient;

namespace Music_Player
{
    internal class Idgenerator
    {
        
        
            public int getId(string tablename)
            {
                int count = 0;
                string cs = ("data source=SIDHANT; initial catalog=MusicPlayerDatabase; integrated security=true");

                SqlConnection con = new SqlConnection(cs);

                try
                {
                    string sql = "select count(*) from " + tablename;

                    SqlCommand cmd = new SqlCommand(sql, con);

                    con.Open();
                    count = (int)cmd.ExecuteScalar();
                }
                catch(SqlException ex)
                {
                
                }
                finally
                {
                    con.Close();
                }
                return count;
            }
        
    }
}