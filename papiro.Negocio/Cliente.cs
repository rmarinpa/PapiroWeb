﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;

namespace papiro.Negocio
{
    public class Cliente
    {
        PapiroWebEntities db = new PapiroWebEntities();

        private string _rutEmpresa;

        public string RutEmpresa
        {
            get { return _rutEmpresa; }
            set { _rutEmpresa = value; }
        }
        private string _razonSocial;

        public string RazonSocial
        {
            get { return _razonSocial; }
            set { _razonSocial = value; }
        }
        private string _giro;

        public string Giro
        {
            get { return _giro; }
            set { _giro = value; }
        }
        private string _direccion;

        public string Direccion
        {
            get { return _direccion; }
            set { _direccion = value; }
        }
        private string _telefonoContacto;

        public string TelefonoContacto
        {
            get { return _telefonoContacto; }
            set { _telefonoContacto = value; }
        }
        private int _idCiudad;

        public int IdCiudad
        {
            get { return _idCiudad; }
            set { _idCiudad = value; }
        }
        private int _idComuna;

        public int IdComuna
        {
            get { return _idComuna; }
            set { _idComuna = value; }
        }

        private int _idTipoPago;

        public int IdTipoPago
        {
            get { return _idTipoPago; }
            set { _idTipoPago = value; }
        }
        private int _idContactoComercial;

        public int IdContactoComercial
        {
            get { return _idContactoComercial; }
            set { _idContactoComercial = value; }
        }
        public bool Create()
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
    }
}
