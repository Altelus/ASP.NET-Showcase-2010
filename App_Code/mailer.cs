using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;
using System.Collections;

/// <summary>
/// Summary description for mailer
/// </summary>
[Serializable]
public class Mailer
{
  public string to { get; set; }
  public string from { get; set; }
  public string subject { get; set; }
  public string message { get; set; }

  public Mailer()
  {
    to = string.Empty;
    from = string.Empty;
    subject = string.Empty;
    message = string.Empty;
  }

  public Mailer(string toIn, string fromIn, string subjectIn, string messageIn)
  {
    to = toIn;
    from = fromIn;
    subject = subjectIn;
    message = messageIn;
  }

  public bool sendMail()
  {
    bool ok = true;

    MailMessage m = new MailMessage(from, to, subject, message);

    SmtpClient client = new SmtpClient("mercury.senecac.on.ca");

    try
    {
      client.Send(m);
    }
    catch (Exception ex)
    {
      ok = false;
    }

    return ok;
  }
}