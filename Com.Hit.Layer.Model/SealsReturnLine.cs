using System;
using System.Collections.Generic;
using System.Text;

namespace Com.Hit.Layer.Model
{
   public class SealsReturnLine
    {

        public int IdSealsReturnLine { get; set; }
        public int QtyReturn { get; set; }
        public string EmployeeCode { get; set; }
        public int IdVesselVisits { get; set; }
        public int IdSealsProcess { get; set; }
        public string Nota { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }

   }
}
