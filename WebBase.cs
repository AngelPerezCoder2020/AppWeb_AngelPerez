using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplicacionWebCapacitacion
{
    public class WebBase : System.Web.UI.Page
    {
        private String Autorizado;

        public WebBase(String s)
        {
            Autorizado = s;
        }
        protected override void OnInit(EventArgs e)
        {
            if (Session["Usuario"] == null || !Session["Usuario"].Equals(Autorizado))
            {
                Response.Redirect("~/Error.aspx");
            }
        }
    }
}