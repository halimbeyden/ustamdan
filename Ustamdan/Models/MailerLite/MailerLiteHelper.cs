using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using Ustamdan.Models.Blog;

namespace Ustamdan.Models.MailerLite
{
    public class MailerLiteHelper
    {
        public const string ApiKey = "edc06ea1005644d9293758f17e8ed970";
        public const string MainUrl = "https://api.mailerlite.com/api/v2/";
        public static List<MailerLiteGroup> getGroups()
        {
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            var res = serializer.Deserialize<List<MailerLiteGroup>>(GET(MainUrl + "groups"));
            return res;
        }
        public static string GetMailTemplateByPost(Post post)
        {
            string body = post.Description;
            PostMedia pm = post.CarouselMedia.FirstOrDefault(x => x.Type == PostType.Image);
            if (pm != null)
                body += "<img src ='http://ustamdan.com/" + pm.MediaUrl + "' alt='" + pm.Description + "' />";
            body += post.PostContent
                    + post.PostQuote
                    + post.PostContentPartTwo
                    + "<br><a href=\"{$unsubscribe}\">Unsubscribe</a>";
            return body;
        }
        public static void SendMail(int[] groups, string title, string body)
        {
            MailerLiteCampaign mlc = new MailerLiteCampaign();
            mlc.type = "regular";
            mlc.subject = title;
            mlc.groups = groups;
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            //var fstep = serializer.Deserialize<MailerLiteCampaign>(POST(MainUrl + "campaigns", serializer.Serialize(mlc), "POST"));
            MailerLiteCampaignSStep mlcss = new MailerLiteCampaignSStep();
            mlcss.html = body;
            mlcss.plain = "Your email client does not support HTML emails. Open newsletter here: {$url}. If you do not want to receive emails from us, click here: {$unsubscribe}";
            var sstep = POST(MainUrl + "campaigns/"+ 5580340 + "/content", serializer.Serialize(mlcss), "PUT");
            //var lstep = POST(MainUrl + "campaigns/" + 5580340 + "/actions/send", "", "POST");
        }
        private static string GET(string url)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            request.Headers.Add("X-MailerLite-ApiKey", ApiKey);
            WebResponse response = request.GetResponse();
            using (Stream responseStream = response.GetResponseStream())
            {
                StreamReader reader = new StreamReader(responseStream, Encoding.UTF8);
                return reader.ReadToEnd();
            }
        }
        private static string POST(string url, string jsonContent, string method)
        {
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            request.Method = method;

            UTF8Encoding encoding = new System.Text.UTF8Encoding();
            Byte[] byteArray = encoding.GetBytes(jsonContent);

            request.ContentLength = byteArray.Length;
            request.ContentType = @"application/json";
            request.Headers.Add("X-MailerLite-ApiKey", ApiKey);
            using (Stream dataStream = request.GetRequestStream())
            {
                dataStream.Write(byteArray, 0, byteArray.Length);
            }
            long length = 0;
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            {
                length = response.ContentLength;
                using (Stream responseStream = response.GetResponseStream())
                {
                    StreamReader reader = new StreamReader(responseStream, Encoding.UTF8);
                    return reader.ReadToEnd();
                }
            }
        }
    }

}