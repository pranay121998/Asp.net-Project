using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace EmployeeWorkBook.Models.CommonCls.DataBaseConnection
{
    public class DBConnection
    {

         public string DBConnectionString()
        {
        string dbStr = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            return dbStr;
        }

        public SqlConnection GetConnectToDB()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString);
            return conn;
        }




    }
}