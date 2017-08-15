using System;
using System.Collections.Generic;
using System.Text;

namespace Com.Hit.Layer.Model
{
   public class SealsReturnHitDetails
    {

        public int IdSealsReturnHitDetails { get; set; }
        public int IdSealsReturnHit { get; set; }
        public int SealsSequence { get; set; }
        public int IdSealsState { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }
        
    }
}
