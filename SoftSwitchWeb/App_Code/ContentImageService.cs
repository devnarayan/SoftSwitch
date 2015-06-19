using SoftSwitch.Web.Code;
using SoftSwitch4_5.Web.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SoftSwitch.Web.DAL
{
    public interface IContentImageService
    {
        bool AddContentImage(ContentImageModel model);
        bool EditContentImage(ContentImageModel model);
        DataTable GetWebPagesList();
        DataTable GetImageList(int webpageid);
        DataTable GetImageByID(int contentID);
        bool DeleteImage(int imageid);
    }

    public class ContentImageService : IContentImageService
    {
        private DataFunctions dbContext;
        public ContentImageService()
        {
            dbContext = new DataFunctions();
        }
        public bool AddContentImage(ContentImageModel model)
        {
            return dbContext.ExecuteNonQuery("insert into ContentImage (WebPageID,LangContent,PicsUrl) values('" + model.WebPageID + "', '" + model.LangContent + "', '" + model.PicsUrl + "')");
        }

        public bool EditContentImage(ContentImageModel model)
        {
            return dbContext.ExecuteNonQuery("update Content set PicsUrl= '" + model.PicsUrl + "' where ContentImageID='" + model.ContentImageID + "'");
        }
      
        public DataTable GetWebPagesList()
        {
            return dbContext.GetDataTable("select * from WebPage");
        }
        public DataTable GetImageList(int webpageid)
        {
            return dbContext.GetDataTable("select * from ContentImage where Webpageid='" + webpageid + "'");
        }
        public DataTable GetImageByID(int contentID)
        {
            return dbContext.GetDataTable("select * from ContentImage where ContentImageID='" + contentID + "'");
        }
        public bool DeleteImage(int imageid)
        {
            return dbContext.ExecuteNonQuery("delete ContentImage where ContentImageID='" + imageid + "'");
        }
    }
}