using Twitter.AppCode;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace Twitter
{
    public partial class Home : System.Web.UI.Page
    {
        public List<Twit> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.SetMessage("Aguante juanma");
            if(Session["usuario"] == null)
            {
                Session.Add("error", "Debes loguearte para ingresar.");
                Response.Redirect("Error.aspx", false);
            }

            TwitDB twitDB = new TwitDB();           

            if (!IsPostBack)
            {
                BindData();
            }

            try
            {
                int IDUsuario = (int)Session["IDUsuario"];
                lista = twitDB.Listar(IDUsuario);
                //Session.Add("ListaTwit", lista);

                if(lista != null)
                {
                    repetidorTwit.DataSource = lista;
                    repetidorTwit.DataBind();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void BindData()
        {
            txtTwit.Text = "";

        }

        protected void btnTwit_Click(object sender, EventArgs e)
        {            
            if (txtTwit.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                "alert('Debe escribir un mensaje para twitear.')", true);
            }
            else
            {
                AccesoDatos datos = new AccesoDatos();
                try
                {  
                    string twit = txtTwit.Text;
                    int IDUsuario = (int)Session["IDUsuario"];
                    string spEnviarTwit = "exec sp_enviar_twit '" + twit + "', " + IDUsuario;

                    try
                    {
                        datos.IUD(spEnviarTwit);                        

                        BindData();

                        Response.Redirect("Home.aspx");                       
                    }
                    catch 
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert",
                        "alert('El twit no se a podido guardar correctamente..')", true);
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

        protected void btnTrash_Click(object sender, ImageClickEventArgs e)
        {
            //var argument = ((ImageButton)sender).CommandArgument;
            //Session.Add("IDEliminar", argument);
            //popupTrash.Attributes["class"] = "trash-visible";      
            this.SetMessage("Esto todavía no está programado.");
        }

        protected void btnNoTrash_Click(object sender, EventArgs e)
        {
            popupTrash.Attributes["class"] = "popup-confirmar-trash";
        }

        protected void btnSiTrash_Click(object sender, EventArgs e)
        {
            //var argument = (int)Session["IDEliminar"];
            //List<Twit> twits = (List<Twit>)Session["ListaTwit"];
            //Twit elim = twits.Find(x => x.ID == argument);
            //twits.Remove(elim);

            //Session.Add("listadoCarrito", twits);
            //repetidorTwit.DataSource = null;
            //repetidorTwit.DataSource = twits;
            //repetidorTwit.DataBind();

            //Response.Redirect("Home.aspx");
        }

        protected void btnHearth_Click(object sender, ImageClickEventArgs e)
        {

            //Recibir el ID y cambiar MeGusta a true.
            this.SetMessage("Esto todavía no está programado.");
        }
    }
}