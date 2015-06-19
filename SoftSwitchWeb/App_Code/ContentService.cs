using SoftSwitch.Web.Code;
using SoftSwitch4_5.Web.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SoftSwitch.Web.DAL
{
    public interface IContentService
    {
        bool AddContent(ContentModel model);
        bool EditContent(ContentModel model);
        DataTable GetWebPagesList();
        DataTable GetContentList(int webpageid);
        DataTable GetContentByID(int contentID);
        bool AddNewPage(string pagename);
        bool DeletePage(int pageid);
        bool DeleteContent(int contentid);
    }
    public class ContentService : IContentService
    {
        private DataFunctions dbContext;
        public ContentService()
        {
            dbContext = new DataFunctions();
        }
        public bool AddContent(ContentModel model)
        {
            return dbContext.ExecuteNonQuery("insert into Content (WebPageID,EnContent,LangContent,IsReachText) values('" + model.WebPageID + "', '" + model.EnContent + "', '" + model.LangContent + "', '" + model.IsReachText + "')");
        }
        public bool EditContent(ContentModel model)
        {
            return dbContext.ExecuteNonQuery("update Content set LangContent= '" + model.LangContent + "' where ContentID='"+model.ContentID+"'");

        }
        public DataTable GetWebPagesList()
        {
          return  dbContext.GetDataTable("select * from WebPage");
        }
        public DataTable GetContentList(int webpageid)
        {
            return dbContext.GetDataTable("select * from Content where Webpageid='"+webpageid+"'");
        }
        public DataTable GetContentByID(int contentID)
        {
            return dbContext.GetDataTable("select * from Content where ContentID='" + contentID + "'");
        }
        public bool AddNewPage(string pagename)
        {
            return dbContext.ExecuteNonQuery("insert into WebPage(PageNo,PageName) values('1','" + pagename + "')");
        }
        public bool DeletePage(int pageid)
        {
            return dbContext.ExecuteNonQuery("delete Webpage where WebpageID='" + pageid + "'");
        }
        public bool DeleteContent(int contentid)
        {
            return dbContext.ExecuteNonQuery("delete Content where ContentID='" + contentid + "'");
        }
    }
}