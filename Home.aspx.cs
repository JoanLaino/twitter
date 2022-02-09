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
            TwitDB twitDB = new TwitDB();           

            if (!IsPostBack)
            {
                BindData();
            }

            try
            {
                lista = twitDB.Listar();
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
                    string spEnviarTwit = "exec sp_enviar_twit '" + twit + "'";

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
            //Arreglar que aparezca bien el popup.
            confirmarTrash.CssClass = "trash-visible";
        }
    }
}