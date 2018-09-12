using papiro.DALC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;

namespace PapiroWeb.Web.Administracion
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static List<string> GetNombre(string pre)
        {
            List<string> usuarios = new List<string>();
            using (PapiroWebEntities db = new PapiroWebEntities())
            {
                usuarios = (from u in db.Usuarios
                            where u.UserName.StartsWith(pre)
                            select u.UserName).ToList();
            }
            return usuarios;
        }
    }
}
