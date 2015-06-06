using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class practice5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 3; j++)
            {
                Button temp = new Button();
                temp.Text = "btn" + ((i * 3) + (j)).ToString();
                temp.ID = "btn" + ((i * 3) + (j)).ToString();
                temp.Click += new System.EventHandler(Button_Click);
                Panel1.Controls.Add(temp);
            }
            Panel1.Controls.Add(new LiteralControl("<br/>"));
        }
    }

    protected void Button_Click(object sender, EventArgs e)
    {
        Panel1.Controls.Add(new LiteralControl("Clicked" +  ToString() + "<br/>"));
    }
    //http://www.aspsnippets.com/Articles/Dynamic-Controls-Made-Easy-in-ASP.Net.aspx
    //http://msdn.microsoft.com/en-us/library/kyt0fzt1.aspx
}
