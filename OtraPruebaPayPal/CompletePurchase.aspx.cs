using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;
using System.Net.Mail;
using System.Net;
using MySql.Data.MySqlClient;

namespace OtraPruebaPayPal
{
    public partial class CompletePurchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConfirmPurchase_Click(object sender, EventArgs e)
        {
            var confing = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(confing).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var paymentId = Session["paymentId"].ToString();

            if (!String.IsNullOrEmpty(paymentId))
            {
                var payment = new Payment() { id = paymentId };
                var payerId = Request.QueryString["PayerID"].ToString();
                var paymentExecution = new PaymentExecution() { payer_id = payerId };
                var executedPayment = payment.Execute(apiContext, paymentExecution);
                litInformation.Text = "<p>Your order has been completed</p>";
                btnConfirmPurchase.Visible = false;
            }
        }

        protected void ComprobanteButton_Click(object sender, EventArgs e)
        {
            if (Username.Text != "")
            {
                try
                {

                    string user = Username.Text;
                    MySqlConnection conexion = datos.ObtenerConexion();
                    var cmd1 = "Select correo from usuarios where username ='" + user + "';";
                    var cmd2 = "Select nombre_usuario from usuarios where username ='" + user + "';";


                    MySqlCommand obtenerCorreo = new MySqlCommand(cmd1, conexion);
                    obtenerCorreo.Parameters.Add("@Name", MySqlDbType.VarChar);
                    MySqlCommand obtenerNombre = new MySqlCommand(cmd2, conexion);

                    string mail;
                    string nombrecliente;
                    conexion.Open();
                    mail = (string)obtenerCorreo.ExecuteScalar();
                    nombrecliente = (string)obtenerNombre.ExecuteScalar();

                    string correo = mail;// cambiar por correo del usuario que realiza la compra
                    string nombre = "Turismore";

                    var fromAddress = new MailAddress("turismoresv503@gmail.com", "Turismore");
                    const string fromPassword = "tgccyscdwnwcpgvv";
                    var toAddress = new MailAddress(correo, nombre);//Dirección de correo y nombre que se muestra				
                    const string subject = "Su comprobante";//Asunto del correo
                    string body = "Estimado " + nombrecliente + ", gracias por preferirnos y confiar en nosotros. En el presente correo se le manda el comprobante de pago como usted lo habia solicitado para no tener ningun problema en el futuro, le agredecemos y le deseamos que tenga una feliz expedicion a donde usted se diriga." + " Su compra fue de: $80.";
                    //Fin de datos del envío


                    var smtp = new SmtpClient
                    {
                        Host = "smtp.gmail.com",
                        Port = 587,
                        EnableSsl = true,
                        DeliveryMethod = SmtpDeliveryMethod.Network,
                        UseDefaultCredentials = false,
                        Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                    };
                    using (var message = new MailMessage(fromAddress, toAddress)
                    {
                        Subject = subject,
                        Body = body
                    })
                    {
                        smtp.Send(message);//Enviar el correo
                    }

                    alerta.Text = "<script>Swal.fire('Comprobante enviado a su correo', 'Comprobante enviado', 'success');</script>";
                }
                catch
                {
                    alerta.Text = "<script>Swal.fire('Algo salió mal', 'Revisa tu usuario.', 'error');</script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('Error', 'No deje espacios en blanco.', 'error');</script>";
            }
        }
    }
}