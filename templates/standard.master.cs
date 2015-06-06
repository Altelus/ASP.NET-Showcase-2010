using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class templates_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      Login1.Font.Size = FontUnit.Smaller;
      Menu1.Font.Size = FontUnit.Small;
    }
    protected void f(object sender, DayRenderEventArgs e)
    {

    }
    protected void calendar_dayRender(object sender, DayRenderEventArgs e)
    {
        /*if (e.Day.IsOtherMonth)
        {
            e.Cell.Text = "";
        }*/
    }
}
