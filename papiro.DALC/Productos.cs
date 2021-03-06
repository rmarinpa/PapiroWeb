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
    
    public partial class Productos
    {
        public Productos()
        {
            this.DetalleFacturas = new HashSet<DetalleFacturas>();
            this.Ventas = new HashSet<Ventas>();
        }
    
        public int Codigo { get; set; }
        public string Descripcion { get; set; }
        public string Marca { get; set; }
        public decimal Ancho { get; set; }
        public decimal Largo { get; set; }
        public decimal Area { get; set; }
        public string Familia { get; set; }
        public int Stock { get; set; }
        public int Precio { get; set; }
        public int IdTipoProducto { get; set; }
    
        public virtual ICollection<DetalleFacturas> DetalleFacturas { get; set; }
        public virtual TipoProducto TipoProducto { get; set; }
        public virtual ICollection<Ventas> Ventas { get; set; }
    }
}
