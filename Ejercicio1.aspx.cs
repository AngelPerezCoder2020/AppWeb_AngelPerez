using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace AplicacionWebCapacitacion
{
    public partial class Ejercicio1 : WebBase 
    {
        public Ejercicio1(): base("Dario") {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            BLC.setDataSourcePropreties(SqlDataSource1,"Category",2);
        }
    }
}