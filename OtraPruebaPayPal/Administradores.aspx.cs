using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace OtraPruebaPayPal
{
    public partial class Administradores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string usuario = Convert.ToString(Session["usermane"]);
            /* if (usuario != "Admin")
            {
                Response.Redirect("default.aspx");
            }*/
            
            
            
            //else
            //{
            //    MySqlConnection conexion = datos.ObtenerConexion();
            //    MySqlCommand val = new MySqlCommand("SELECT cargo FROM usuarios", conexion);
            //    string admin = Convert.ToString(val.ExecuteScalar());
            //    if (admin != "Administrador")
            //    {
            //        Response.Redirect("default.aspx");
            //    }
            //    else
            //    {
            //        Response.Redirect("Administradores.aspx");
            //    }
            //}

            if (Session["usermane"] == null)
            {
                btnAcceder.Text = "Acceder";
                btnRegistro.Text = "Registrarse";
            }
            else
            {
                btnAcceder.Text = "Agregar Usuarios";
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
                Response.Redirect("AgregarUsuarios.aspx");
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