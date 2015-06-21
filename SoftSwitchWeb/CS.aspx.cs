using SoftSwitch.Web.DAL;
using SoftSwitch4_5.Web.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class CS : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    #region HeaderService
    [System.Web.Services.WebMethod]
    public static string GetHeaderList(string name)
    {
        HeaderService hdservice = new HeaderService();
        DataTable dt = hdservice.GetHeaderList();
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }
    [System.Web.Services.WebMethod]
    public static string SaveNewHeader(string label,string content)
    {
        HeaderService hdservice = new HeaderService();
        HeaderModel model = new HeaderModel();
        model.HeaderName = label;
        model.HeaderContent1 = content;
        bool bl = hdservice.AddHeader(model);
        if (bl) return Newtonsoft.Json.JsonConvert.SerializeObject("New Header added successfully.");
        else return Newtonsoft.Json.JsonConvert.SerializeObject("Please try agian");

    }
    [System.Web.Services.WebMethod]
    public static string DeleteHeader(int HeaderID)
    {
        HeaderService hdservice = new HeaderService();
        HeaderModel model = new HeaderModel();
        model.HeaderID = HeaderID;
        bool bl = hdservice.DeleteHeader(model);
        if (bl) return Newtonsoft.Json.JsonConvert.SerializeObject("Header Deleted Successfully.");
        else return Newtonsoft.Json.JsonConvert.SerializeObject("Please try agian");
    }
    [System.Web.Services.WebMethod]
    public static string SaveHeaderList(string[] ids, string[] vlus)
    {
        HeaderService hdservice = new HeaderService();
        for (int i=0;i<ids.Count();i++)// string st in ids)
        {
            HeaderModel model = new HeaderModel();
            model.HeaderContent1 = vlus[i];
            model.HeaderID =Convert.ToInt32(ids[i]);
            var dt = hdservice.EditHeader(model);
        }
        return "Header and Footer updated successfully.";
    }
    [System.Web.Services.WebMethod]
    public static string EditHeader(int id, string content)
    {
        HeaderModel model = new HeaderModel();
        model.HeaderContent1 = content;
        model.HeaderID = id;
        HeaderService hdservice = new HeaderService();
        var dt = hdservice.EditHeader(model);
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }
    [System.Web.Services.WebMethod]
    public static string AddHeader(int id, string name, string content)
    {
        HeaderModel model = new HeaderModel();
        model.HeaderContent1 = content;
        model.HeaderID = id;
        model.HeaderName = name;
        HeaderService hdservice = new HeaderService();
        var dt = hdservice.AddHeader(model);
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }
    #endregion
    #region ContentService
    [System.Web.Services.WebMethod]
    public static string GetWebPageList()
    {
        ContentService cnservice = new ContentService();
        DataTable dt = cnservice.GetWebPagesList();
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }
    [System.Web.Services.WebMethod]
    public static string GetContentList(string webpageid)
    {
        ContentService cnservice = new ContentService();
        DataTable dt = cnservice.GetContentList(Convert.ToInt32(webpageid));
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }

    [System.Web.Services.WebMethod]
    public static string GetContentbyid(string contentid)
    {
        ContentService cnservice = new ContentService();
        DataTable dt = cnservice.GetContentByID(Convert.ToInt32(contentid));
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }

    [System.Web.Services.WebMethod]
    public static string AddContent(int pageid,string enContent,string langContent)
    {
            ContentService cnservice = new ContentService();
            ContentModel model = new ContentModel();
            model.WebPageID = pageid;
            model.EnContent = enContent;
            model.LangContent = langContent;
            model.IsReachText = true;
            bool bl = cnservice.AddContent(model);
            return Newtonsoft.Json.JsonConvert.SerializeObject("New Content Added.");
    }
    [System.Web.Services.WebMethod]
    public static string UpdateContent(int contentid, string langContent)
    {
        if (langContent != null && langContent != "")
        {
            ContentService cnservice = new ContentService();
            ContentModel model = new ContentModel();
            model.ContentID = contentid;
            model.LangContent = langContent;
            bool bl = cnservice.EditContent(model);
            return Newtonsoft.Json.JsonConvert.SerializeObject("Content Updated.");
        }
        else
        {
            return "Please enter page contents";
        }
    }

    [System.Web.Services.WebMethod]
    public static string DeleteContent(int contentid)
    {
        ContentService cnservice = new ContentService();
        bool bl = cnservice.DeleteContent(contentid);
        if (true) return "Content deleted successfully.";
        else
        return Newtonsoft.Json.JsonConvert.SerializeObject("Please try again.");
    }

    #endregion

    #region ImageService
    [System.Web.Services.WebMethod]
    public static string GetImageList(string webpageid)
    {
        ContentImageService ciservice = new ContentImageService();
        DataTable dt = ciservice.GetImageList(Convert.ToInt32(webpageid));
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }
    [System.Web.Services.WebMethod]
    public static string GetImageByID(string contentimageid)
    {
        ContentImageService ciservice = new ContentImageService();
        DataTable dt = ciservice.GetImageByID(Convert.ToInt32(contentimageid));
        return Newtonsoft.Json.JsonConvert.SerializeObject(dt);
    }
    [System.Web.Services.WebMethod]
    public static string UploadImage(HttpPostedFileBase file, int cid)
    {
        string fName = string.Empty;
        try
        {
            if (file != null)
            {
                ContentImageService ciservice = new ContentImageService();
                var ext = Path.GetExtension(file.FileName);
                Guid FileName = Guid.NewGuid();
                var fileName = FileName + ext;
                var path = HttpContext.Current.Server.MapPath("~/Upload/" + fileName);
                file.SaveAs(path);
                fName = "/Upload/" + fileName;
                ContentImageModel model = new ContentImageModel();
                model.ContentImageID = cid;
                model.PicsUrl = fName;
                var mdl = ciservice.EditContentImage(model);// db.ContentImages.Where(sg => sg.ContentImageID == cid).FirstOrDefault();
            }
            return fName.ToString();
        }
        catch (Exception ex)
        {
            return "Error";
        }
    }

    [System.Web.Services.WebMethod]
    public static string AddUploadImage(HttpPostedFileBase file, int webpageid,string title)
    {
        string fName = string.Empty;
        try
        {
            if (file != null)
            {
                ContentImageService ciservice = new ContentImageService();
                var ext = Path.GetExtension(file.FileName);
                Guid FileName = Guid.NewGuid();
                var fileName = FileName + ext;
                var path = HttpContext.Current.Server.MapPath("~/Upload/" + fileName);
                file.SaveAs(path);
                fName = "/Upload/" + fileName;
                ContentImageModel model = new ContentImageModel();
                model.ContentImageID = 0;
                model.WebPageID = webpageid;
                model.LangContent = title;
                model.PicsUrl = fName;
                var mdl = ciservice.AddContentImage(model);// db.ContentImages.Where(sg => sg.ContentImageID == cid).FirstOrDefault();
            }
            return fName.ToString();
        }
        catch (Exception ex)
        {
            return "Error";
        }
    }

    [System.Web.Services.WebMethod]
    public static string UploadImage2(HttpPostedFileBase file, int cid)
    {
        string fName = string.Empty;
        try
        {
            return "";
        }
        catch (Exception ex)
        {
            return "Error";
        }
    }

    [System.Web.Services.WebMethod]
    public static string DeleteImage(int imageid)
    {
        ContentImageService ciservice = new ContentImageService();
        bool bl = ciservice.DeleteImage(imageid);
        if (bl) return "Pics Deleted Successfully.";
        else
            return "Please try again";
    }
    #endregion

    #region AddPageService
    [System.Web.Services.WebMethod]
    public static string AddNewPage(string pagename)
    {
        if (pagename != null && pagename != "")
        {
            ContentService cnservice = new ContentService();
            bool bl = cnservice.AddNewPage(pagename);
            return Newtonsoft.Json.JsonConvert.SerializeObject("New page Added");
        }
        else
        {
            return "Please enter page name";
        }
    }

    [System.Web.Services.WebMethod]
    public static string DeletePage(int pageid)
    {
        ContentService cnservice = new ContentService();
        bool bl = cnservice.DeletePage(pageid);
        return Newtonsoft.Json.JsonConvert.SerializeObject(bl);
    }
    #endregion
}