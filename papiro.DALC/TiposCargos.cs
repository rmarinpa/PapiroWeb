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
    
    public partial class TiposCargos
    {
        public TiposCargos()
        {
            this.ContactosComerciales = new HashSet<ContactosComerciales>();
        }
    
        public int IdTipoCargo { get; set; }
        public string Cargo { get; set; }
    
        public virtual ICollection<ContactosComerciales> ContactosComerciales { get; set; }
    }
}
