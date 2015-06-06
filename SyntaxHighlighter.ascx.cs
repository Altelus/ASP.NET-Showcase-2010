using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class SyntaxHighlighter : System.Web.UI.UserControl
{
    string path;
    StringBuilder sb;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            path = Server.MapPath(".") + @"\" + VirtualPathUtility.GetFileName(Request.FilePath);
            ViewState["path"] = path;
        }
        else
        {
            path = (string)ViewState["path"];
        }
    }
    protected void lbPMarkup_Click(object sender, EventArgs e)
    {
        sb = new StringBuilder();
        sb.AppendLine(" <script type=\"syntaxhighlighter\" class=\"brush: plain\"><![CDATA[");
        sb.AppendLine(File.ReadAllText(path));
        sb.AppendLine("	]]></script>");
        Literal1.Text = sb.ToString();
        Literal1.Visible = true;
    }
    protected void lbMarkup_Click(object sender, EventArgs e)
    {
        sb = new StringBuilder();
        sb.AppendLine(" <script type=\"syntaxhighlighter\" class=\"brush: html\"><![CDATA[");
        sb.AppendLine(File.ReadAllText(path));
        sb.AppendLine("	]]></script>");
        Literal1.Text = sb.ToString();
        Literal1.Visible = true;
    }
    protected void lbPCSharp_Click(object sender, EventArgs e)
    {
        sb = new StringBuilder();
        sb.AppendLine(" <script type=\"syntaxhighlighter\" class=\"brush: plain\"><![CDATA[");
        sb.AppendLine(File.ReadAllText(path + ".cs"));
        sb.AppendLine("	]]></script>");
        Literal1.Text = sb.ToString();
        Literal1.Visible = true;
    }
    protected void lbCSharp_Click(object sender, EventArgs e)
    {
        sb = new StringBuilder();
        sb.AppendLine(" <script type=\"syntaxhighlighter\" class=\"brush: c-sharp\"><![CDATA[");
        sb.AppendLine(File.ReadAllText(path + ".cs"));
        sb.AppendLine("	]]></script>");
        Literal1.Text = sb.ToString();
        Literal1.Visible = true;
    }
}