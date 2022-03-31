using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    class TodosUsuariosDB
    {
        public List<TodosUsuarios> Listar()
        {
            List<TodosUsuarios> lista = new List<TodosUsuarios>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("select ID from Usuarios");
                datos.EjecutarLectura();

                while (datos.Lector.Read())
                {
                    TodosUsuarios aux = new TodosUsuarios();

                    aux.ID = (int)datos.Lector["ID"];

                    lista.Add(aux);
                }
            }
            catch 
            {
               
            }
            finally
            {
                datos.CerrarConexion();
            }
            return lista;
        }
    }
}
