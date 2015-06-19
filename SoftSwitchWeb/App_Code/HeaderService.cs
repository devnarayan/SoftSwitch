using SoftSwitch.Web.Code;
using SoftSwitch4_5.Web.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

    public interface IHeaderService
    {
        bool AddHeader(HeaderModel model);
        bool EditHeader(HeaderModel model);
        DataTable HeaderList();
        bool DeleteHeader(HeaderModel model);
    }
    public class HeaderService:IHeaderService
    {
        private DataFunctions dbContext;
        public HeaderService()
        {
            dbContext = new DataFunctions();
        }
        public bool AddHeader(HeaderModel model)
        {
            return dbContext.ExecuteNonQuery("insert into HeaderContent (HeaderName,HeaderContent) values('"+model.HeaderName+"', '" + model.HeaderContent1 + "')");
        }
        public bool EditHeader(HeaderModel model)
        {
           return  dbContext.ExecuteNonQuery("update HeaderContent set HeaderContent='" + model.HeaderContent1 + "' where HeaderID='" + model.HeaderID + "'");
        }
        public bool DeleteHeader(HeaderModel model)
        {
            return dbContext.ExecuteNonQuery("Delete HeaderContent where HeaderID='" + model.HeaderID + "'");
        }
        public DataTable HeaderList()
        {
          return   dbContext.GetDataTable("select * from HeaderContent");
        }
    }
