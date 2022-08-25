using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtraPruebaPayPal
{
    public partial class EditarImagen : System.Web.UI.Page
    {
        int idImagenAtt;

        protected void Page_Load(object sender, EventArgs e)
        {
            string idDept = Request.QueryString["dpt"];
            cargar_datos(idDept);
            
        }

        protected void ListaImagenes_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "cargarDatos") return;
            int id = Convert.ToInt32(e.CommandArgument);
            this.idImagenAtt = id;
            //System.Diagnostics.Debug.WriteLine("Aqui en boton seleccionar el id es  " + this.idImagenAtt);
            cargar_registro(id);

        }


        protected void btnInicio_Click(object sender, EventArgs e) 
        {
            string idDept = Request.QueryString["dpt"];
            Response.Redirect("detalleDepartamentos.aspx?dpt="+idDept);
        }

 

        protected void cargar_datos(string idDept)
        {
            if (!IsPostBack)
            {
             DataTable myTable = conexiones.ListarImagenes(idDept);
                ListaImagenes.DataSource = myTable;
                ListaImagenes.DataBind();
                ListaImagenes.UseAccessibleHeader = true;
                ListaImagenes.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            ListaImagenes.UseAccessibleHeader = true;
            ListaImagenes.HeaderRow.TableSection = TableRowSection.TableHeader;

        }

        protected void cargar_registro(int id)
        {
            try
            {
                string[] respuesta = conexiones.SeleccionarRegistroImagen(id);
                if (respuesta[0] != null && respuesta[0] != String.Empty && respuesta[0] != "")
                {
                    ImagePreview.ImageUrl = "/images/" + respuesta[0];
                    Texto.Text = respuesta[1];
                    DDLDepartamento.Text = respuesta[2];
                    IdImagen.Text = id.ToString();
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al obtener los datos', '', 'error');", true);
                }
            }
            catch (Exception exc)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al obtener los datos', '', 'error');", true);
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            string strFileName;
            string strFilePath;
            string strFolder;
            string idDept = Request.QueryString["dpt"];
            strFolder = Server.MapPath("./images/");
            int id;
            var isNumber = int.TryParse(IdImagen.Text.Trim(), out id);
            string texto = Texto.Text.Trim();
            string departamento = DDLDepartamento.Text.Trim();



            if (!Directory.Exists(strFolder))
            {
                Directory.CreateDirectory(strFolder);
            }


            if (PhotoFile.HasFile) //Verifica si se ha subido un archivo
            {
                // Obtener el nombre del archivo subido.
                strFileName = PhotoFile.PostedFile.FileName;
                strFileName = Path.GetFileName(strFileName);
                string foto = strFileName;
                // Guardando el archivo en el servidor
                strFilePath = strFolder + strFileName;
                if (!File.Exists(strFilePath)) //Si el archivo subido no existe, lo crea en el servidor
                {
                    PhotoFile.PostedFile.SaveAs(strFilePath);
                }
                



                int guardado = conexiones.ActualizarImagen(id, texto, foto, departamento);

                if (guardado == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Su Imagen se actualizó con éxito.', '', 'success');", true);
                    Response.Redirect("EditarImagen.aspx?dpt=" + idDept);
                    cargar_registro(id);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al actualizar la imagen1', '', 'error');", true);
                }
            }
            else //En caso de que no se actualice la foto que posee el registro
            {
                string foto = String.Empty;
                int guardado = conexiones.ActualizarImagen(id, texto, foto, departamento);

                if (guardado == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Su Imagen se actualizó con éxito.', '', 'success');", true);
                    Response.Redirect("EditarImagen.aspx?dpt=" + idDept);
                    cargar_registro(id);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al actualizar la imagen2', '', 'error');", true);
                }
            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string idDept = Request.QueryString["dpt"];
            int id;
            var isNumber = int.TryParse(IdImagen.Text.Trim(), out id);
            if (isNumber)
            {
                int eliminado = conexiones.EliminarRegistro(id);
                if (eliminado == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('El registro se eliminó con éxito.', '', 'success');", true);
                    Response.Redirect("EditarImagen.aspx?dpt=" + idDept);
                }
            }
            else
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Swal.fire('Hubo un error al eliminar la imagen', '', 'error');", true);

        }

        protected void DDLDepartamento_TextChanged(object sender, EventArgs e)
        {
            try
            {
                
            }
            catch
            {

            }
        }


    }
}