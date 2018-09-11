using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using papiro.Negocio;

namespace PapiroWeb.Web.Administracion
{
    public partial class Clientes : System.Web.UI.Page
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

                }
                else
                {
                    lblMensaje.Text = "No se encuentra rut";
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
                    txtGiro.Text = cliente.Giro;
                    txtDireccionEmpresa.Text = cliente.Direccion;
                    txtTelefonoEmpresa.Text = cliente.TelefonoContacto;

                }
                else
                {
                    lblMensaje.Text = "No se encuentra razón social";
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

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

        }
    }
}