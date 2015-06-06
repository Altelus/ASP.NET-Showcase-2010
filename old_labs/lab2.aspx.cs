using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rvTicketMax.MaximumValue = "42";
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
      switch (ddlRoute.SelectedValue)
      {
        case ("a"):
          rvTicketMax.MaximumValue = lblASeat.Text;
          break;
        case ("b"):
          rvTicketMax.MaximumValue = lblBSeat.Text;
          break;
        case ("c"):
          rvTicketMax.MaximumValue = lblCSeat.Text;
          break;
        case ("d"):
          rvTicketMax.MaximumValue = lblDSeat.Text;
          break;
      }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
      lblResult.Text = ddlRoute.SelectedItem.Text + " has been selected<br/>";

      switch (ddlRoute.SelectedValue)
      {
        case ("a"):
          lblASeat.Text = Convert.ToString(Convert.ToInt32(lblASeat.Text) - Convert.ToInt32(tbTicket.Text));
          rvTicketMax.MaximumValue = lblASeat.Text;

          lblResult.Text += "Cost per ticket: $ " + lblACost.Text;
          lblHistory.Text += "Route A - " + tbTicket.Text + " ticket(s) at $" + lblACost.Text + " per ticket - $" +
            Convert.ToString(Convert.ToInt32(tbTicket.Text) * Convert.ToDouble(lblACost.Text)) + " total<br/>";
          break;
        case ("b"):
          lblBSeat.Text = Convert.ToString(Convert.ToInt32(lblBSeat.Text) - Convert.ToInt32(tbTicket.Text));
          rvTicketMax.MaximumValue = lblBSeat.Text;

          lblResult.Text += "Cost per ticket: $ " + lblBCost.Text;
          lblHistory.Text += "Route B - " + tbTicket.Text + " ticket(s) at $" + lblBCost.Text + " per ticket - $" +
            Convert.ToString(Convert.ToInt32(tbTicket.Text) * Convert.ToDouble(lblBCost.Text)) + " total<br/>";
          break;
        case ("c"):
          lblCSeat.Text = Convert.ToString(Convert.ToInt32(lblCSeat.Text) - Convert.ToInt32(tbTicket.Text));
          rvTicketMax.MaximumValue = lblCSeat.Text;

          lblResult.Text += "Cost per ticket: $ " + lblCCost.Text;
          lblHistory.Text += "Route C - " + tbTicket.Text + " ticket(s) at $" + lblCCost.Text + " per ticket - $" +
            Convert.ToString(Convert.ToInt32(tbTicket.Text) * Convert.ToDouble(lblCCost.Text)) + " total<br/>";
          break;
        case ("d"):
          lblDSeat.Text = Convert.ToString(Convert.ToInt32(lblDSeat.Text) - Convert.ToInt32(tbTicket.Text));
          rvTicketMax.MaximumValue = lblDSeat.Text;

          lblResult.Text += "Cost per ticket: $ " + lblDCost.Text;
          lblHistory.Text += "Route D - " + tbTicket.Text + " ticket(s) at $" + lblDCost.Text + " per ticket - $" +
            Convert.ToString(Convert.ToInt32(tbTicket.Text) * Convert.ToDouble(lblDCost.Text)) + " total<br/>";
          break;
      }
    }

}
