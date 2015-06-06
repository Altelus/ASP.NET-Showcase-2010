using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab3 : System.Web.UI.Page
{
  public SenecaStudent senecaStudent
  {
    get
    {
      if (Session["senecaStudent"] == null)
      {
        return new SenecaStudent();
      }
      else
      {
        return (SenecaStudent)Session["senecaStudent"];
      }
    }
    set { Session["senecaStudent"] = value; }
  }

  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      pnlGetInfo.Visible = true;
      pnlDisplay.Visible = false;
      pnlMail.Visible = false;
    }
  }


  protected void ddlCourse_SelectedIndexChanged(object sender, EventArgs e)
  {
    int size = 0;

    if (ddlCourse.SelectedItem.Text == "LUX")
    {
      size = 2;
    }
    else if (ddlCourse.SelectedItem.Text.CompareTo("CPD") == 0)
    {
      size = 4;
    }
    else if (ddlCourse.SelectedItem.Text == "CPA")
    {
      size = 6;
    }
    else if (ddlCourse.SelectedItem.Text == "IFS")
    {
      size = 8;
    }
    else
    {
      size = 2;
    }

    ddlSemester.Enabled = true;

    ddlSemester.Items.Clear();

    for (int i = 1; i <= size; i++)
    {
      ddlSemester.Items.Add(i.ToString());
    }

  }

  protected void ddlSemester_SelectedIndexChanged(object sender, EventArgs e)
  {
    senecaStudent = new SenecaStudent(tbFName.Text, tbLName.Text, tbSID.Text, tbSNum.Text, ddlCourse.SelectedValue, Convert.ToInt16(ddlSemester.SelectedValue));
    btnContinue.Enabled = true;
  }

  protected void btnContinue_Click(object sender, EventArgs e)
  {
    lblFName.Text = senecaStudent.FName;
    lblLName.Text = senecaStudent.LName;
    lblSID.Text = senecaStudent.senecaID;
    lblSNum.Text = senecaStudent.studentNum;
    lblProgram.Text = senecaStudent.program;
    lblSemester.Text = Convert.ToString(senecaStudent.semester);
    pnlGetInfo.Visible = false;
    pnlDisplay.Visible = true;
  }

  protected void btnEmail_Click(object sender, EventArgs e)
  {
    pnlGetInfo.Visible = false;
    pnlDisplay.Visible = false;
    pnlMail.Visible = true;
  }
}