using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftSwitch4_5.Web.Models
{
    public class ContentImageModel
    {
        public int ContentImageID { get; set; }
        public Nullable<int> WebPageID { get; set; }
        public string LangContent { get; set; }
        public string PicsUrl { get; set; }
    }
}