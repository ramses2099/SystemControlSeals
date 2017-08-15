using System;
using System.Collections.Generic;
using System.Text;

namespace Com.Hit.Layer.Model
{
    public class VesselVisits
    {
        public int IdVesselVisits { get; set; }
        public string Visits { get; set; }
        public string Voyage { get; set; }
        public string VesselName { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }
                
    }
}
