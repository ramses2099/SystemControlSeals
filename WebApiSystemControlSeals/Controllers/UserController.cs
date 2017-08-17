using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Com.Hit.Layer.Business;
using Com.Hit.Layer.Model;


namespace WebApiSystemControlSeals.Controllers
{
    public class UserController : ApiController
    {

        public IHttpActionResult LoginUser(string Usuario, string Pwd)
        {

            User user = BlUserService.LoginUser(Usuario, Pwd);

            return Ok(user);
        }
        
    }
}
