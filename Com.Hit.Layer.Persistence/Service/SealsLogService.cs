using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Hit.Layer.Persistence.Service
{
    public class SealsLogService
    {

        public static void AddLog(string ClassName, string MethodName, string MessageError, string StackTrace, string TargetSite, int IdUSer, int IdStateRow, string HostName)
        {

            try
            {


                using (SqlConnection connection = new SqlConnection(Connection.ConnectionString))
                {

                    List<SqlParameter> parameters = new List<SqlParameter>();
                    parameters.Add(new SqlParameter() { ParameterName = "@ClassName", SqlDbType = SqlDbType.VarChar, Value = ClassName });
                    parameters.Add(new SqlParameter() { ParameterName = "@MethodName", SqlDbType = SqlDbType.VarChar, Value = MethodName });
                    parameters.Add(new SqlParameter() { ParameterName = "@MessageError", SqlDbType = SqlDbType.VarChar, Value = MessageError });
                    parameters.Add(new SqlParameter() { ParameterName = "@StackTrace", SqlDbType = SqlDbType.VarChar, Value = StackTrace });
                    parameters.Add(new SqlParameter() { ParameterName = "@TargetSite", SqlDbType = SqlDbType.VarChar, Value = TargetSite });
                    parameters.Add(new SqlParameter() { ParameterName = "@IdUser", SqlDbType = SqlDbType.Int, Value = IdUSer });
                    parameters.Add(new SqlParameter() { ParameterName = "@IdStateRow", SqlDbType = SqlDbType.Int, Value = IdStateRow });
                    parameters.Add(new SqlParameter() { ParameterName = "@HostName", SqlDbType = SqlDbType.VarChar, Value = HostName });

                    //
                    SqlHelper.ExecuteNonQuery(connection, CommandType.StoredProcedure, "dbo.udfSealsLog_Insert", parameters.ToArray());
                      
                }


            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            

        }


    }
}
