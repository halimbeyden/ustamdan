﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Mvc;

namespace Ustamdan
{
    public class LocalizationAttribute : ActionFilterAttribute
    {
        private static string _DefaultLanguage = "tr";

        public LocalizationAttribute(string defaultLanguage)
        {
            _DefaultLanguage = defaultLanguage;
        }

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            string lang = (string)filterContext.RouteData.Values["lang"] ?? _DefaultLanguage;
            if (lang != _DefaultLanguage)
            {
                try
                {
                    Thread.CurrentThread.CurrentCulture = 
                    Thread.CurrentThread.CurrentUICulture = new CultureInfo(lang);
                }
                catch (Exception e)
                {
                    throw new NotSupportedException(String.Format("ERROR: Invalid language code '{0}'.", lang));
                }
            }
        }
    }
}