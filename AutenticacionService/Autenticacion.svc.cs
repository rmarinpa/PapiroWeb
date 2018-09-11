using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Xml.Serialization;
using System.IO;
using papiro.Negocio;

namespace AutenticacionService
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Autenticacion" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Autenticacion.svc o Autenticacion.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Autenticacion : IAutenticacion
    {
        public string LoginUsuario(string nombreUsuario, string password)
        {
            Usuario user = new Usuario().LoginUsuario(nombreUsuario, password);

            XmlSerializer serializador = new XmlSerializer(typeof(Usuario));

            StringWriter escritor = new StringWriter();

            serializador.Serialize(escritor, user);

            return escritor.ToString();
        }
    }
}
