using SoftSwitch.Web.DAL;
using SoftSwitch4_5.Web.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddImage : System.Web.UI.Page
{
    ContentService dss = new ContentService();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt= dss.GetWebPagesList();
            ddlPageID.DataSource = dt;
            ddlPageID.DataBind();
            ddlPageID.DataTextField = "PageName";
            ddlPageID.DataValueField = "WebPageID";
            ddlPageID.DataBind();

        }
    }
    protected void Upload(object sender, EventArgs e)
    {
            string fName = string.Empty;
            string fileName = "";
            try
            {
                if (FileUpload1.HasFile)
                {
                    ContentImageService ciservice = new ContentImageService();
                    string ext = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    Guid FileName = Guid.NewGuid();
                     fileName = FileName.ToString()+"" + ext;
                    var path = HttpContext.Current.Server.MapPath("~/Upload/" + fileName);
                    FileUpload1.PostedFile.SaveAs(path);

                    fName = "/Upload/" + fileName;
                    ContentImageModel model = new ContentImageModel();
                    model.ContentImageID = 0;
                    model.WebPageID =Convert.ToInt32(ddlPageID.SelectedValue);
                    model.LangContent = txtImageTitle.Text;
                    model.PicsUrl = fName;
                    bool mdl = ciservice.AddContentImage(model);// db.ContentImages.Where(sg => sg.ContentImageID == cid).FirstOrDefault();
                if (mdl) lblMessage.Text = "Image Added Successfully.";
                else lblMessage.Text = "Please try again";
                }
            }
            catch (Exception ex)
            {
            }
    }
}