﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_PRN_211.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult SignIn()
        {
            return View();
        }
    }
}