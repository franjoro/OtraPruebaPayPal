using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace OtraPruebaPayPal
{
    public partial class EliminarUsuarios : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=turismoredb; Uid=root; pwd=info2022;");
        protected void Page_Load(object sender, EventArgs e)
        {
            string usuario = Convert.ToString(Session["usermane"]);
            if (usuario != "Admin")
            {
                Response.Redirect("default.aspx");
            }
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from usuarios";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM usuarios WHERE id=@id", conexion);
                comand.Parameters.AddWithValue("@id", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Sea seleccionado con exito.', '', 'success'); </script>";

                    txtid.Text = registro["id"].ToString();
                    txtNombre.Text = registro["nombre_usuario"].ToString();
                    txtUsername.Text = registro["username"].ToString();
                    txtCorreo.Text = registro["correo"].ToString();
                    txtPassword.Text = registro["password"].ToString();
                    txtCargo.Text = registro["cargo"].ToString();
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal Intentalo otra vez', 'Verifique que ID se correcto', 'error') </script>";

            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtid.Text.Trim() != "" && txtNombre.Text.Trim() != "" && txtUsername.Text.Trim() != "" && txtCargo.Text.Trim() != "" && txtCorreo.Text.Trim() != "" && txtPassword.Text.Trim() != "")
            {

                conexiones.Eliminar2(Convert.ToInt32(txtid.Text));
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from usuarios";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlista.DataSource = dt;
                gvdlista.DataBind();



                txtNombre.Text = "";
                txtUsername.Text = "";
                txtCorreo.Text = "";
                txtPassword.Text = "";
                txtCargo.Text = "";
                alerta.Text = "<script>Swal.fire('Su producto se Eliminado con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administradores.aspx");
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarUsuarios.aspx");
        }
    }

}