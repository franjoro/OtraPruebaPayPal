using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using MySql.Data.MySqlClient;

namespace OtraPruebaPayPal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lgnButton_Click1(object sender, EventArgs e)
        {
            if (Password.Text != "" && Username.Text != "")
            {

                string contra, usuario;

                contra = System.Text.Encoding.UTF8.EncodeBase64(Password.Text);
                usuario = Username.Text;

                datos1.valorGlobal = usuario;

                try
                {
                    string[] respuesta = conexiones.Login(usuario, contra);
                    if (respuesta[0] != null && respuesta[0] != String.Empty && respuesta[0] != "")
                    {
                        if (respuesta[1] == "Administrador")
                        {
                            Session["usermane"] = Username.Text;
                            Response.Redirect("Administradores.aspx");
                        }
                        else
                        {
                            Session["usermane"] = Username.Text;
                            Response.Redirect("default.aspx");
                        }
                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('Algo salio mal', 'Nombre de usuario o contraseña son incorrectos', 'error') </script>";
                        Password.Text = "";
                        Username.Text = "";
                    }

                }
                catch (Exception exc)
                {
                    System.Diagnostics.Debug.WriteLine(exc);
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al obtener los datos', '', 'error');", true);
                }

            }
            else
            {
                alerta.Text = "<script>Swal.fire('Error', 'No deje espacios en blancooopo', 'error') </script>";
            }
        }


    }

}