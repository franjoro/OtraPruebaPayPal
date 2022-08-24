using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace OtraPruebaPayPal
{
    public partial class RegisterEn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                        encriptada = EncryptString(Password.Text, initVector);
                        correo = Email.Text;
                        cargo = "Usuario";
                        if (conexiones.UsuariosRepetidos(usuario, encriptada, nombre, correo, cargo) == 0)
                        {

                            alerta.Text = "<script>Swal.fire('Successfully registered','¡Thanks for choosing us!','success'); </script>";

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