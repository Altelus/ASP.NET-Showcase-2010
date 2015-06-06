using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class createuser : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }
  protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
  {
    // This fires after the user was successfully created
    // Add the new user to the "Faculty" role
    // Add user to the role

    Roles.AddUserToRole(CreateUserWizard1.UserName, "Member");

    // Redirect to welcome page

    Response.Redirect("welcome.aspx");

  } // CreateUserWizard1_CreatedUser
}
