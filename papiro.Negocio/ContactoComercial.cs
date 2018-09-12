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
        public bool Read()
        {
            try
            {
                DALC.ContactosComerciales contactos = db.ContactosComerciales.Find(this.IdContacto);

                this.NombreConta = contactos.NombreContacto;
                this.Telefono = contactos.Telefono;
                this.Email = contactos.Email;
                this.IdCargo = contactos.IdCargo;

                return true;

            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
