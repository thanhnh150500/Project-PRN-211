using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace Project_PRN_211.Session
{
    public class HttpContextSessionWrapper : ISessionWrapper
    {
        private T GetFromSession<T>(string key)
        {
            return (T)HttpContext.Current.Session[key];
        }

        private void SetInSession(string key, object value)
        {
            HttpContext.Current.Session[key] = value;
        }


        public string EncodeAccount
        {
            get => (string)JsonConvert.DeserializeObject(GetFromSession<string>("EncodeAccount"));
            set => SetInSession("EncodeAccount", JsonConvert.SerializeObject(value));
        }
    }
}