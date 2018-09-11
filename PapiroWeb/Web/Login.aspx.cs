using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using papiro.Negocio;
using System.Xml.Serialization;
using System.IO;
using System.Web.Security;

namespace PapiroWeb.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void loginUsuario_Authenticate(object sender, AuthenticateEventArgs e)
        {
            ServicioAutenticacion.AutenticacionClient cliente = new ServicioAutenticacion.AutenticacionClient();


            string nombreUsuario = loginUsuario.UserName;
            string password = loginUsuario.Password;

            string xmlUsuario = cliente.LoginUsuario(nombreUsuario, password);

            XmlSerializer serializador = new XmlSerializer(typeof(Usuario));

            StringReader lector = new StringReader(xmlUsuario);

            Usuario usuario = (Usuario)serializador.Deserialize(lector);

            if (usuario != null)
            {
                loginUsuario.UserName = usuario.Nombres + " " + usuario.Apellidos;
                e.Authenticated = true;

                FormsAuthentication.RedirectFromLoginPage(nombreUsuario, false);
            }

        }
    }
}