using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Ustamdan.Models.Blog;

public static class LanguageHelper
{
    public static MvcHtmlString LangSwitcher(this UrlHelper url, string Name, RouteData routeData, string lang)
    {
        var liTagBuilder = new TagBuilder("li");
        var aTagBuilder = new TagBuilder("a");
        var routeValueDictionary = new RouteValueDictionary(routeData.Values);
        if (routeValueDictionary.ContainsKey("lang"))
        {
            if (routeData.Values["lang"] as string == lang)
            {
                liTagBuilder.AddCssClass("active");
            }
            else
            {
                routeValueDictionary["lang"] = lang;
            }
        }
        aTagBuilder.MergeAttribute("href", url.RouteUrl(routeValueDictionary));
        aTagBuilder.SetInnerText(Name);
        liTagBuilder.InnerHtml = aTagBuilder.ToString();
        return new MvcHtmlString(liTagBuilder.ToString());
    }
    /// <summary>
    /// Will get the string value for a given enums value, this will
    /// only work if you assign the StringValue attribute to
    /// the items in your enum.
    /// </summary>
    /// <param name="value"></param>
    /// <returns></returns>
    public static string GetStringValue(this Enum value)
    {
        // Get the type
        Type type = value.GetType();

        // Get fieldinfo for this type
        FieldInfo fieldInfo = type.GetField(value.ToString());

        // Get the stringvalue attributes
        StringValueAttribute[] attribs = fieldInfo.GetCustomAttributes(
            typeof(StringValueAttribute), false) as StringValueAttribute[];

        // Return the first if there was a match.
        return attribs.Length > 0 ? attribs[0].StringValue : null;
    }
    public static Language getEnumValue(string lang)
    {
        foreach (Language lng in Enum.GetValues(typeof(Language)))
        {
            if (lng.GetStringValue() == lang)
                return lng;
        }
        return 0;
    }
}
