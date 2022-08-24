using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtraPruebaPayPal
{
    public partial class TravelQuiz12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Random num = new Random();
                int ranNum = num.Next(1, 6);

                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////
                /////////////     FORMULARIO NUMERO 1   /////////////////
                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////

                if (ranNum == 1)
                {
                    Label1.Text = "Este es el número 1";
                }

                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////
                /////////////     FORMULARIO NUMERO 2   /////////////////
                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////

                if (ranNum == 2)
                {
                    Label2.Text = "1 - Pregunta Formulario 2";
                    Label3.Text = "2 - Pregunta Formulario 2";
                    Label4.Text = "3 - Pregunta Formulario 2";
                    Label5.Text = "4 - Pregunta Formulario 2";
                    RB4correcto.Text = "Este es correcto - 2";
                    RadioButton8.Text = "Este es correcto - 2";
                    RadioButton7.Text = "Este es correcto - 2";
                    RadioButton3.Text = "Este es correcto - 2";
                    Label1.Text = "Este es el número 2";

                }

                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////
                /////////////     FORMULARIO NUMERO 3   /////////////////
                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////

                if (ranNum == 3)
                {
                    Label1.Text = "Este es el número 3";
                    Label2.Text = "1 - Pregunta Formulario 3";
                    Label3.Text = "2 - Pregunta Formulario 3";
                    Label4.Text = "3 - Pregunta Formulario 3";
                    Label5.Text = "4 - Pregunta Formulario 3";
                    RB1correcto.Text = "Este es correcto - 3";
                    RadioButton5.Text = "Este es correcto - 3";
                    RB3correcto.Text = "Este es correcto - 3";
                    RadioButton13.Text = "Este es correcto - 3";
                    Label1.Text = "Este es el número 3";

                }

                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////
                /////////////     FORMULARIO NUMERO 4   /////////////////
                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////



                if (ranNum == 4)
                {
                    Label1.Text = "Este es el número 4";
                    Label2.Text = "1 - Pregunta Formulario 4";
                    Label3.Text = "2 - Pregunta Formulario 4";
                    Label4.Text = "3 - Pregunta Formulario 4";
                    Label5.Text = "4 - Pregunta Formulario 4";
                    RB1correcto.Text = "Este es correcto - 4";
                    RB2correcto.Text = "Este es correcto - 4";
                    RadioButton8.Text = "Este es correcto - 4";
                    RadioButton11.Text = "Este es correcto - 4";
                    Label1.Text = "Este es el número 4";
                }

                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////
                /////////////     FORMULARIO NUMERO 5   /////////////////
                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////

                if (ranNum == 5)
                {
                    Label1.Text = "Este es el número 5";
                    Label2.Text = "1 - Pregunta Formulario 5";
                    Label3.Text = "2 - Pregunta Formulario 5";
                    Label4.Text = "3 - Pregunta Formulario 5";
                    Label5.Text = "4 - Pregunta Formulario 5";
                    RadioButton4.Text = "Este es correcto - 5";
                    RadioButton7.Text = "Este es correcto - 5";
                    RB3correcto.Text = "Este es correcto - 5";
                    RadioButton11.Text = "Este es correcto - 5";
                    Label1.Text = "Este es el número 5";
                }

            }

        }

        protected void salir_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        int n1, n2, n3, n4;

        protected void pop_Click(object sender, EventArgs e)
        {
            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////
            /////////////     FORMULARIO NUMERO 1   /////////////////
            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////


            if (Label1.Text == "Este es el número 1")
            {
                if (RB1correcto.Checked == true)
                {
                    n1 = 1;
                }

                if (RB2correcto.Checked == true)
                {
                    n2 = 1;
                }
                if (RB3correcto.Checked == true)
                {
                    n3 = 1;
                }
                if (RB4correcto.Checked == true)
                {
                    n4 = 1;
                }
                int resultado = n1 + n2 + n3 + n4;


                if (resultado <= 2)
                {
                    LblCorrectas.Text = "Intenta de nuevo, tu resultado fue: " + resultado + "/4 :(";
                }

                if (resultado == 3)
                {
                    LblCorrectas.Text = "¡Casi! Tu resultado fue: " + resultado + "/4";
                }
                if (resultado == 4)
                {
                    LblCorrectas.Text = "¡Excelente, tu resultado fue: " + resultado + "/4 :D";
                }
                LblCorrectas.Visible = true;
                pop.Enabled = false;
                RB1correcto.Enabled = false;
                RadioButton3.Enabled = false;
                RadioButton4.Enabled = false;
                RadioButton5.Enabled = false;
                RB2correcto.Enabled = false;
                RadioButton7.Enabled = false;
                RadioButton8.Enabled = false;
                RadioButton9.Enabled = false;
                RB3correcto.Enabled = false;
                RadioButton11.Enabled = false;
                RB4correcto.Enabled = false;
                RadioButton13.Enabled = false;

            }

            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////
            /////////////     FORMULARIO NUMERO 2   /////////////////
            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////

            if (Label1.Text == "Este es el número 2")
            {
                if (RB4correcto.Checked == true)
                {
                    n1 = 1;
                }

                if (RadioButton8.Checked == true)
                {
                    n2 = 1;
                }
                if (RadioButton7.Checked == true)
                {
                    n3 = 1;
                }
                if (RadioButton3.Checked == true)
                {
                    n4 = 1;
                }
                int resultado = n1 + n2 + n3 + n4;


                if (resultado <= 2)
                {
                    LblCorrectas.Text = "Intenta de nuevo, tu resultado fue: " + resultado + "/4 :(";
                }

                if (resultado == 3)
                {
                    LblCorrectas.Text = "¡Casi! Tu resultado fue: " + resultado + "/4";
                }
                if (resultado == 4)
                {
                    LblCorrectas.Text = "¡Excelente, tu resultado fue: " + resultado + "/4 :D";
                }
                LblCorrectas.Visible = true;
                pop.Enabled = false;
                RB1correcto.Enabled = false;
                RadioButton3.Enabled = false;
                RadioButton4.Enabled = false;
                RadioButton5.Enabled = false;
                RB2correcto.Enabled = false;
                RadioButton7.Enabled = false;
                RadioButton8.Enabled = false;
                RadioButton9.Enabled = false;
                RB3correcto.Enabled = false;
                RadioButton11.Enabled = false;
                RB4correcto.Enabled = false;
                RadioButton13.Enabled = false;
            }
            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////
            /////////////     FORMULARIO NUMERO 3   /////////////////
            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////

            if (Label1.Text == "Este es el número 3")
            {
                if (RB1correcto.Checked == true)
                {
                    n1 = 1;
                }

                if (RadioButton5.Checked == true)
                {
                    n2 = 1;
                }
                if (RB3correcto.Checked == true)
                {
                    n3 = 1;
                }
                if (RadioButton13.Checked == true)
                {
                    n4 = 1;
                }
                int resultado = n1 + n2 + n3 + n4;


                if (resultado <= 2)
                {
                    LblCorrectas.Text = "Intenta de nuevo, tu resultado fue: " + resultado + "/4 :(";
                }

                if (resultado == 3)
                {
                    LblCorrectas.Text = "¡Casi! Tu resultado fue: " + resultado + "/4";
                }
                if (resultado == 4)
                {
                    LblCorrectas.Text = "¡Excelente, tu resultado fue: " + resultado + "/4 :D";
                }
                LblCorrectas.Visible = true;
                pop.Enabled = false;
                RB1correcto.Enabled = false;
                RadioButton3.Enabled = false;
                RadioButton4.Enabled = false;
                RadioButton5.Enabled = false;
                RB2correcto.Enabled = false;
                RadioButton7.Enabled = false;
                RadioButton8.Enabled = false;
                RadioButton9.Enabled = false;
                RB3correcto.Enabled = false;
                RadioButton11.Enabled = false;
                RB4correcto.Enabled = false;
                RadioButton13.Enabled = false;
            }
            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////
            /////////////     FORMULARIO NUMERO 4   /////////////////
            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////
            if (Label1.Text == "Este es el número 4")
            {
                if (RB1correcto.Checked == true)
                {
                    n1 = 1;
                }

                if (RB2correcto.Checked == true)
                {
                    n2 = 1;
                }
                if (RadioButton8.Checked == true)
                {
                    n3 = 1;
                }
                if (RadioButton11.Checked == true)
                {
                    n4 = 1;
                }
                int resultado = n1 + n2 + n3 + n4;


                if (resultado <= 2)
                {
                    LblCorrectas.Text = "Intenta de nuevo, tu resultado fue: " + resultado + "/4 :(";
                }

                if (resultado == 3)
                {
                    LblCorrectas.Text = "¡Casi! Tu resultado fue: " + resultado + "/4";
                }
                if (resultado == 4)
                {
                    LblCorrectas.Text = "¡Excelente, tu resultado fue: " + resultado + "/4 :D";
                }
                LblCorrectas.Visible = true;
                pop.Enabled = false;
                RB1correcto.Enabled = false;
                RadioButton3.Enabled = false;
                RadioButton4.Enabled = false;
                RadioButton5.Enabled = false;
                RB2correcto.Enabled = false;
                RadioButton7.Enabled = false;
                RadioButton8.Enabled = false;
                RadioButton9.Enabled = false;
                RB3correcto.Enabled = false;
                RadioButton11.Enabled = false;
                RB4correcto.Enabled = false;
                RadioButton13.Enabled = false;
            }


            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////
            /////////////     FORMULARIO NUMERO 5   /////////////////
            /////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////
            if (Label1.Text == "Este es el número 5")
            {
                if (RadioButton4.Checked == true)
                {
                    n1 = 1;
                }

                if (RadioButton7.Checked == true)
                {
                    n2 = 1;
                }
                if (RB3correcto.Checked == true)
                {
                    n3 = 1;
                }
                if (RadioButton11.Checked == true)
                {
                    n4 = 1;
                }
                int resultado = n1 + n2 + n3 + n4;


                if (resultado <= 2)
                {
                    LblCorrectas.Text = "Intenta de nuevo, tu resultado fue: " + resultado + "/4 :(";
                }

                if (resultado == 3)
                {
                    LblCorrectas.Text = "¡Casi! Tu resultado fue: " + resultado + "/4";
                }
                if (resultado == 4)
                {
                    LblCorrectas.Text = "¡Excelente, tu resultado fue: " + resultado + "/4 :D";
                }
                LblCorrectas.Visible = true;
                pop.Enabled = false;
                RB1correcto.Enabled = false;
                RadioButton3.Enabled = false;
                RadioButton4.Enabled = false;
                RadioButton5.Enabled = false;
                RB2correcto.Enabled = false;
                RadioButton7.Enabled = false;
                RadioButton8.Enabled = false;
                RadioButton9.Enabled = false;
                RB3correcto.Enabled = false;
                RadioButton11.Enabled = false;
                RB4correcto.Enabled = false;
                RadioButton13.Enabled = false;
            }
        }
    }
}