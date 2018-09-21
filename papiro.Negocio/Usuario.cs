using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using papiro.DALC;

namespace papiro.Negocio
{
    public class Usuario
    {

        PapiroWebEntities db = new PapiroWebEntities();


        private string _username;

        public string UserName
        {
            get { return _username; }
            set { _username = value; }
        }

        private string _password;

        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }
        private string _nombres;

        public string Nombres
        {
            get { return _nombres; }
            set { _nombres = value; }
        }
        private string _apellidos;

        public string Apellidos
        {
            get { return _apellidos; }
            set { _apellidos = value; }
        }

        private int _idDepartamento;

        public int IdDepartamento
        {
            get { return _idDepartamento; }
            set { _idDepartamento = value; }
        }

        public Usuario LoginUsuario(string username, string password)
        {
            try
            {
                DALC.Usuarios user = (from u in db.Usuarios
                                      where u.UserName.Equals(username)
                                      && u.Password.Equals(password)
                                      select u).First();

                return new Usuario()
                {
                    Nombres = user.Nombres,
                    Apellidos = user.Apellidos,
                    UserName = user.UserName,
                    Password = user.Password
                };
            }
            catch (Exception)
            {

                return null;
            }
        }

        public IEnumerable<Object> ReadAllUser()
        {
            try
            {
                var usuarios = (from u in db.Usuarios
                                select new
                                {
                                    Nombres = u.Nombres + " " + u.Apellidos,
                                    UserName = u.UserName,
                                    Password = u.Password
                                }).ToList();
                return usuarios;
            }
            catch (Exception)
            {

                throw;
            }
        }

    }
}
