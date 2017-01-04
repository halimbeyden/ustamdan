using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.MailerLite
{
    public class MailerLiteCampaign
    {
        public int id { get; set; }
        public string type { get; set; }
        public string subject { get; set; }
        public int[] groups { get; set; }
    }
    public class MailerLiteCampaignSStep
    {
        public string html { get; set; }
        public string plain { get; set; }
    }
}