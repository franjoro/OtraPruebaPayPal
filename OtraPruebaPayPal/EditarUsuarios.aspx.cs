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
    public partial class EditarUsuarios : System.Web.UI.Page
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
            Response.Redirect("default.aspx");
        }

        protected void btnSeleccionar(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM usuarios WHERE id=@id", conexion);
                comand.Parameters.AddWithValue("@id", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Sea seleccionado con exito.', '', 'success'); </script>";

                    txtid.Text = registro["id"].ToString();
                    txtNombre.Text = registro["nombre_usuario"].ToString();
                    txtUsername.Text = registro["username"].ToString();
                    txtCorreo.Text = registro["correo"].ToString();
                    txtPassword.Text = DecryptString(registro["password"].ToString(), initVector);
                    txtCargo.Text = registro["cargo"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal Intentalo otra vez', 'Verifique que ID se correcto', 'error') </script>";

            }
        }

        private const string initVector = "emmanuelinfo2022";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Encrypt

        public static string DecryptString(string cipherText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] cipherTextBytes = Convert.FromBase64String(cipherText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform decryptor = symmetricKey.CreateDecryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream(cipherTextBytes);
            CryptoStream cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);
            byte[] plainTextBytes = new byte[cipherTextBytes.Length];
            int decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);
            memoryStream.Close();
            cryptoStream.Close();
            return Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);
        }

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

        protected void btnEditar(object sender, EventArgs e)
        {
            if (txtNombre.Text.Trim() != "" && txtUsername.Text.Trim() != "" && txtCargo.Text.Trim() != "" && txtCorreo.Text.Trim() != "" && txtPassword.Text.Trim() != "")
            {

                MySqlConnection conexion = new MySqlConnection("server=127.0.0.1; database=turismoredb; Uid=root; pwd=info2022;");
                string query = "UPDATE usuarios SET nombre_usuario = @usuario,  username = @username, correo = @correo, password=@password, cargo = @cargo WHERE id=@id";
                MySqlCommand comando = new MySqlCommand(query, conexion);

                comando.Parameters.AddWithValue("@id", txtid.Text);
                comando.Parameters.AddWithValue("@usuario", txtNombre.Text);
                comando.Parameters.AddWithValue("@username", txtUsername.Text);
                comando.Parameters.AddWithValue("@correo", txtCorreo.Text);
                comando.Parameters.AddWithValue("@password", EncryptString(txtPassword.Text, initVector));
                comando.Parameters.AddWithValue("@cargo", txtCargo.Text);

                comando.ExecuteNonQuery();
                conexion.Close();
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

                txtNombre.Text = "";
                txtUsername.Text = "";
                txtCorreo.Text = "";
                txtPassword.Text = "";
                txtCargo.Text = "";
                alerta.Text = "<script>Swal.fire('Su producto se Editado con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarUsuarios.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Response.Redirect("EliminarUsuarios.aspx");
        }
    }

}