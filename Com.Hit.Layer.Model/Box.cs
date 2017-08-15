using System;

namespace Com.Hit.Layer.Model
{
    public class Box
    {
        public int IdBox { get; set; }
        public string Modelo { get; set; }
        public string Color { get; set; }
        public int Quantity { get; set; }
        public int SerialNoDesde { get; set; }
        public int SerialNoHasta { get; set; }
        public int IdBoxState { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }
        
    }
}
