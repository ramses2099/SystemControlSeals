using System;
using System.Collections.Generic;
using System.Text;

namespace Com.Hit.Layer.Model
{
    public class SealsGiveLine
    {

        public int IdSealsGiveLine { get; set; }
        public int IdLineOperators { get; set; }
        public int IdSealsProcess { get; set; }
        public int IdVesselVisits { get; set; }
        public int QtyGive { get; set; }
        public string EmployeeCode { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }

    }
}
