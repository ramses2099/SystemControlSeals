using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Hit.Layer.Persistence
{
    internal class Connection
    {
        public static string ConnectionString
        {
            get
            {
                return System.Configuration.ConfigurationManager.ConnectionStrings["SystemControlSealsConnectionString"].ToString();
            }
        }
        
    }
}
