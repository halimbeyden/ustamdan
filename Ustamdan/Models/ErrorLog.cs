using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ustamdan.Models
{
    public class ErrorLog
    {
        public int Id { get; set; }
        public DateTime ErrorDate { get; set; }
        public string Message { get; set; }
        public string Description { get; set; }
    }
}