﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using papiro.DALC;
using papiro.Negocio;


namespace PapiroWeb.Web.Administracion
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMensaje.Text = string.Empty;
            }
        }



        protected void btnBuscarRut_Click(object sender, EventArgs e)
        {
            try
            {
                Cliente cliente = new Cliente();
                cliente.RutEmpresa = txtRutEmpresa.Text;

                if (cliente.Read())
                {
                    txtRazonSocial.Text = cliente.RazonSocial;
                    txtGiro.Text = cliente.Giro;
                    txtDireccionEmpresa.Text = cliente.Direccion;
                    txtTelefonoEmpresa.Text = cliente.TelefonoContacto;
                    ddlComunaEmpresa.SelectedValue = cliente.IdComuna.ToString();
                    ddlCiudadEmpresa.SelectedValue = cliente.IdCiudad.ToString();
                    ddlTipoPago.SelectedValue = cliente.IdTipoPago.ToString();
                    txtIDContacto.Text = cliente.IdContactoComercial.ToString();
                    ddlTipoPago.SelectedValue = cliente.IdTipoPago.ToString();
                    txtCondicionPago.Text = cliente.Condicion.ToString();
                    txtLineaCredito.Text = cliente.LineaCredito;
                    txtAreaObservacion.Text = cliente.Observacion;
                    txtFichaCliente.Text = cliente.FichaCliente;
                    txtLineaCredito.Text = cliente.LineaCredito;
                    txtDicom.Text = cliente.Dicom;
                    txtAreaObservacion.Text = cliente.Observacion;
                    txtFechaActualizacion.Text = cliente.FechaActualizacion.ToLongDateString();
                    txtFechaIngreso.Text = cliente.FechaIngreso.ToLongDateString();
                    lblMensaje.Text = string.Empty;
                }
                else
                {
                    lblMensaje.Text = "No se encuentra rut";
                }

                ContactoComercial contactoComercial = new ContactoComercial();
                contactoComercial.IdContacto = int.Parse(txtIDContacto.Text);

                if (contactoComercial.Read())
                {
                    txtNombreContacto.Text = contactoComercial.NombreConta;
                    txtTelefonoComercial.Text = contactoComercial.Telefono;
                    txtEmailContacto.Text = contactoComercial.Email;
                    ddlTipoCargo.SelectedValue = contactoComercial.IdCargo.ToString();
                }
                else
                {
                    lblMensaje.Text = "No se encuentra contacto";
                }


            }
            catch (ArgumentException ex)
            {

                lblMensaje.Text = ex.Message;
            }
            catch (Exception)
            {
                lblMensaje.Text = "Error al buscar";
            }
        }


        protected void btnBuscarRazon_Click(object sender, EventArgs e)
        {

            try
            {
                Cliente cliente = new Cliente();
                cliente.RazonSocial = txtRazonSocial.Text;

                if (cliente.ReadRazon())
                {
                    txtRutEmpresa.Text = cliente.RutEmpresa;
                    txtGiro.Text = cliente.Giro;
                    txtDireccionEmpresa.Text = cliente.Direccion;
                    txtTelefonoEmpresa.Text = cliente.TelefonoContacto;
                    ddlComunaEmpresa.SelectedValue = cliente.IdComuna.ToString();
                    ddlCiudadEmpresa.SelectedValue = cliente.IdCiudad.ToString();
                    ddlTipoPago.SelectedValue = cliente.IdTipoPago.ToString();
                    txtIDContacto.Text = cliente.IdContactoComercial.ToString();
                    ddlTipoPago.SelectedValue = cliente.IdTipoPago.ToString();
                    txtCondicionPago.Text = cliente.Condicion.ToString();
                    txtLineaCredito.Text = cliente.LineaCredito;
                    txtAreaObservacion.Text = cliente.Observacion;
                    txtFichaCliente.Text = cliente.FichaCliente;
                    txtLineaCredito.Text = cliente.LineaCredito;
                    txtDicom.Text = cliente.Dicom;
                    txtAreaObservacion.Text = cliente.Observacion;
                    txtFechaActualizacion.Text = cliente.FechaActualizacion.ToLongDateString();
                    txtFechaIngreso.Text = cliente.FechaIngreso.ToLongDateString();
                    lblMensaje.Text = string.Empty;
                }
                else
                {
                    lblMensaje.Text = "No se encuentra razón social";
                }
                ContactoComercial contactoComercial = new ContactoComercial();
                contactoComercial.IdContacto = int.Parse(txtIDContacto.Text);

                if (contactoComercial.Read())
                {
                    txtNombreContacto.Text = contactoComercial.NombreConta;
                    txtTelefonoComercial.Text = contactoComercial.Telefono;
                    txtEmailContacto.Text = contactoComercial.Email;
                    ddlTipoCargo.SelectedValue = contactoComercial.IdCargo.ToString();
                }
                else
                {
                    lblMensaje.Text = "No se encuentra contacto comercial";
                }

            }
            catch (ArgumentException ex)
            {

                lblMensaje.Text = ex.Message;
            }
            catch (Exception)
            {
                lblMensaje.Text = "Error al buscar";
            }

        }



        protected void btnAgregar_Click(object sender, EventArgs e)
        {

        }


        // Metodos para la busqueda de rut con JQUERY

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetRazon(string pre)
        {
            List<string> clientes = new List<string>();
            using (PapiroWebEntities db = new PapiroWebEntities())
            {
                clientes = (from c in db.Clientes
                            where c.RazonSocial.StartsWith(pre)
                            select c.RazonSocial).ToList();
            }
            return clientes;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetRut(string pre)
        {
            List<string> clientes = new List<string>();
            using (PapiroWebEntities db = new PapiroWebEntities())
            {
                clientes = (from c in db.Clientes
                            where c.RutEmpresa.StartsWith(pre)
                            select c.RutEmpresa).ToList();
            }
            return clientes;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
        }
    }
}