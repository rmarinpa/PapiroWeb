//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace papiro.DALC
{
    using System;
    using System.Collections.Generic;
    
    public partial class NotaCredito
    {
        public int IdNotaCredito { get; set; }
        public string RutCliente { get; set; }
        public int IdDetalleFactura { get; set; }
        public string Observacion { get; set; }
        public string IdUsuario { get; set; }
        public System.DateTime FechaEmision { get; set; }
    
        public virtual Clientes Clientes { get; set; }
        public virtual DetalleFacturas DetalleFacturas { get; set; }
        public virtual Usuarios Usuarios { get; set; }
    }
}