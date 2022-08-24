using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtraPruebaPayPal
{
    public partial class Usulután : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    String nombre = Session["usermane"].ToString();

            //}
            //catch (Exception ex)
            //{
            //    Response.Redirect("AgregarImagen.aspx");
            //}
            cargarCarrusel();
        }

        protected void cargarCarrusel()
        {
            string[] datos = conexiones.ObtenerImagenesUsulutan();
            IndicatorsLiteral.Text = datos[1];
            ImagesLiteral.Text = datos[0];
        }

        protected void btnAgregarImagen_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarImagenUsulután.aspx");
        }

        protected void btnEditarImagen_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarImagenUsulután.aspx");
        }
    }
}