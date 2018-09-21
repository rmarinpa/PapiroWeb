using papiro.DALC;
using papiro.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PapiroWeb.Web.Ventas
{
    public partial class GenerarPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                    txtIDContacto.Text = cliente.IdContactoComercial.ToString();

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


            }
            catch (ArgumentException ex)
            {

                lblMensaje.Text = ex.Message;
            }
            catch (Exception ex)
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
                    txtRazonSocial.Text = cliente.RazonSocial;
                    txtGiro.Text = cliente.Giro;
                    txtDireccionEmpresa.Text = cliente.Direccion;
                    txtTelefonoEmpresa.Text = cliente.TelefonoContacto;
                    ddlComunaEmpresa.SelectedValue = cliente.IdComuna.ToString();
                    txtIDContacto.Text = cliente.IdContactoComercial.ToString();

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
                }

            }
            catch (ArgumentException ex)
            {

                lblMensaje.Text = ex.Message;
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al buscar";
            }

        }


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



    }
}