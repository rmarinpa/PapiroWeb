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
    
    public partial class ContactoComercial
    {
        public ContactoComercial()
        {
            this.Clientes = new HashSet<Clientes>();
        }
    
        public int IdContacto { get; set; }
        public string NombreContacto { get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
        public int IdCargo { get; set; }
    
        public virtual ICollection<Clientes> Clientes { get; set; }
        public virtual TipoCargo TipoCargo { get; set; }
    }
}
