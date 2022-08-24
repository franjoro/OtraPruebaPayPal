using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;


namespace OtraPruebaPayPal
{
    public class conexiones
    {
        //******************************* LOGIN **************************
        public static string[] Login(string username, string password )
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT username, cargo FROM usuarios WHERE username = '{0}' AND password = '{1}'", username, password), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(0);
                retorno[1] = reader.GetString(1);
            }

            return retorno;
        }

        public static int VisitasPagPrincipal(int id, int visitas)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;
            comando = new MySqlCommand(string.Format("UPDATE estadisticas SET visitas = '{0}' WHERE Id = {1}", visitas, id), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }
        public static int VisitasQuiz1(int id, int visitas)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;
            comando = new MySqlCommand(string.Format("UPDATE estadisticas SET visitas = '{0}' WHERE Id = {1}", visitas, id), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }
        public static int VisitasAhuachapan(int id, int visitas)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;
            comando = new MySqlCommand(string.Format("UPDATE estadisticas SET visitas = '{0}' WHERE Id = {1}", visitas, id), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }
        public static int UsuariosRepetidos(string usuario, string contra, string nombre, string correo, string cargo)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT id FROM usuarios WHERE nombre_usuario= '" + nombre + "' AND password = '" + contra + "' ", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {

            }
            else
            {
                conexiones.AgregarUsuario(nombre, usuario, contra, correo, cargo);

            }
            conexion.Close();
            return valor;
        }
        public static int AgregarUsuario(string nombre, string usuario, string contra, string correo, string cargo)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into usuarios (nombre_usuario, username, password, correo, cargo) values ('{0}','{1}','{2}','{3}','{4}')", nombre, usuario, contra, correo, cargo), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        public static int agregar(AggUsu pUsuario)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into usuarios (id, nombre_usuario, username, password, correo, cargo) values('{0}','{1}','{2}','{3}','{4}','{5}')", pUsuario.Id, pUsuario.Nombre, pUsuario.Username, pUsuario.Password, pUsuario.Correo, pUsuario.Cargo), datos.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;
        }
        public static int Eliminar2(int pId)
        {
            int retorno = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(string.Format("Delete From usuarios where id={0}", pId), conexion);

            retorno = comando.ExecuteNonQuery();
            conexion.Close();

            return retorno;
        }

        //*******************************CRUDS de Carruseles**************************
        public static int agregar(Agregar pAlumno)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into productos (ID, Marca, Producto, Precio, Cantidad) values('{0}','{1}','{2}','{3}','{4}')", pAlumno.Id, pAlumno.Marca, pAlumno.Producto, pAlumno.Precio, pAlumno.Cantidad), datos.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;
        }
        public static int Eliminar(int pId)
        {
            int retorno = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(string.Format("Delete From productos where ID={0}", pId), conexion);

            retorno = comando.ExecuteNonQuery();
            conexion.Close();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenAhuachapán(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_ahuachapan (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesAhuachapán()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_ahuachapan;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenAhuachapán(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_ahuachapan WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesAhuachapán()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_ahuachapan"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenAhuachapán(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_ahuachapan SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_ahuachapan SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroAhuachapán(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_ahuachapan WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenCabañas(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_cabañas (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesCabañas()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_cabañas;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenCabañas(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_cabañas WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesCabañas()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_cabañas"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenCabañas(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_cabañas SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_cabañas SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroCabañas(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_cabañas WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenChalatenango(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_chalatenango (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesChalatenango()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_chalatenango;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenChalatenango(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_chalatenango WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesChalatenango()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_chalatenango"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenChalatenango(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_chalatenango SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_chalatenango SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroChalatenango(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_chalatenango WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenCuscatlan(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_cuscatlan (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesCuscatlan()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_cuscatlan;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenCuscatlan(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_cuscatlan WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesCuscatlan()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_cuscatlan"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenCuscatlan(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_cuscatlan SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_cuscatlan SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroCuscatlan(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_cuscatlan WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenLaLibertad(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_lalibertad (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesLaLibertad()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_lalibertad;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenLaLibertad(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_lalibertad WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesLaLibertad()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_lalibertad"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenLaLibertad(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_lalibertad SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_lalibertad SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroLaLibertad(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_lalibertad WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenLaPaz(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_lapaz (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesLaPaz()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_lapaz;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenLaPaz(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_lapaz WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesLaPaz()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_lapaz"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenLaPaz(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_lapaz SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_lapaz SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroLaPaz(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_lapaz WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenLaUnion(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_launion (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesLaUnion()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_launion;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenLaUnion(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_launion WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesLaUnion()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_launion"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenLaUnion(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_launion SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_launion SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroLaUnion(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_launion WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenMorazan(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_morazan (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesMorazan()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_morazan;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenMorazan(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_morazan WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesMorazan()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_morazan"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenMorazan(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_morazan SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_morazan SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroMorazan(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_morazan WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenSanMiguel(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_sanmiguel (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesSanMiguel()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_sanmiguel;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenSanMiguel(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_sanmiguel WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesSanMiguel()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_sanmiguel"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenSanMiguel(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_sanmiguel SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_sanmiguel SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroSanMiguel(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_sanmiguel WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenSanSalvador(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_sansalvador (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesSanSalvador()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_sansalvador;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenSanSalvador(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_sansalvador WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesSanSalvador()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_sansalvador"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenSanSalvador(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_sansalvador SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_sansalvador SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroSanSalvador(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_sansalvador WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenSantaAna(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_santaana (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesSantaAna()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_santaana;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenSantaAna(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_santaana WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesSantaAna()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_santaana"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenSantaAna(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_santaana SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_santaana SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroSantaAna(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_santaana WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenSanVicente(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_sanvicente (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesSanVicente()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_sanvicente;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenSanVicente(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_sanvicente WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesSanVicente()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_sanvicente"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenSanVicente(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_sanvicente SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_sanvicente SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroSanVicente(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_sanvicente WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenSonsonate(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_sonsonate (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesSonsonate()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_sonsonate;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenSonsonate(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_sonsonate WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesSonsonate()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_sonsonate"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenSonsonate(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_sonsonate SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_sonsonate SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroSonsonate(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_sonsonate WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagenUsulutan(string foto, string texto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel_usulutan (Direccion, Texto) VALUES ('{0}', '{1}');", foto, texto), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenesUsulutan()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel_usulutan;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagenUsulutan(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel_usulutan WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[2];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenesUsulutan()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel_usulutan"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagenUsulutan(int id, string texto, string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_usulutan SET Texto = '{0}', Direccion = '{1}' WHERE Id = {2}", texto, foto, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel_usulutan SET Texto = '{0}' WHERE Id = {1}", texto, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistroUsulutan(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel_usulutan WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagen(string foto, string texto, string departamento)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel (Direccion, Texto, Departamento) VALUES ('{0}', '{1}', '{2}');", foto, texto, departamento), conn);
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenes()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel;"), conn);
            DataTable table = new DataTable();

            DA.Fill(table);

            string imagenes = "";

            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {

                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "' width='1100' height='500'/><div class='carousel-caption d-none d-md-block'> <h5>" + row["Texto"] + "</h5></div></div>";
                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "' width='1100' height='500' /><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";
                }

                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "' class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }

            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;

            return retorno;

        }

        //**************************** Método para obtener un registro ****************************
        public static string[] SeleccionarRegistroImagen(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlCommand comando = new MySqlCommand(String.Format("SELECT * FROM imagenes_carrusel WHERE ID = {0}", id), conn);
            MySqlDataReader reader = comando.ExecuteReader();

            string[] retorno = new string[3];
            while (reader.Read())
            {
                retorno[0] = reader.GetString(1);
                retorno[1] = reader.GetString(2);
                retorno[2] = reader.GetString(3);
            }

            return retorno;
        }

        //**************************** Método para obtener todos los registros de imágenes ****************************
        public static DataTable ListarImagenes()
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * FROM imagenes_carrusel"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);

            foreach (DataRow row in table.Rows)
            {
                row["Direccion"] = "<img width='100px' class='thumbnail' src='./images/" + row["Direccion"] + "' />";
            }
            return table;
        }

        //**************************** Método para obtener actualizar un registro de imagen ****************************
        public static int ActualizarImagen(int id, string texto, string foto, string departamento)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando;

            if (foto != String.Empty)
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel SET Texto = '{0}', Direccion = '{1}', Departamento = '{2}' WHERE Id = {3}", texto, foto, departamento, id), conn);
            else
                comando = new MySqlCommand(string.Format("UPDATE imagenes_carrusel SET Texto = '{0}', Departamento = '{1}' WHERE Id = {2}", texto, departamento, id), conn);

            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para obtener eliminar un registro de imagen ****************************
        public static int EliminarRegistro(int id)
        {
            MySqlConnection conn = datos.ObtenerConexion(); //Abrimos la conexion creada.
            MySqlCommand comando = new MySqlCommand(String.Format("DELETE FROM imagenes_carrusel WHERE Id = {0}", id), conn);
            int retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //Imagenes Repetidas
        public static int ImagenesRepetidas(string foto, string texto, string departamento)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT id FROM imagenes_carrusel WHERE Direccion= '" + foto + "' AND Texto = '" + texto + "' And Departamento = '" + departamento + "' ", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {

            }
            else
            {
                conexiones.AgregarImagen(foto, texto, departamento);

            }
            conexion.Close();
            return valor;
        }

        //Conexiones
        public static Int32 BuscarDepa(string depapartamento) 
        {
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("Select * FROM imagenes_carrusel WHERE = Departamento'" + depapartamento + "' ", conexion);
            int retorno = cmd.ExecuteNonQuery();

            return retorno;
        }
    }
}