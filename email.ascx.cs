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

public partial class labs_email : System.Web.UI.UserControl
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }
  protected void btnSend_Click(object sender, EventArgs e)
  {
    Mailer mailer = new Mailer(tbTO.Text, tbFROM.Text, tbSubject.Text, tbMessage.Text);

    if (mailer.sendMail())
    {
      lblError.Visible = false;
      tbTO.Enabled = false;
      tbFROM.Enabled = false;
      tbSubject.Enabled = false;
      tbMessage.Enabled = false;

      btnSend.Enabled = false;
    }
    else
      lblError.Visible = true;
  }

  protected void btnReturn_Click(object sender, EventArgs e)
  {
    Response.Redirect("lab3.aspx");
  }
}
