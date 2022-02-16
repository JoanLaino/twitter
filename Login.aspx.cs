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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Usuario usuario;
            UsuarioDB usuarioDB = new UsuarioDB();

            try
            {
                usuario = new Usuario(txtUser.Text, txtPassword.Text, false);
                if(usuarioDB.Loguear(usuario))
                {
                    Session.Add("usuario", usuario);
                    Response.Redirect("Home.aspx", false);
                }
                else
                {
                    Session.Add("error", "User o Password incorrecta.");
                    Response.Redirect("Error.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}