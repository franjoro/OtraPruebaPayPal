using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtraPruebaPayPal
{
    public partial class User_Mapa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTransportes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Transporte.aspx");
        }

        protected void btnIraseleccion_Click(object sender, EventArgs e)
        {
            Response.Redirect("SeleccionDepartamento.aspx");
        }
    }
}