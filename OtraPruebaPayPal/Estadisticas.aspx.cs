using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace OtraPruebaPayPal
{
    public partial class Estadisticas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string usuario = Convert.ToString(Session["usermane"]);
            //if (usuario != "Admin")
            //{
            //    Response.Redirect("default.aspx");
            //}
            //****************************Visitas Página Principal***************************************
            MySqlConnection conexion = datos.ObtenerConexion();
            int id1 = 1;
            MySqlCommand princi = new MySqlCommand("SELECT visitas FROM estadisticas WHERE id= '" + id1 + "'", conexion);
            string pagprinci = Convert.ToString(princi.ExecuteScalar());
            pagprincipal.Text = pagprinci;
            int cant1 = Convert.ToInt16(pagprinci.Length);
            cant1 = cant1 * 20;
            string convert1 = Convert.ToString(cant1);
            convert1 = convert1 + "px";
            pagprincipal.Style.Add("max-width", convert1);
            //******************************************Nota Quiz1***************************************
            int id2 = 2;
            MySqlCommand quiz1 = new MySqlCommand("SELECT visitas FROM estadisticas WHERE id= '" + id2 + "'", conexion);
            string notaquiz1 = Convert.ToString(quiz1.ExecuteScalar());
            notaquiz.Text = notaquiz1;
            int cant2 = Convert.ToInt16(notaquiz1.Length);
            cant2 = cant2 * 20;
            string convert2 = Convert.ToString(cant2);
            convert2 = convert2 + "px";
            notaquiz.Style.Add("max-width", convert1);
            //*****************************************Plan Estandar**************************************
            planestandar.Style.Add("max-width", convert1);
            planpareja.Style.Add("max-width", convert1);
            planfamiliar.Style.Add("max-width", convert1);
        }
    }
}