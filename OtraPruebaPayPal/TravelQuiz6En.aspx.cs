using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtraPruebaPayPal
{
    public partial class TravelQuiz6En : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblCorrectas.Visible = false;
        }

        protected void salir_Click(object sender, EventArgs e)
        {
            Response.Redirect("TravelQuiz.aspx");
        }

        int n1, n2, n3, n4;
        protected void BtnVerificar_Click(object sender, EventArgs e)
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
            BtnVerificar.Enabled = false;
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