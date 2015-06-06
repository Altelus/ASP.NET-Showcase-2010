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

public partial class test2_private_q2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = "First Name - ";
            Label2.Text = "Last Name - ";
            Label3.Text = "User ID - ";
            Label4.Text = "Email - ";
            Button1.Text = "Submit";
        }
        Label5.Text = string.Empty;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool error = false;

        try
        {
            PracticeTableAdapters.UsersTableAdapter tab = new PracticeTableAdapters.UsersTableAdapter();
            
            if (Convert.ToInt32(tab.countUserID(TextBox3.Text)) != 0)
            {
                TextBox4.Text += string.Empty;
                Label5.Text += "Duplicate user id!<br/>";
                Label5.ForeColor = System.Drawing.Color.Red;
                error = true;
            }
            if (Convert.ToInt32(tab.countEmail(TextBox4.Text)) != 0)
            {
                TextBox4.Text = string.Empty;
                Label5.Text += "Duplicate email address!<br/>";
                Label5.ForeColor = System.Drawing.Color.Red;
                error = true;
            }

            if (error == false)
            {
                tab.Insert(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text);

                GridView1.DataSource = tab.GetData();
                GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
            //Label5.Text = ex.Message;
            Label5.ForeColor = System.Drawing.Color.Red;
        }
    }
}
