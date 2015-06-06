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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string redirect = Request["ReturnUrl"];
        if (redirect != null && redirect.IndexOf("/int422_101b17/test2/private/") != -1)
            Response.Redirect("~/test2/login.aspx", true);
        else if (redirect != null && redirect.IndexOf("/int422_101b17/exam/private/") != -1)
            Response.Redirect("~/exam/login.aspx", true);
    }
}
