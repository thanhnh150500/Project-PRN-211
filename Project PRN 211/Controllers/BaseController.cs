using Project_PRN_211.Session;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_PRN_211.Controllers
{
    public abstract class BaseController : Controller
    {
        public ISessionWrapper SessionWrapper { get; set; }

        public BaseController()
        {
            SessionWrapper = new HttpContextSessionWrapper();
        }
    }
}