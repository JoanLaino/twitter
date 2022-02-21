using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twitter
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Logout()
        {
            Session.Abandon();
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Logout();
            Response.Redirect("Login.aspx", false);
        }

        protected void btnPerfil_Click(object sender, EventArgs e)
        {           
            Response.Redirect("Perfil.aspx");
        }
    }
}