using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Hit.Layer.Model
{
   public  class Login
    {

        public int IdLogin { get; set; }
        public int IdUser { get; set; }
        public DateTime FechaLogin { get; set; }
        public DateTime FechaEndLogin { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }


    }
}
