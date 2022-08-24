using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtraPruebaPayPal
{
    public partial class San_Salvador : System.Web.UI.Page
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
            string idDept = Request.QueryString["dpt"];


            string[] dataDpt = conexiones.obtenerTextoDepartamentos(idDept);
            cargarCarrusel(idDept);
            nameDpt.Text = dataDpt[0];
            nameDpt2.Text = dataDpt[0];
            nameDpt3.Text = dataDpt[0];
            descripcion.Text = dataDpt[1];
        }

        protected void cargarCarrusel(string idDept)
        {
            string[] datos = conexiones.ObtenerImagenesCarrousel(idDept);
            IndicatorsLiteral.Text = datos[1];
            ImagesLiteral.Text = datos[0];
        }

        protected void btnAgregarImagen_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarImagenSanSalvador.aspx");
        }

        protected void btnEditarImagen_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarImagenSanSalvador.aspx");
        }
    }
}