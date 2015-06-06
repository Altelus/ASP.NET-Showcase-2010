using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class practice4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
    {

    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        Wizard1.ActiveStepIndex = 0;
    }
    //private void DropDownList1_SelectedIndexChanged(object sender, System.EventArgs e)
    //{
    //    DropDownList DropDownList1 = new DropDownList();
    //    PlaceHolder PlaceHolder1 = new PlaceHolder();

    //    // Get the number of labels to create.
    //    int numlabels = System.Convert.ToInt32(DropDownList1.SelectedItem.Text);
    //    for (int i = 1; i <= numlabels; i++)
    //    {
    //        Label myLabel = new Label();

    //        // Set the label's Text and ID properties.
    //        myLabel.Text = "Label" + i.ToString();
    //        myLabel.ID = "Label" + i.ToString();
    //        PlaceHolder1.Controls.Add(myLabel);
    //        // Add a spacer in the form of an HTML <br /> element.
    //        PlaceHolder1.Controls.Add(new LiteralControl("<br />"));
    //    }
    //}
}
