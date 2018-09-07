using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace papiro.Negocio
{
    public class Cliente
    {
        private int id_cliente;

        public int IdCliente
        {
            get { return id_cliente; }
            set { id_cliente = value; }
        }
        private string _rut;

        public string Rut
        {
            get { return _rut; }
            set { _rut = value; }
        }
        private string _nombreCliente;

        public string NombreCliente
        {
            get { return _nombreCliente; }
            set { _nombreCliente = value; }
        }
        private string _direccion;

        public string Direccion
        {
            get { return _direccion; }
            set { _direccion = value; }
        }

        //Agregar comuna como tabla aparte
        private string _telefono;

        public string Telefono
        {
            get { return _telefono; }
            set { _telefono = value; }
        }


        private int _idComuna;

        public int IdComuna
        {
            get { return _idComuna; }
            set { _idComuna = value; }
        }

    }
}
