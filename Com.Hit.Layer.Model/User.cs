using System;
using System.Collections.Generic;
using System.Text;

namespace Com.Hit.Layer.Model
{
   public class User
    {
        public int IdUser { get; set; }
        public string Usuario { get; set; }
        public string Pwd { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Email { get; set; }
        public int IdRol { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }

    }
}
