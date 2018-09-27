using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using papiro.Negocio;
using System.Web.Security;

namespace PapiroWeb.Web
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAcceder_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddlDepartamentos.SelectedIndex == 0)
                {
                    Response.Redirect("/Web/Ventas/MenuVentas");
                }
                else
                {
                    Response.Redirect("/Web/Administracion/MenuAdministracion");
                }


            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}