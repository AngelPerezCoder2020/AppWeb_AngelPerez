using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacionWebCapacitacion
{
    public partial class Imagenes : WebBase
    {
        public Imagenes() : base("Angel")
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DBConnector.setProperties(SqlDataSource1, "employeed", 2);
        }
    }
}