﻿using System.Web;
using System.Web.Mvc;

namespace Ustamdan
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new LocalizationAttribute("tr"), 0);
        }
    }
}
