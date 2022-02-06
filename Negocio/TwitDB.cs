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

        public List<Twit> Listar()
        {
            List<Twit> lista = new List<Twit>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.SetearConsulta("select Contenido from twit order by ID desc");
                datos.EjecutarLectura();

                while(datos.Lector.Read())
                {
                    Twit aux = new Twit();
                    aux.Contenido = (String)datos.Lector["Contenido"];
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
