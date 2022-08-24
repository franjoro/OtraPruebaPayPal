using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace OtraPruebaPayPal
{
    public partial class SeleccionDepartamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ahua = Convert.ToInt16(AhuachapanInput.Value);
            if (ahua != 1 || ahua != 2)
            {
                ahua = 1;
                AhuachapanInput.Value = Convert.ToString(ahua);
            }
            int plan = Convert.ToInt16(Session["compra"]);
            if (plan == 45)
            {
                plan1.Style.Clear();
            }
            if (plan == 70)
            {
                plan2.Style.Clear();
            }
            if (plan == 90)
            {
                plan3.Style.Clear();
            }
            if (plan == 110)
            {
                plan4.Style.Clear();
            }
            string ahuachapan = Convert.ToString(Session["ahuchapan"]);
            if(ahuachapan == "ahuachapan")
            {
                especial1.Style.Clear();
            }
            string cabañas = Convert.ToString(Session["cabañas"]);
            if (cabañas == "cabañas")
            {
                especial2.Style.Clear();
            }
            string chalatenango = Convert.ToString(Session["chalatenango"]);
            if (chalatenango == "chalatenango")
            {
                especial3.Style.Clear();
            }
            string cuscatlan = Convert.ToString(Session["cuscatlan"]);
            if (cuscatlan == "cuscatlan")
            {
                especial4.Style.Clear();
            }
            string lapaz = Convert.ToString(Session["lapaz"]);
            if (lapaz == "lapaz")
            {
                especial5.Style.Clear();
            }
            string launion = Convert.ToString(Session["launion"]);
            if (launion == "launion")
            {
                especial6.Style.Clear();
            }
            string lalibertad = Convert.ToString(Session["lalibertad"]);
            if (lalibertad == "lalibertad")
            {
                especial7.Style.Clear();
            }
            string morazan = Convert.ToString(Session["morazan"]);
            if (morazan == "morazan")
            {
                especial8.Style.Clear();
            }
            string sanmiguel = Convert.ToString(Session["sanmiguel"]);
            if (sanmiguel == "sanmiguel")
            {
                especial9.Style.Clear();
            }
            string sansalvador = Convert.ToString(Session["sansalvador"]);
            if (sansalvador == "sansalvador")
            {
                especial10.Style.Clear();
            }
            string sanvicente = Convert.ToString(Session["sanvicente"]);
            if (sanvicente == "sanvicente")
            {
                especial11.Style.Clear();
            }
            string santana = Convert.ToString(Session["santana"]);
            if (santana == "santana")
            {
                especial12.Style.Clear();
            }
            string sonsonate = Convert.ToString(Session["sonsonate"]);
            if (sonsonate == "sonsonate")
            {
                especial13.Style.Clear();
            }
            string usulutan = Convert.ToString(Session["usulutan"]);
            if (usulutan == "usulutan")
            {
                especial14.Style.Clear();
            }
            if (Session["usulutan"] != null || Session["sonsonate"] != null || Session["santana"] != null || Session["sanvicente"] != null || Session["sansalvador"] != null || Session["sanmiguel"] != null || Session["morazan"] != null || Session["lalibertad"] != null || Session["launion"] != null || Session["lapaz"] != null || Session["cuscatlan"] != null || Session["chalatenango"] != null || Session["cabañas"] != null || Session["ahuchapan"] != null)
            {
                btnTransporte.Focus();
            }
        }

        protected void btnTransporte_Click(object sender, EventArgs e)
        {
            Response.Redirect("Transporte.aspx");
        }
        protected void Usulután_Click(object sender, EventArgs e)
        {
            Response.Redirect("Transporte.aspx");
        }

        protected void Elminar1_ServerClick(object sender, EventArgs e)
        {
            especial1.Style.Add("display", "none");
            Session.Remove("ahuachapan");
        }

        protected void Ahuachapan_Click(object sender, EventArgs e)
        {
            int visitas = 0;
            int id = 3;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT visitas FROM estadisticas WHERE id= '" + id + "'", conexion);
            //cmd.CommandType = System.Data.CommandType.Text;
            //MySqlDataAdapter ds = new MySqlDataAdapter(cmd);
            int pr = Convert.ToInt32(cmd.ExecuteScalar());

            //int suma = Convert.ToInt16();
            visitas = pr + 1;
            if (conexiones.VisitasAhuachapan(id, visitas) == 0)
            {

            }
            especial1.Style.Clear();
            Session["ahuchapan"] = "ahuachapan";
            
        }

        protected void Cabañas_Click(object sender, EventArgs e)
        {
            especial2.Style.Clear();
            Session["cabañas"] = "cabañas";
        }

        protected void Chalatenango_Click(object sender, EventArgs e)
        {
            especial3.Style.Clear();
            Session["chalatenango"] = "chalatenango";
        }

        protected void Cuscatlan_Click(object sender, EventArgs e)
        {
            especial4.Style.Clear();
            Session["cuscatlan"] = "cuscatlan";
        }

        protected void LaLibertad_Click(object sender, EventArgs e)
        {
            especial7.Style.Clear();
            Session["lalibertad"] = "lalibertad";
        }

        protected void Morazan_Click(object sender, EventArgs e)
        {
            especial9.Style.Clear();
            Session["morazan"] = "morazan";
        }

        protected void LaPaz_Click(object sender, EventArgs e)
        {
            especial5.Style.Clear();
            Session["lapaz"] = "lapaz";
        }

        protected void SantaAna_Click(object sender, EventArgs e)
        {
            especial12.Style.Clear();
            Session["santana"] = "santana";
        }

        protected void SanMiguel_Click(object sender, EventArgs e)
        {
            especial9.Style.Clear();
            Session["sanmiguel"] = "sanmiguel";
        }

        protected void SanSalvador_Click(object sender, EventArgs e)
        {
            especial10.Style.Clear();
            Session["sansalvador"] = "sansalvador";
        }

        protected void SanVicente_Click(object sender, EventArgs e)
        {
            especial11.Style.Clear();
            Session["sanvicente"] = "sanvicente";
        }

        protected void Sonsonate_Click(object sender, EventArgs e)
        {
            especial13.Style.Clear();
            Session["sonsonate"] = "sonsonate";
        }

        protected void LaUnión_Click(object sender, EventArgs e)
        {
            especial6.Style.Clear();
            Session["launion"] = "launion";
        }

        protected void Usulutan_Click(object sender, EventArgs e)
        {
            especial14.Style.Clear();
            Session["usulutan"] = "usulutan";
        }

        protected void Eliminar2_ServerClick(object sender, EventArgs e)
        {
            especial2.Style.Add("display", "none");
            Session.Remove("cabañas");
        }

        protected void Eliminar3_ServerClick(object sender, EventArgs e)
        {
            especial3.Style.Add("display", "none");
            Session.Remove("chalatenango");
        }

        protected void Eliminar4_ServerClick(object sender, EventArgs e)
        {
            especial4.Style.Add("display", "none");
            Session.Remove("cuscatlan");
        }

        protected void Eliminar5_ServerClick(object sender, EventArgs e)
        {
            especial5.Style.Add("display", "none");
            Session.Remove("lapaz");
        }

        protected void Eliminar6_ServerClick(object sender, EventArgs e)
        {
            especial6.Style.Add("display", "none");
            Session.Remove("launion");
        }

        protected void Eliminar7_ServerClick(object sender, EventArgs e)
        {
            especial7.Style.Add("display", "none");
            Session.Remove("lalibertad");
        }

        protected void Eliminar8_ServerClick(object sender, EventArgs e)
        {
            especial8.Style.Add("display", "none");
            Session.Remove("morazan");
        }

        protected void Eliminar9_ServerClick(object sender, EventArgs e)
        {
            especial9.Style.Add("display", "none");
            Session.Remove("sanmiguel");
        }

        protected void Eliminar10_ServerClick(object sender, EventArgs e)
        {
            especial10.Style.Add("display", "none");
            Session.Remove("sansalvador");
        }

        protected void Eliminar11_ServerClick(object sender, EventArgs e)
        {
            especial11.Style.Add("display", "none");
            Session.Remove("sanvicente");
        }

        protected void Eliminar12_ServerClick(object sender, EventArgs e)
        {
            especial12.Style.Add("display", "none");
            Session.Remove("santana");
        }

        protected void Eliminar13_ServerClick(object sender, EventArgs e)
        {
            especial13.Style.Add("display", "none");
            Session.Remove("sonsonate");
        }

        protected void Eliminar14_ServerClick(object sender, EventArgs e)
        {
            especial14.Style.Add("display", "none");
            Session.Remove("usulutan");
        }
    }
}