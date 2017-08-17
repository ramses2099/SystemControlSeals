using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Com.Hit.Layer.Model;
using Com.Hit.Layer.Persistence.Service;


namespace Com.Hit.Layer.Business
{
   public class BlUserService
    {
        
        public static User LoginUser(string Usuario, string Pwd)
        {
            User user = null;

            try
            {

                List<string> data = UserService.LoginUser(Usuario, Pwd);

                if (data != null)
                {
                    user = new User();
                    user.IdUser = Convert.ToInt32(data.ElementAt(0));
                    user.Usuario = data.ElementAt(1);
                    user.Pwd = data.ElementAt(2);
                    user.Nombres = data.ElementAt(3);
                    user.Apellidos = data.ElementAt(4);
                    user.Email = data.ElementAt(5);
                    user.IdRol = Convert.ToInt32(data.ElementAt(6));
                    user.IdStateRow = Convert.ToInt32(data.ElementAt(7));
                    user.FechaCreacion = Convert.ToDateTime(data.ElementAt(8));
                    user.HostName = data.ElementAt(9);

                }

            }
            catch (Exception ex)
            {
                SealsLogService.AddLog("BlUserService", "LoginUser", ex.Message, ex.StackTrace, ex.TargetSite.ToString(), 1, 1, "LocalHost");

            }

            return user;
        }


    }
}
