using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_imageUploadDB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {

        lblResult.Text = "";

        if (fupPics.HasFile)
        {
            if (fupPics.PostedFile.ContentLength <= 100000000)
            {
                digitalTableAdapters.DigitalContentTableAdapter dcTable = new digitalTableAdapters.DigitalContentTableAdapter();
                dcTable.InsertContentItem(DateTime.Now, fupPics.PostedFile.ContentType,
                    Server.HtmlEncode(tbTitle.Text.Trim()), fupPics.FileBytes);

                lblResult.Text = "Success";
                tbTitle.Text = string.Empty;
            }
            else
            {
                lblResult.Text = "File must be less than 1000000000 bytes.";
            }
        }

    }
}
