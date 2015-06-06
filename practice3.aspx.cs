using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class practice3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        TextBox tb = (TextBox)FormView1.FindControl("artist_idTextBox");

        PracticeTableAdapters.ArtistsTableAdapter tab = new PracticeTableAdapters.ArtistsTableAdapter();

        if (tab.checkArtist(tb.Text) != 0)
        {
            args.IsValid = false;
        }
    }
}
