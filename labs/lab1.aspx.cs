using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void tbInput_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblDisplay.Text = tbInput.Text.Trim();
        lblDisplay.ForeColor = System.Drawing.Color.FromName(tbInput.Text.ToString());

        if (lblDisplay.Text.Length >= 10)
        {
            lblDisplay.Text = lblDisplay.Text.ToUpper();
        }
        tbInput.Text = String.Empty;
    }
}
