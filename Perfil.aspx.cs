using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace Twitter
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Session.Add("error", "Debes loguearte para ingresar.");
                Response.Redirect("Error.aspx", false);
            }

            if (!IsPostBack)
            {
                cargarUsuario();
            }
        }

        void cargarUsuario()
        {
            string Nombre = (string)Session["Nombre"];
            string Apellido = (string)Session["Apellido"];
            string Usuario = (string)Session["Usuario"];

            lblNombreApellido.Text = Nombre;
            lblUsuario.Text = Usuario;
        }
    }
}