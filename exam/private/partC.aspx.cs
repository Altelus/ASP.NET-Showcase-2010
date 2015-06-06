using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class exam_private_partC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if (lbPolicy.SelectedIndex == -1)
        {
            Wizard1.ActiveStepIndex = 1;
            lblError1.Visible = true;
        }
        else if (ddlAuto.SelectedIndex == -1)
        {
            Wizard1.ActiveStepIndex = 2;
            lblError2.Visible = true;
        }
        else if (tbColor.Text.Length == 0)
        {
            Wizard1.ActiveStepIndex = 3;
            lblError3.Visible = true;
        }
        else
        {
            lblError1.Visible = false;
            lblError2.Visible = false;
            lblError3.Visible = false;

            try
            {
                examTableAdapters.All_UsersTableAdapter user = new examTableAdapters.All_UsersTableAdapter();
                examTableAdapters.Vehicle_ModelTableAdapter vehicle = new examTableAdapters.Vehicle_ModelTableAdapter();
                examTableAdapters.User_VehicleTableAdapter userVehicle = new examTableAdapters.User_VehicleTableAdapter();

                Boolean insured = false;
                string l = user.getLicence(lbPolicy.SelectedValue).ToString();
                string t = vehicle.getType(ddlAuto.SelectedValue).ToString();

                //lblError.Text += l + t;

                if (l.Equals("both"))
                    insured = true;
                else if (l.Equals(t))
                    insured = true;
                else
                    insured = false;

                userVehicle.Insert(ddlAuto.SelectedValue, lbPolicy.SelectedValue, insured,tbColor.Text ,rblTrans.SelectedValue);
                Wizard1.ActiveStepIndex = 0;
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
    }
}
