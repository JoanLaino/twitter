using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Twitter
{
    public partial class Perfil : System.Web.UI.Page
    {
        public List<Twit> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Session.Add("error", "Debes loguearte para ingresar.");
                Response.Redirect("Error.aspx", false);
            }

            TwitDB twitDB = new TwitDB();

            if (!IsPostBack)
            {
                cargarUsuario();
            }            
           
            try
            {
                int IDUsuario = (int)Session["IDUsuario"];
                lista = twitDB.Listar(IDUsuario);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        void cargarUsuario()
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                int IDUsuario = (int)Session["IDUsuario"];

                string selectNomApe = "select Nombres + ' ' + Apellidos as 'NombreApellido', Usuario from Usuarios where ID = " + IDUsuario;
                datos.SetearConsulta(selectNomApe);
                datos.EjecutarLectura();

                if(datos.Lector.Read())
                {
                    lblNombreApellido.Text = datos.Lector["NombreApellido"].ToString();
                    lblUsuario.Text = datos.Lector["Usuario"].ToString();
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert",
                           "alert('No se encontró el usuario.')", true);
                }
                
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