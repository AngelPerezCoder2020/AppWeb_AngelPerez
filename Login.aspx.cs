using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWebCapacitacion
{
    public partial class Login : System.Web.UI.Page
    {
        private String[] users = {"Angel","Dario","Autorizado"};
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Label1.Text = acceso();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String u = TextBox1.Text;
            if (users.Contains<String>(u))
            {
                Session["Usuario"] = u;
                Response.Redirect("~/Imagenes.aspx");
            }
            else
            {
                Label1.Text = "Usuario Incorrecto! :)";
            }
        }
        private String acceso()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["CapacitacionConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "usp_ValidarAccesoApp";
            cmd.Parameters.AddWithValue("Nombre_Usuario", "AngelPerez19");
            cmd.Parameters.AddWithValue("Contrasenia", "123");
            cmd.Parameters.AddWithValue("Id_App", 1);
            cmd.Parameters.AddWithValue("Acceso", "").Direction=ParameterDirection.Output;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            return Convert.ToString(cmd.Parameters["Acceso"].Value);
        }
    }
}