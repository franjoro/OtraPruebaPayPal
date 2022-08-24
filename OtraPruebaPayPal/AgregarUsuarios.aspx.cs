using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace OtraPruebaPayPal
{
    public partial class AgregarUsuarios : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=turismoredb; Uid=root; pwd=info2022;");
        protected void Page_Load(object sender, EventArgs e)
        {
            string usuario = Convert.ToString(Session["usermane"]);
            if (usuario != "Admin")
            {
                Response.Redirect("default.aspx");
            }
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from usuarios";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }




        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administradores.aspx");
        }

        private const string initVector = "emmanuelinfo2022";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Encrypt
        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);
        }
        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text.Trim() != "" && txtUsername.Text.Trim() != "" && txtPassword.Text.Trim() != "" && txtCorreo.Text.Trim() != "" && txtCargo.Text.Trim() != "")
            {
                try
                {
                    AggUsu pUsuario = new AggUsu();
                    pUsuario.Nombre = txtNombre.Text.Trim();
                    pUsuario.Username = txtUsername.Text.Trim();
                    pUsuario.Password = EncryptString(txtPassword.Text.Trim(), initVector);
                    pUsuario.Correo = txtCorreo.Text.Trim();
                    pUsuario.Cargo = txtCargo.Text.Trim();
                    int resultado = conexiones.agregar(pUsuario);
                    conec.Open();
                    MySqlCommand cmd = conec.CreateCommand();
                    cmd.CommandText = "select * from usuarios";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(dt);
                    gvdlista.DataSource = dt;
                    gvdlista.DataBind();
                    conec.Close();

                    alerta.Text = "<script>Swal.fire('Su producto se Agrego con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
                    txtNombre.Text = "";
                    txtUsername.Text = "";
                    txtPassword.Text = "";
                    txtCorreo.Text = "";
                    txtCargo.Text = "";
                }
                catch
                {
                    alerta.Text = "<script>Swal.fire('Algo salio mal', 'Intentalo otra vez', 'error') </script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarUsuarios.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarUsuarios.aspx");
        }
    }
}