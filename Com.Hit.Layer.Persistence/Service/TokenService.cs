using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Hit.Layer.Persistence.Service
{
    public class TokenService
    {

        /// <summary>
        /// Get Token
        /// </summary>
        /// <param name="KeyPass">KeyPass</param>
        /// <returns>Return the token of system</returns>
        public static List<string> GetToken(string KeyPass)
        {
            List<string> rs = null;

            try
            {


                using (SqlConnection connection = new SqlConnection(Connection.ConnectionString))
                {

                    List<SqlParameter> parameters = new List<SqlParameter>();
                    parameters.Add(new SqlParameter() { ParameterName = "@KeyPass", SqlDbType = SqlDbType.VarChar, Value = KeyPass });
                    //
                    SqlDataReader reader = SqlHelper.ExecuteReader(connection, CommandType.StoredProcedure, "dbo.udfToken_Select", parameters.ToArray());
                    //
                    if (reader.HasRows)
                    {
                        rs = new List<string>();

                        while (reader.Read())
                        {
                            if (reader["IdToken"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["IdToken"]));
                            }
                            //
                            if (reader["IdUser"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["IdUser"]));
                            }
                            //
                            if (reader["KeyPass"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["KeyPass"]));
                            }
                            //
                            if (reader["CreateDate"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["CreateDate"]));
                            }
                            //
                            if (reader["ModifyDate"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["ModifyDate"]));
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
                SealsLogService.AddLog("TokenService", "GetToken", ex.Message, ex.StackTrace, ex.TargetSite.ToString(), 1, 1, "LocalHost");
            }

            return rs;
        }
        
        /// <summary>
        /// insert token
        /// </summary>
        /// <param name="IdUser">IdUser</param>
        /// <param name="IdStateRow">IdStateRow</param>
        /// <param name="HostName">HostName</param>
        /// <returns>return token insert</returns>
        public static List<string> InsertToken(int IdUser, int IdStateRow,string HostName)
        {
            List<string> rs = null;

            try
            {


                using (SqlConnection connection = new SqlConnection(Connection.ConnectionString))
                {

                    List<SqlParameter> parameters = new List<SqlParameter>();
                    parameters.Add(new SqlParameter() { ParameterName = "@IdUser", SqlDbType = SqlDbType.Int, Value = IdUser });
                    parameters.Add(new SqlParameter() { ParameterName = "@IdStateRow", SqlDbType = SqlDbType.Int, Value = IdStateRow });
                    parameters.Add(new SqlParameter() { ParameterName = "@HostName", SqlDbType = SqlDbType.VarChar, Value = HostName });
                    //
                    SqlDataReader reader = SqlHelper.ExecuteReader(connection, CommandType.StoredProcedure, "dbo.udfToken_Insert", parameters.ToArray());
                    //
                    if (reader.HasRows)
                    {
                        rs = new List<string>();

                        while (reader.Read())
                        {
                            if (reader["IdToken"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["IdToken"]));
                            }
                            //
                            if (reader["IdUser"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["IdUser"]));
                            }
                            //
                            if (reader["KeyPass"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["KeyPass"]));
                            }
                            //
                            if (reader["CreateDate"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["CreateDate"]));
                            }
                            //
                            if (reader["ModifyDate"] != DBNull.Value)
                            {
                                rs.Add(Convert.ToString(reader["ModifyDate"]));
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
                SealsLogService.AddLog("TokenService", "InsertToken", ex.Message, ex.StackTrace, ex.TargetSite.ToString(), 1, 1, "LocalHost");
            }

            return rs;
        }
        

    }
}
