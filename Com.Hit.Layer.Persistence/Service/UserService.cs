using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Hit.Layer.Persistence.Service
{
    public class UserService
    {
        /// <summary>
        /// Valida LoginUser
        /// </summary>
        /// <param name="Usuario">Usuario</param>
        /// <param name="Pwd">Pwd</param>
        /// <returns>return List<string> with data user</string></returns>
        public static List<string> LoginUser(string Usuario, string Pwd)
        {
            List<string> rs = null;

            try
            {


                using (SqlConnection connection = new SqlConnection(Connection.ConnectionString))
                {

                    List<SqlParameter> parameters = new List<SqlParameter>();
                    parameters.Add(new SqlParameter() { ParameterName = "@Usuario", SqlDbType = SqlDbType.VarChar, Value = Usuario });
                    parameters.Add(new SqlParameter() { ParameterName = "@Pwd", SqlDbType = SqlDbType.VarChar, Value = Pwd });
                    //
                    SqlDataReader reader = SqlHelper.ExecuteReader(connection, CommandType.StoredProcedure, "dbo.udfLogin_User", parameters.ToArray());
                    //
                    if (reader.HasRows)
                    {
                        rs = new List<string>();

                        while (reader.Read())
                        {
                            if (reader["IdUser"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["IdUser"]));
                            }
                            //
                            if (reader["Usuario"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["Usuario"]));
                            }
                            //
                            if (reader["Pwd"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["Pwd"]));
                            }
                            //
                            if (reader["Nombres"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["Nombres"]));
                            }
                            //
                            if (reader["Apellidos"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["Apellidos"]));
                            }
                            //
                            if (reader["Email"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["Email"]));
                            }
                            //
                            if (reader["IdRol"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["IdRol"]));
                            }
                            //
                            if (reader["IdStateRow"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["IdStateRow"]));
                            }
                            //
                            if (reader["FechaCreacion"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["FechaCreacion"]));
                            }
                            //
                            if (reader["HostName"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["HostName"]));
                            }

                        }
                    }

                }

                
            }
            catch (Exception ex)
            {
                SealsLogService.AddLog("UserService", "LoginUser", ex.Message, ex.StackTrace, ex.TargetSite.ToString(), 1, 1, "LocalHost");
            }

            return rs;
        }
        //
       






    }
}
