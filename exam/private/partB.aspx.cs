using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class exam_private_partB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            examTableAdapters.examImagesTableAdapter img = new examTableAdapters.examImagesTableAdapter();

            for (int i = 0; i < ((Convert.ToInt32(img.getCount()) + 1) / 4); i++)
            {
   
                for (int j = 0; j < 4 && ((i * 4) + (j)) < Convert.ToInt32(img.getCount() + 1); j++)
                {
                    ImageMap Pic = new ImageMap();
                    Pic.ID = "pic" + ((i * 4) + (j)).ToString();
                    Pic.Style["Position"] = "Absolute";
                    Pic.Style["Top"] = (100 + ((120 + 20) * i)).ToString() + "px";
                    Pic.Style["Left"] = (30 + ((120 + 20) * j)).ToString() + "px";
                    Pic.ImageUrl = "http://warp.senecac.on.ca/int422_101b17/exam/private/returnImage.aspx?itemid=" + ((i * 4) + (j)).ToString();

                    RectangleHotSpot Rectangle1 = new RectangleHotSpot();
                    Rectangle1.Top = 0;
                    Rectangle1.Left = 0;
                    Rectangle1.Bottom = 120;
                    Rectangle1.Right = 120;
                    Rectangle1.NavigateUrl = "http://warp.senecac.on.ca/int422_101b17/exam/private/returnImage.aspx?itemid=" + ((i * 4) + (j)).ToString();
                    Rectangle1.Target = "_blank";
                    Pic.HotSpots.Add(Rectangle1);
                    this.Controls.Add(Pic);
                }
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
            lblError.ForeColor = System.Drawing.Color.Red;
        }
    }
}
