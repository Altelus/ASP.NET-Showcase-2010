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
using System.IO;
using System.Drawing;

/// <summary>
/// Summary description for ExamImageClass
/// </summary>
public class ExamImageClass
{
    public ExamImageClass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    //itemId is a query string that is captured by the page that calls this code
    //MIMEType and Content are delared as out parameters, this means that the original
    //variable can be changed (like passing a non-constant ref in C++). It also means that
    //your code must deal with these variables, note that the the catch block assigns 
    //values if an exception is thrown, if this is not done the compiler will throw an error 
    //because it would be possible for the method to complete without assigning to these out variables.
    public static void getContent(string itemId, out string MIMEType, out Byte[] Content)
    {
        examTableAdapters.examImagesTableAdapter eiTable = new examTableAdapters.examImagesTableAdapter();

        Int32 count = Convert.ToInt32(itemId);
        Int32 max = (Int32)eiTable.getCount();

        if (count < 1 || count > max)
        {
            count = 1;
        }
        try
        {
            exam.examImagesDataTable examItem = eiTable.GetDataByItemID(count);

            exam.examImagesRow item = (exam.examImagesRow)examItem.Rows[0];

            MIMEType = item.MIMEType;
            Content = item.Content;
        }
        catch (Exception ex)
        {
            MIMEType = "Error";
            Content = new byte[1];
        }
    }

    public static byte[] generateThumb(byte[] Original)
    {
        try
        {
            MemoryStream msCopy = new MemoryStream(Original);
            System.Drawing.Image imCopy = new Bitmap(msCopy);

            if (imCopy.Width < 121)
            {
                return Original;
            }
            else
            {
                //decimal ratio = (decimal)imCopy.Width / (decimal)imCopy.Height;
                int thumbWidth = 120;
                int thumbHeight = 120;
                    //Convert.ToInt32(120 / ratio);

                Bitmap bm = new Bitmap(thumbWidth, thumbHeight);

                Graphics g = Graphics.FromImage(bm);

                g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBilinear;

                g.DrawImage(imCopy, new Rectangle(0, 0, thumbWidth, thumbHeight),
                    0, 0, imCopy.Width, imCopy.Height, GraphicsUnit.Pixel);

                g.Dispose();

                MemoryStream thumb = new MemoryStream();
                bm.Save(thumb, System.Drawing.Imaging.ImageFormat.Png);

                return thumb.GetBuffer();

            }
        }
        catch (Exception ex)
        {
            string mime = string.Empty;
            byte[] holder = null;

            getContent("0", out mime, out holder);

            return holder;
        }
    }
}


