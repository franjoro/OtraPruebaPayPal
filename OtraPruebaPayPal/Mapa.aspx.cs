using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.IO;
using System.Configuration;

namespace OtraPruebaPayPal
{
    public partial class Mapa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string usuario = Convert.ToString(Session["usermane"]);
            //if (usuario != "Admin")
            //{
            //    Response.Redirect("default.aspx");
            //}
            //if (!this.IsPostBack)
            //{
            //    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            //    using (MySqlConnection con = new MySqlConnection(constr))
            //    {
            //        using (MySqlCommand cmd = new MySqlCommand("SELECT id, departamento FROM departamentos"))
            //        {
            //            cmd.CommandType = CommandType.Text;
            //            cmd.Connection = con;
            //            con.Open();
            //            ddldepartamento.DataSource = cmd.ExecuteReader();
            //            ddldepartamento.DataTextField = "departamento";
            //            ddldepartamento.DataValueField = "id";
            //            ddldepartamento.DataBind();
            //            con.Close();
            //        }
            //    }
            //    ddldepartamento.Items.Insert(0, new ListItem("", "0"));
            //}


            //if (!this.IsPostBack)
            //{
            //    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            //    using (MySqlConnection con = new MySqlConnection(constr))
            //    {
            //        using (MySqlCommand cmd = new MySqlCommand("SELECT id, atraccion FROM atracción"))
            //        {
            //            cmd.CommandType = CommandType.Text;
            //            cmd.Connection = con;
            //            con.Open();
            //            ddlsitios.DataSource = cmd.ExecuteReader();
            //            ddlsitios.DataTextField = "atraccion";
            //            ddlsitios.DataValueField = "id";
            //            ddlsitios.DataBind();
            //            con.Close();
            //        }
            //    }
            //    ddlsitios.Items.Insert(0, new ListItem("", "0"));
            //}
        }

        protected void ddldepartamentos_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}