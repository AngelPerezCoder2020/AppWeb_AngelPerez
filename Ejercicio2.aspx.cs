using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWebCapacitacion
{
    public partial class Ejercicio2 : WebBase
    {
        public Ejercicio2() : base("Angel"){
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DBConnector.setProperties(SqlDataSource1,"Product",2);
            DBConnector.setProperties(dsCategories,"Category",1);
        }
    }
}