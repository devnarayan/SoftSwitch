using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoftSwitch4_5.Web.Models
{
    public class ContentModel
    {
        public int ContentID { get; set; }
        public Nullable<int> WebPageID { get; set; }
        public string EnContent { get; set; }
        public string LangContent { get; set; }
        public Nullable<bool> IsReachText { get; set; }
    }
}