using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_PRN_211.Controllers
{
    public class NewsPCController : Controller
    {
        // GET: NewsPC
        public ActionResult PCnews()
        {
            return View();
        }

        public ActionResult DetailNewPC()
        {
            return View();
        }
    }
}