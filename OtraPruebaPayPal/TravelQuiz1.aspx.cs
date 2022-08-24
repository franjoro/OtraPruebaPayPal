using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace OtraPruebaPayPal
{
    public partial class TravelQuiz1 : System.Web.UI.Page
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
                    Label2.Text = "1 - ¿Cuál es la comida típica de Ahuachapán?";
                    Label3.Text = "2 - ¿Cuánto mide Ahuachapán?";
                    Label4.Text = "3 - ¿Cómo es el clima normalmente en Ahuachapán?";
                    Label5.Text = "4 - ¿Cual es la cabecera departamental de ahuachapan?";
                    //CORRECTAS
                    RadioButton3.Text = "Yuca";
                    RadioButton7.Text = "244,8 km²";
                    RadioButton8.Text = "21° - 31°";
                    RB4correcto.Text = "La ciudad de Ahuachapán";
                    //CORRECTAS
                    RB1correcto.Text = "Nuegados";
                    RadioButton4.Text = "Plátano frito";

                    RadioButton5.Text = "123,1 km²";
                    RB2correcto.Text = "365,9 km²";

                    RadioButton9.Text = "11° - 21°";
                    RB3correcto.Text = "25° - 32°";

                    RadioButton11.Text = "La Palma";
                    RadioButton13.Text = "El Congo";

                    Label1.Text = "Este es el número 2";

                }

                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////
                /////////////     FORMULARIO NUMERO 3   /////////////////
                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////

                if (ranNum == 3)
                {

                    Label2.Text = "1 - ¿Cúal es la población de Ahuachapán?";
                    Label3.Text = "2 - ¿Cuál es el gentilicio de Ahuachapán?";
                    Label4.Text = "3 - ¿Cuál es la comida típica de Ahuachapán?";
                    Label5.Text = "4 - ¿Cuánto mide Ahuachapán?";
                    //CORRECTAS
                    RB1correcto.Text = "129.750 hab.";
                    RadioButton5.Text = "Ahuachapanecos";
                    RB3correcto.Text = "Yuca";
                    RadioButton13.Text = "244,8 km²";
                    //CORRECTAS
                    RadioButton3.Text = "421.123 hab.";
                    RadioButton4.Text = "264.429 hab.";

                    RB2correcto.Text = "Ahuachapecos";
                    RadioButton7.Text = "Ahuachaquinos";

                    RadioButton8.Text = "Elotes Locos";
                    RadioButton9.Text = "Tamales";

                    RadioButton11.Text = "103,8 km²";
                    RB4correcto.Text = "500,9 km²";

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

                    Label2.Text = "1 - ¿Cuál es el lugar turístico más importante de Ahuachapán?";
                    Label3.Text = "2 - ¿Cómo es el clima normalmente en Ahuachapán?";
                    Label4.Text = "3 - ¿Cuál es el gentilicio de Ahuachapán?";
                    Label5.Text = "4 - ¿Cual es la cabecera departamental de ahuachapan?";
                    //CORRECTAS
                    RB1correcto.Text = "La Parroquia de La Asunción";
                    RB2correcto.Text = "21° - 31°";
                    RadioButton8.Text = "Ahuachapanecos";
                    RadioButton11.Text = "La ciudad de Ahuachapán";
                    //CORRECTAS

                    RadioButton3.Text = "Pasaje La Concordia";
                    RadioButton4.Text = "La Alcaldía moderna";

                    RadioButton5.Text = "31° - 35°";
                    RadioButton7.Text = "11° - 19°";

                    RadioButton9.Text = "Ahuachicos";
                    RB3correcto.Text = "Ahuanecos";

                    RB4correcto.Text = "Comasagua";
                    RadioButton13.Text = "Chalchuapa";




                    Label1.Text = "Este es el número 4";
                }

                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////
                /////////////     FORMULARIO NUMERO 5   /////////////////
                /////////////////////////////////////////////////////////
                /////////////////////////////////////////////////////////

                if (ranNum == 5)
                {
                    Label2.Text = "1 - ¿Cual es la cabecera departamental de ahuachapan?";
                    Label3.Text = "2 - ¿Cuál es el lugar turístico más importante de Ahuachapán?";
                    Label4.Text = "3 - ¿Cuál es el lugar más visitado de Ahuachapán?";
                    Label5.Text = "4 - ¿Cuál es la comida típica de Ahuachapán?";
                    //CORRECTAS
                    RadioButton4.Text = "La ciudad de Ahuachapán";
                    RadioButton7.Text = "La Parroquia de La Asunción";
                    RB3correcto.Text = "Los Ausoles, Laguna el Espino";
                    RadioButton11.Text = "Yuca";
                    //CORRECTAS
                    RB1correcto.Text = "Chalchuapa";
                    RadioButton3.Text = "Malacatiupán";

                    RadioButton5.Text = "La Alcaldía moderna";
                    RB2correcto.Text = "Pasaje La Concordia";

                    RadioButton8.Text = "Los saltos de Atehuecillas y de Malacatiupán";
                    RadioButton9.Text = "La Parroquia de La Asunción";

                    RB4correcto.Text = "Tamales";
                    RadioButton13.Text = "Pastelitos";




                    Label1.Text = "Este es el número 5";
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void RBcorrecto_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void salir_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        int n1, n2, n3, n4;
        protected void RadioButton8_CheckedChanged(object sender, EventArgs e)
        {

        }

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

                ImagenC1.Visible = true;
                ImagenIC2.Visible = true;
                ImagenIC3.Visible = true;

                ImagenIC4.Visible = true;
                ImagenC5.Visible = true;
                ImagenIC6.Visible = true;

                ImagenIC7.Visible = true;
                ImagenIC8.Visible = true;
                ImagenC9.Visible = true;

                ImagenIC10.Visible = true;
                ImagenC11.Visible = true;
                ImagenIC12.Visible = true;



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

                ImagenIC1.Visible = true;
                ImagenC2.Visible = true;
                ImagenIC3.Visible = true;

                ImagenIC4.Visible = true;
                ImagenIC5.Visible = true;
                ImagenC6.Visible = true;

                ImagenC7.Visible = true;
                ImagenIC8.Visible = true;
                ImagenIC9.Visible = true;

                ImagenIC10.Visible = true;
                ImagenC11.Visible = true;
                ImagenIC12.Visible = true;


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

                ImagenC1.Visible = true;
                ImagenIC2.Visible = true;
                ImagenIC3.Visible = true;

                ImagenC4.Visible = true;
                ImagenIC5.Visible = true;
                ImagenIC6.Visible = true;

                ImagenIC7.Visible = true;
                ImagenIC8.Visible = true;
                ImagenC9.Visible = true;

                ImagenIC10.Visible = true;
                ImagenIC11.Visible = true;
                ImagenC12.Visible = true;

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

                ImagenC1.Visible = true;
                ImagenIC2.Visible = true;
                ImagenIC3.Visible = true;

                ImagenIC4.Visible = true;
                ImagenC5.Visible = true;
                ImagenIC6.Visible = true;

                ImagenC7.Visible = true;
                ImagenIC8.Visible = true;
                ImagenIC9.Visible = true;

                ImagenC10.Visible = true;
                ImagenIC11.Visible = true;
                ImagenIC12.Visible = true;

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

                ImagenIC1.Visible = true;
                ImagenIC2.Visible = true;
                ImagenC3.Visible = true;

                ImagenIC4.Visible = true;
                ImagenIC5.Visible = true;
                ImagenC6.Visible = true;

                ImagenIC7.Visible = true;
                ImagenIC8.Visible = true;
                ImagenC9.Visible = true;

                ImagenC10.Visible = true;
                ImagenIC11.Visible = true;
                ImagenIC12.Visible = true;

            }
        }
    }
}