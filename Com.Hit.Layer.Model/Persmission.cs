using System;
using System.Collections.Generic;
using System.Text;

namespace Com.Hit.Layer.Model
{
   public class Persmission
    {

        public int IdPersmission { get; set; }
        public int IdRol { get; set; }
        public string Modulo { get; set; }
        public int Permitted { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }
        

    }
}
