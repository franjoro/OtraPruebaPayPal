using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace OtraPruebaPayPal
{
    public partial class PagPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int visitas = 0;
            int id = 1;
            int val = 0;
            val = val + 1;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT visitas FROM estadisticas WHERE id= '" + id + "'", conexion);
            //cmd.CommandType = System.Data.CommandType.Text;
            //MySqlDataAdapter ds = new MySqlDataAdapter(cmd);
            int pr = Convert.ToInt32(cmd.ExecuteScalar());

            //int suma = Convert.ToInt16();
            visitas = pr + 1;
            if (conexiones.VisitasPagPrincipal(id, visitas) == 0)
            {

            }

            if (Session["usermane"] == null)
            {
                btnAcceder.Text = "Acceder";
                btnRegistro.Text = "Registrarse";
            }
            else
            {
                btnAcceder.Text = "Perfil";
                btnRegistro.Text = "Cerrar Sesión";
            }
        }

        protected void btnAcceder_Click(object sender, EventArgs e)
        {
            if (Session["usermane"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
               
            }
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            if (Session["usermane"] == null)
            {
                Response.Redirect("register.aspx");
            }
            else
            {
                Session.Remove("usermane");
                Response.Redirect("default.aspx");
            }
        }
    }
}