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
    
    public partial class Ventas
    {
        public int IdVenta { get; set; }
        public int IdCodigoProducto { get; set; }
        public string RutEmpresa { get; set; }
        public Nullable<int> IdTipoPago { get; set; }
        public Nullable<System.DateTime> Fecha { get; set; }
        public Nullable<int> Descuento { get; set; }
    
        public virtual Clientes Clientes { get; set; }
        public virtual Productos Productos { get; set; }
        public virtual TiposPagos TiposPagos { get; set; }
    }
}
