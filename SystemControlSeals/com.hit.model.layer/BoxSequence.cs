using System;
using System.Collections.Generic;
using System.Text;

namespace Com.Hit.Layer.Model
{
    public class BoxSequence
    {

        public int IdBoxSequence { get; set; }
        public int IdBox { get; set; }
        public int SerialNoDesde { get; set; }
        public int SerialNoHasta { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }

    }
}
