using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class public_returnImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string itemId = Request.QueryString["itemid"];
        string mime = "";
        byte[] holder = null;
        DCMSimple.getContent(itemId, out mime, out holder);
        holder = DCMSimple.generateThumb(holder);
        Response.ContentType = mime;
        Response.BinaryWrite(holder);
    }
}
