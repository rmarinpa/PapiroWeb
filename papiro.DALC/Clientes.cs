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
    
    public partial class Clientes
    {
        public string RutEmpresa { get; set; }
        public string RazonSocial { get; set; }
        public string Giro { get; set; }
        public string Direccion { get; set; }
        public string TelefonoContacto { get; set; }
        public int IdCiudad { get; set; }
        public int IdComuna { get; set; }
        public int IdTipoPago { get; set; }
        public int IdContactoComercial { get; set; }
    
        public virtual Ciudades Ciudades { get; set; }
        public virtual Comunas Comunas { get; set; }
        public virtual ContactoComercial ContactoComercial { get; set; }
        public virtual TipoPago TipoPago { get; set; }
    }
}