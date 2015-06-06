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

public partial class public_about : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {
    lblCourses.Visible = false;
  }
  protected void rblCourses_SelectedIndexChanged(object sender, EventArgs e)
  {
    lblCourses.Text = rblCourses.SelectedItem.Text + " - Professor " + rblCourses.SelectedItem.Value;
    lblCourses.Visible = true;
  }
}
