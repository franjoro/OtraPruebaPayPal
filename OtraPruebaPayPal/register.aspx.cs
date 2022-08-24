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
    public partial class register : System.Web.UI.Page
    {
        public static string Llave = "jwey89e09ewhfo24";
        protected void Page_Load(object sender, EventArgs e)
        {
            //MySqlConnection conexion = datos.ObtenerConexion();
            //using (var cmd = new MySqlCommand("SELECT nombre_tipo FROM tipo", conexion))
            //{
            //    using (var reader = cmd.ExecuteReader())
            //    {
            //        DropDownList1.DataSource = reader;
            //        DropDownList1.DataTextField = "nombre_tipo";
            //        DropDownList1.DataBind();
            //    }
            //}
        }


        protected void rgstrButton_Click(object sender, EventArgs e)
        {
            if (Username.Text.Trim() != "" && Password.Text.Trim() != "" && cnfrmPassword.Text.Trim() != "" && Name.Text.Trim() != "" && Email.Text.Trim() != "")
            {
                if (Username.Text.Trim() != "" && Password.Text.Trim() != "" && cnfrmPassword.Text.Trim() != "" && Name.Text.Trim() != "" && Email.Text.Trim() != "")
                {
                    if (Password.Text == cnfrmPassword.Text)
                    {
                        string nombre;
                        string encriptada;
                        string usuario;
                        string correo;
                        string cargo;

                        nombre = Name.Text;
                        usuario = Username.Text;
                        encriptada = System.Text.Encoding.UTF8.EncodeBase64(Password.Text);
                        correo = Email.Text;
                        cargo = "Usuario";
                        if (conexiones.UsuariosRepetidos(usuario, encriptada, nombre, correo, cargo) == 0)
                        {

                            alerta.Text = "<script>Swal.fire('Registrado con éxito','¡Gracias por preferirnos!','success'); </script>";

                            Name.Text = "";
                            Username.Text = "";
                            Email.Text = "";
                            Password.Text = "";
                            cnfrmPassword.Text = "";
                            Response.Redirect("Login.aspx");


                        }
                        else
                        {
                            alerta.Text = "<script>Swal.fire('Este usuario ya existe','Escoge un nuevo nombre de usuario','error'); </script>";

                        }
                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('Contraseña incorrecta','Repita su contraseña.','error');</script>";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('OOPS','NO deje espacios en blanco','error') </script>";
                }
            }
        }
    }
}