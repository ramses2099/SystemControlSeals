﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Com.Hit.Layer.Model
{
    public class BoxState
    {
        public int IdBoxState { get; set; }
        public string Descripcion { get; set; }
        public int IdStateRow { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string HostName { get; set; }
    }
}