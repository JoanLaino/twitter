using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Twitter
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
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
                Response.Redirect("https://www.google.com/");
            }
            else
            {
                try
                {
                    //AccesoDatos datos = new AccesoDatos();

                    //string twit = txtTwit.Text;                
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }       
    }
}