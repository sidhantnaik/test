using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Music_Player
{
    public class DBConnection : System.Web.UI.Page
    { 
        [System.Web.Services.WebMethod]
        public static string getPath1()
        {
            return "path";
        }
    
    }
}