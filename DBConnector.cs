using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace AplicacionWebCapacitacion
{
    public class DBConnector
    {
        public static void setProperties(SqlDataSource ds, String tableName,int t)
        {
            ds.ConnectionString = ConfigurationManager.ConnectionStrings["CapacitacionConnectionString"].ConnectionString;
            ds.SelectCommand = "usp_get_"+ tableName;
            ds.SelectCommandType = SqlDataSourceCommandType.StoredProcedure;
            if (t > 1)
            {
                ds.InsertCommand = "usp_new_" + tableName;
                ds.InsertCommandType = SqlDataSourceCommandType.StoredProcedure;
                ds.DeleteCommand = "usp_delete_" + tableName;
                ds.DeleteCommandType = SqlDataSourceCommandType.StoredProcedure;
                ds.UpdateCommand = "usp_edit_" + tableName;
                ds.UpdateCommandType = SqlDataSourceCommandType.StoredProcedure;
            }
        }
    }
}