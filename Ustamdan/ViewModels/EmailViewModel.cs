using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace Ustamdan.ViewModels
{
    public class EmailViewModel
    {
        public string Ip { get; set; }
        public string Email { get; set; }
        public string Fullname { get; set; }
        public string Body { get; set; }
        public string Topic { get; set; }

        public EmailViewModel()
        {

        }

        public bool sendMail()
        {
            try
            {
                var body = "Email From: {0} ({1}) Ip:({2}) \n Message:\n{3}";
                var message = new MailMessage();
                message.To.Add(new MailAddress("info@ustamdan.com"));  // replace with valid value 
                message.From = new MailAddress("info@ustamdan.com");  // replace with valid value
                message.Subject = Topic;
                message.Body = string.Format(body, Fullname, Email,Ip, Body);
                message.IsBodyHtml = false;

                using (var smtp = new SmtpClient())
                {
                    var credential = new NetworkCredential
                    {
                        UserName = "info@ustamdan.com",  // replace with valid value
                        Password = "I.ustamdan15"  // replace with valid value
                    };
                    smtp.Credentials = credential;
                    smtp.Host = "smtp.yandex.ru";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Send(message);
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}