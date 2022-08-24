using MySql.Data.MySqlClient;
using System;
using System.IO;
using System.Security.Cryptography;

namespace OtraPruebaPayPal
{
    public partial class LoginEn : System.Web.UI.Page
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
                System.Diagnostics.Debug.WriteLine(contra);

                usuario = Username.Text;

                datos1.valorGlobal = usuario;


                MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= turismoredb; Uid= root; pwd=info2022;");
                //MySqlConnection conexion = datos.ObtenerConexion();
                var cmd = "SELECT id from usuarios WHERE username='" + usuario + "' AND password= '" + contra + "';";
                MySqlCommand comando = new MySqlCommand(cmd, conexion);
                conexion.Open();
                int retorno = Convert.ToInt32(comando.ExecuteScalar());
                if (retorno != 0)
                {
                    MySqlCommand val = new MySqlCommand("SELECT cargo FROM usuarios", conexion);
                    string admin = Convert.ToString(val.ExecuteScalar());
                    if (admin != "Administrador")
                    {
                        Session["usermane"] = Username.Text;
                        Response.Redirect("default.aspx");
                    }
                    else
                    {
                        Session["usermane"] = Username.Text;
                        Response.Redirect("Administradores.aspx");
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Algo salio mal', 'Nombre de usuario o contraseña son incorrectos', 'error') </script>";
                    Password.Text = "";
                    Username.Text = "";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('Error', 'No deje espacios en blancooopo', 'error') </script>";
            }

        }
        private const string initVector = "emmanuelinfo2022";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Encrypt
        public static string EncryptString(string plainText, string passPhrase)
        {
            return "";
          /*  byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
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
            return Convert.ToBase64String(cipherTextBytes); */
        }
    }
}