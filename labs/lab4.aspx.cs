using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Text;

public partial class labs_lab4 : System.Web.UI.Page
{
  string nl = Environment.NewLine;
  string pn;
  string fn;
  string fileSource;
  string fileTarget;

  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      ViewState["pn"] = pn;
      ViewState["fn"] = fn;
      ViewState["fileSource"] = fileSource;
      ViewState["fileTarget"] = fileTarget;
    }
    else
    {
      pn = (string)ViewState["pn"];
      fn = (string)ViewState["fn"];
      fileSource = (string)ViewState["fileSource"];
      fileTarget = (string)ViewState["fileTarget"];

      pn = Server.MapPath("~/uploads");

      lblUpload.Text = string.Empty;
      lblCopy.Text = string.Empty;
      lblView.Text = string.Empty;

      btnCopy.Enabled = false;
      //tbSearch.Enabled = false;
      //btnSearch.Enabled = false;
    }

  }
  protected void btnUpload_Click(object sender, EventArgs e)
  {
    if (FileUpload.PostedFile.ContentLength > 1000 &&
        FileUpload.PostedFile.ContentLength < 100000)
    {
      try
      {
        fn = FileUpload.FileName;
        fileSource = pn + @"\" + fn;

        FileUpload.SaveAs(fileSource);

        lblUpload.Text = "File has been uploaded successfully.";
        lblUpload.ForeColor = System.Drawing.Color.Green;

        btnCopy.Enabled = true;

        ViewState["pn"] = pn;
        ViewState["fn"] = fn;
        ViewState["fileSource"] = fileSource;
      }
      catch (Exception ex)
      {
        lblUpload.Text = ex.Message;
        lblUpload.ForeColor = System.Drawing.Color.Red;
      }
    }
    else
    {
      lblUpload.Text = "Filesize must be between a size of 1,000 - 100,000 bytes";
      lblUpload.ForeColor = System.Drawing.Color.Red;
    }
  }
  protected void btnCopy_Click(object sender, EventArgs e)
  {
    StringBuilder sb = new StringBuilder();

    sb.Append("Geoffrey Mok" + nl);
    sb.Append("Date:  " + DateTime.Now.ToLongDateString() + nl);
    sb.Append("Time:  " + DateTime.Now.ToLongTimeString() + nl + nl);

    fileTarget = pn + @"\" + System.IO.Path.GetFileNameWithoutExtension(fn) + " copy.txt";

    StreamWriter sw = null;

    try
    {
      string fileData = File.ReadAllText(fileSource);

      sw = File.CreateText(fileTarget);
      sw.Write(sb.ToString());
      sw.Write(fileData);

      lblCopy.Text = "The file copy was successful";
      lblCopy.ForeColor = System.Drawing.Color.Green;

      ViewState["fileTarget"] = fileTarget;

    }
    catch (Exception ex)
    {
      lblCopy.Text = ex.Message;
      lblCopy.ForeColor = System.Drawing.Color.Red;
    }
    finally { sw.Close(); }

  }
  protected void btnView_Click(object sender, EventArgs e)
  {
    try
    {
      String[] fileList = Directory.GetFiles(pn);
      ddlFiles.Items.Clear();
      ddlFiles.Items.Add("-Select a File-");

      for (int i = 0; i < fileList.Length; i++)
      {
        ddlFiles.Items.Add(Path.GetFileName(fileList[i]));
      }
      ddlFiles.Enabled = true;
    }
    catch (Exception ex)
    {
      lblView.Text = ex.Message;
      lblView.ForeColor = System.Drawing.Color.Red;
    }
  }
  protected void ddlFiles_SelectedIndexChanged(object sender, EventArgs e)
  {
    if (ddlFiles.SelectedIndex > 0)
    {
      fn = ddlFiles.SelectedItem.Text;
      fileSource = pn + @"\" + fn;

      try
      {
        tbFile.Text = File.ReadAllText(fileSource);
      }
      catch (Exception ex)
      {
        lblView.Text = ex.Message;
        lblView.ForeColor = System.Drawing.Color.Red;
      }
      tbSearch.Enabled = true;
      btnSearch.Enabled = true;

      ViewState["fn"] = fn;
      ViewState["fileSource"] = fileSource;
    }
  }
  protected void btnSearch_Click(object sender, EventArgs e)
  {
    //string[] txt = tbFile.Text.ToString().Split('\n');
    //StringBuilder sb = new StringBuilder();

    //for (int i = 0; i < txt.Length; i++)
    //{
    //  if (txt[i].IndexOf(tbSearch.Text) >= 0)
    //    sb.Append(txt[i].ToString() );
    //}
    //tbFile.Text = sb.ToString();

    StreamReader sr = File.OpenText(fileSource);
    StringBuilder sb = new StringBuilder();
    string line;
    string query = tbSearch.Text;

    while (sr.EndOfStream == false)
    {
      line = sr.ReadLine() + nl;

      if (line.ToUpper().IndexOf(query.ToUpper()) >= 0)
        sb.Append(line);
    }
    tbFile.Text = sb.ToString();
  }
}
