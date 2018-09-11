using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;

namespace papiro.Negocio
{

    public class ContactoComercial
    {
        PapiroWebEntities db = new PapiroWebEntities();

        private int _idContacto;

        public int IdContacto
        {
            get { return _idContacto; }
            set { _idContacto = value; }
        }

        private string _nombreConta;

        public string NombreConta
        {
            get { return _nombreConta; }
            set { _nombreConta = value; }
        }

        private string _telefono;

        public string Telefono
        {
            get { return _telefono; }
            set { _telefono = value; }
        }
        private string _email;

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        private int _idCargo;

        public int IdCargo
        {
            get { return _idCargo; }
            set { _idCargo = value; }
        }


        /*public bool Create()
        {
            try
            {
                DALC.Clientes clientes = new DALC.Clientes();
                clientes.RutEmpresa = this.RutEmpresa;
                clientes.RazonSocial = this.RazonSocial;
                clientes.Giro = this.Giro;
                clientes.Direccion = this.Direccion;
                clientes.TelefonoContacto = this.TelefonoContacto;
                clientes.IdCiudad = this.IdCiudad;
                clientes.IdComuna = this.IdComuna;
                clientes.IdTipoPago = this.IdTipoPago;
                clientes.IdContactoComercial = this.IdTipoPago;

                db.Clientes.Add(clientes);

                db.SaveChanges();

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Update()
        {
            try
            {
                DALC.Clientes clientes = db.Clientes.Find(this.RutEmpresa);

                clientes.RutEmpresa = this.RutEmpresa;
                clientes.RazonSocial = this.RazonSocial;
                clientes.Giro = this.Giro;
                clientes.Direccion = this.Direccion;
                clientes.TelefonoContacto = this.TelefonoContacto;
                clientes.IdCiudad = this.IdCiudad;
                clientes.IdComuna = this.IdComuna;
                clientes.IdTipoPago = this.IdTipoPago;
                clientes.IdContactoComercial = this.IdTipoPago;

                db.Entry(clientes).State = System.Data.EntityState.Modified;

                db.SaveChanges();

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool Delete()
        {
            try
            {
                DALC.Clientes clientes = db.Clientes.Find(this.RutEmpresa);

                db.Clientes.Remove(clientes);
                db.SaveChanges();

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
        public bool Read()
        {
            try
            {
                DALC.Clientes clientes = db.Clientes.Find(this.RutEmpresa);

                this.RutEmpresa = clientes.RutEmpresa;
                this.RazonSocial = clientes.RazonSocial;
                this.Giro = clientes.Giro;
                this.Direccion = clientes.Direccion;
                this.TelefonoContacto = clientes.TelefonoContacto;
                this.IdCiudad = clientes.IdCiudad;
                this.IdComuna = clientes.IdComuna;
                this.IdTipoPago = clientes.IdTipoPago;
                this.IdContactoComercial = clientes.IdContactoComercial;

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool ReadRazon()
        {
            try
            {
                DALC.Clientes clientes = (from a in db.Clientes
                                          where a.RazonSocial.Equals(this.RazonSocial)
                                          select a).First();

                this.RazonSocial = clientes.RazonSocial;
                this.RutEmpresa = clientes.RutEmpresa;
                this.Giro = clientes.Giro;
                this.Direccion = clientes.Direccion;
                this.TelefonoContacto = clientes.TelefonoContacto;
                this.IdCiudad = clientes.IdCiudad;
                this.IdComuna = clientes.IdComuna;
                this.IdTipoPago = clientes.IdTipoPago;
                this.IdContactoComercial = clientes.IdContactoComercial;

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
         * 
         * */

    }
}
