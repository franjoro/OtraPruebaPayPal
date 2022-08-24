using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtraPruebaPayPal
{
    public partial class PlanViaje1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("compra");
        }
        protected void btnMapa_Click(object sender, EventArgs e)
        {
            Response.Redirect("User Mapa.aspx");
        }

        protected void Compra1_Click(object sender, EventArgs e)
        {
            Session["compra"] = 45;
            Response.Redirect("SeleccionDepartamento.aspx");
        }

        protected void Compra2_Click(object sender, EventArgs e)
        {
            Session["compra"] = 90;
            Response.Redirect("SeleccionDepartamento.aspx");
        }

        protected void Compra3_Click(object sender, EventArgs e)
        {
            Session["compra"] = 70;
            Response.Redirect("SeleccionDepartamento.aspx");
        }

        protected void Compra4_Click(object sender, EventArgs e)
        {
            Session["compra"] = 110;
            Response.Redirect("SeleccionDepartamento.aspx");
        }
    }
}