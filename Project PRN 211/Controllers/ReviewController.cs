using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_PRN_211.Controllers
{
    public class ReviewController : BaseController
    {
        // GET: Review
        public ActionResult Review()
        {
            string encodeAccount = SessionWrapper.EncodeAccount;
            return View();
        }
    }
}