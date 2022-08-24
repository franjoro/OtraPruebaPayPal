using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace OtraPruebaPayPal
{
    public class datos
    {
        public static MySqlConnection ObtenerConexion()
        {
            MySqlConnection datos = new MySqlConnection("server=localhost; database=turismoredb; Uid=root; pwd=;");
            datos.Open();
            return datos;
        }
    }
}