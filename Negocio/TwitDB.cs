using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class TwitDB
    {
        //private AccesoDatos datos;

        public List<Twit> Listar(int IDUsuario)
        {
            List<Twit> lista = new List<Twit>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                string consulta = "select T.Contenido as 'Contenido', T.ID as 'ID', U.Nombres + ' ' + U.Apellidos as 'NombreApellido', U.Usuario as 'Usuario' from Usuarios as U inner join twit as T on U.ID = T.IDUsuario where Estado = 1 and T.IDUsuario = " + IDUsuario + "order by T.ID desc";

                datos.SetearConsulta(consulta);
                datos.EjecutarLectura();

                while(datos.Lector.Read())
                {
                    Twit aux = new Twit();
                    aux.Contenido = (String)datos.Lector["Contenido"];
                    aux.ID = (long)datos.Lector["ID"];
                    aux.NombreApellido = (string)datos.Lector["NombreApellido"];
                    aux.Usuario = (string)datos.Lector["Usuario"];
                    lista.Add(aux);
                }

                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.CerrarConexion();
            }

        }
    }
}
