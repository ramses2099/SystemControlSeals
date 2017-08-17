using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Hit.Layer.Model
{
    public class SealsLog
    {

        public int IdSealsLog { get; set; }
        public string ClassName { get; set; }
        public string MethodName { get; set; }
        public string MessageError { get; set; }
        public string StackTrace { get; set; }
        public string TargetSite { get; set; }
        public int IdUser { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }

    }
}
