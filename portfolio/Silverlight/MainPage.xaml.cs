using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Media.Imaging;
using System.IO;
using ContentViewer.Digital;
using System.Threading;
using System.ServiceModel;

namespace ContentViewer
{
    public partial class MainPage : UserControl
    {
        const int GALLERY_SIZE = 6;
        const Boolean SHOW_CONSOLE = false;
        Digital.DigitalClient webService = new ContentViewer.Digital.DigitalClient();
        List<DigitalContent> dcList;
        int index = 1;
        int searchIndex;
        int searchResults;
        string searchString = "";
        int maxPage;
        int curPage;
        int size;
        Image imgUnsupported = new Image();
        Image imgAudio = new Image();

        public MainPage()
        {
            InitializeComponent();

            BitmapImage bmi1 = new BitmapImage(new Uri("unsupported.png", UriKind.Relative));
            imgUnsupported.Source = bmi1;

            BitmapImage bmi2 = new BitmapImage(new Uri("audio.png", UriKind.Relative));
            imgAudio.Source = bmi2;

            if (SHOW_CONSOLE)
            {
                tbkError.Visibility = Visibility.Visible;
                tbkMax.Visibility = Visibility.Visible;
                tbkTest.Visibility = Visibility.Visible;
            }

            webService.GetCountCompleted +=
                new EventHandler<ContentViewer.Digital.GetCountCompletedEventArgs>
                (webService_GetCountCompleted);

            webService.GetDigitalContentByIDCompleted +=
                new EventHandler<ContentViewer.Digital.GetDigitalContentByIDCompletedEventArgs>
                (webService_GetDigitalContentByIDCompleted);

            webService.SearchDigitalContentCompleted +=
                new EventHandler<ContentViewer.Digital.SearchDigitalContentCompletedEventArgs>
                (webService_SearchDigitalContentCompleted);

            webService.GetCountAsync();

            tbkError.Text += "ThreadPool - loadImages()\n";

            curPage = 1;

            loadImages();
        }
        public void webService_GetCountCompleted(object sender, ContentViewer.Digital.GetCountCompletedEventArgs e)
        {
            if (e.Error == null)
                try
                {
                    size = e.Result;
                    maxPage = size / GALLERY_SIZE;

                    if (size % GALLERY_SIZE > 0)
                        maxPage++;
                    tbkMax.Text = size.ToString();//test
                }
                catch (Exception ex)
                {
                    tbkError.Text = ex.Message;
                    tbkError.Text += ex.InnerException.Message;
                    tbkError.Text += ex.StackTrace;
                    tbkError.Text += ex.Data.ToString();
                    tbkError.Text += ex.GetBaseException().Message;
                }
        }

        public void webService_GetDigitalContentByIDCompleted(object sender, ContentViewer.Digital.GetDigitalContentByIDCompletedEventArgs e)
        {
            if (e.Error == null)
                try
                {
                    //tbkError.Text += "webService_GetDigitalContentByIDCompleted()\n";

                    BitmapImage bImg = new BitmapImage();

                    int i = e.Result.ItemID % GALLERY_SIZE;
                    if (i == 0) { i = GALLERY_SIZE; }

                    dcList[i-1] = e.Result;
                    MemoryStream stream = new MemoryStream(e.Result.Content.Bytes);
                    Image img = (Image)FindName("img" + i.ToString());

                    if (e.Result.MIMEType.Equals("image/jpeg") || e.Result.MIMEType.Equals("image/png"))
                    {
                        bImg.SetSource(stream);
                        img.Source = bImg;
                    }
                    else if (e.Result.MIMEType.Contains("video"))
                    {
                        MediaElement media = (MediaElement)FindName("media" + i.ToString());
                        //img.Source = null;
                        media.Visibility = Visibility.Visible;
                        media.AutoPlay = false;
                        media.SetSource(stream);
                    }
                    else if (e.Result.MIMEType.Contains("audio"))
                    {
                        img.Source = imgAudio.Source;
                    }
                    else
                    {
                        img.Source = imgUnsupported.Source;
                    }
                }
                catch (Exception ex)
                {
                    tbkError.Text = ex.Message;
                    tbkError.Text += ex.InnerException.Message;
                    tbkError.Text += ex.StackTrace;
                    tbkError.Text += ex.Data.ToString();
                    tbkError.Text += ex.GetBaseException().Message;
                }
        }

        public void webService_SearchDigitalContentCompleted(object sender, ContentViewer.Digital.SearchDigitalContentCompletedEventArgs e)
        {
            if (e.Error == null)
                try
                {
                    dcList = new List<DigitalContent>();
                    dcList = e.Result.ToList();
                    searchResults = dcList.Count;
                    tbkResults.Text = "(" + searchResults.ToString() + ") Results Returned.";

                    BitmapImage bImg;
                    MemoryStream stream;

                    resetImages();
                    if (searchResults > 0)
                    {
                        tbkResults.Text += " passed count ";
                        int matches = searchResults % GALLERY_SIZE;
                        if (matches == 0) { matches = GALLERY_SIZE; }

                        tbkResults.Text += matches.ToString() + " ";

                        for (int i = 1; i <= matches; i++)
                        {
                            tbkResults.Text += i.ToString();
                            Image img = (Image)FindName("img" + i.ToString());

                            stream = new MemoryStream(dcList[i - 1].Content.Bytes);

                            if (dcList[searchIndex - 1].MIMEType.Equals("image/jpeg") || dcList[searchIndex - 1].MIMEType.Equals("image/png"))
                            {
                                bImg = new BitmapImage();
                                bImg.SetSource(stream);
                                img.Source = bImg;
                            }
                            else if (dcList[searchIndex - 1].MIMEType.Contains("video"))
                            {
                                MediaElement media = (MediaElement)FindName("media" + i.ToString());
                                media.Visibility = Visibility.Visible;
                                media.AutoPlay = false;
                                media.SetSource(stream);
                            }
                            else if (dcList[searchIndex - 1].MIMEType.Contains("audio"))
                            {
                                img.Source = imgAudio.Source;
                            }
                            else
                            {
                                img.Source = imgUnsupported.Source;
                            }
                            searchIndex++;
                        }
                        curPage = 0;
                    }
                    tbkMax.Text = "SearchIndex: " + searchIndex.ToString() + "\n";
                    tbkMax.Text += "SearchResults: " + searchResults.ToString() + "\n";
                    tbkMax.Text += "curPage: " + curPage.ToString() + "\n";

                }
                catch (Exception ex)
                {
                    tbkError.Text = ex.Message;
                    tbkError.Text += ex.InnerException.Message;
                    tbkError.Text += ex.StackTrace;
                    tbkError.Text += ex.Data.ToString();
                    tbkError.Text += ex.GetBaseException().Message;
                }
        }

        public void resetImages()
        {
            Image img;
            MediaElement media;
            for (int i = 1; i <= GALLERY_SIZE; i++)
            {
                img = (Image)FindName("img" + i.ToString());
                img.Source = null;

                media = (MediaElement)FindName("media" + i.ToString());
                media.Visibility = Visibility.Collapsed;
            }
        }

        public void loadImages()
        {
            try
            {
                tbkTest.Text += "[" + index.ToString() + "]";
                resetImages();
                dcList = new List<DigitalContent>();
                for (int i = 1; i <= GALLERY_SIZE; i++)
                {
                    dcList.Add(new DigitalContent());
                }

                for (int i = 1; i <= GALLERY_SIZE; i++)
                {
                    webService.GetDigitalContentByIDAsync(index);
                    index++;
                }
            }
            catch (Exception ex)
            {
                tbkError.Text = ex.Message;
                tbkError.Text += ex.InnerException.Message;
                tbkError.Text += ex.StackTrace;
                tbkError.Text += ex.Data.ToString();
                tbkError.Text += ex.GetBaseException().Message;
            }
            tbkMax.Text += "Exit loadImages()";
        }

        private void btnNext_Click(object sender, RoutedEventArgs e)
        {
            if (curPage != 0)
            {
                if (curPage != maxPage)
                {
                    loadImages();
                    curPage++;
                }
            }
            //else
            //{
            //    if (searchIndex >= GALLERY_SIZE+1)
            //    {

            //    }
            //}
        }

        private void btnPrev_Click(object sender, RoutedEventArgs e)
        {
            if (curPage != 0)
            {
                if (curPage != 1)
                {
                    index = index - 12;
                    loadImages();
                    curPage--;
                }
            }
        }

        private void btnFirst_Click(object sender, RoutedEventArgs e)
        {
            if (curPage != 0)
            {
                if (curPage != 1)
                {
                    index = 1;
                    loadImages();
                    curPage = 1;
                }
            }
        }

        private void btnLast_Click(object sender, RoutedEventArgs e)
        {
            if (curPage != 0)
            {
                if (curPage != maxPage)
                {
                    index = (maxPage - 1) * GALLERY_SIZE + 1;
                    loadImages();
                    curPage = maxPage;
                }
            }
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            if (tbSearch.Text != "")
            {
                tbkResults.Text = "Searching...";
                searchIndex = 1;
                searchString = tbSearch.Text;
                webService.SearchDigitalContentAsync(searchString);
                btnSearch.Content = "PRESSED";
            }
        }

        private void tbSearch_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            //tbkResults.Text = "text changed";
            if (searchString != "")
                if (tbSearch.Text == "")
                {
                    tbkResults.Text = "";
                    curPage = 1;
                    searchIndex = 1;
                    searchString = "";
                    index = 1;
                    loadImages();
                }
        }

        public void showDetails(int id)
        {
            //DetailsView.tbkTitle.Text = "Showing Details";
            DetailsView.tbkTitle.Text = dcList[id - 1].Title;

            MemoryStream stream = new MemoryStream(dcList[id - 1].Content.Bytes);

            if (dcList[id - 1].MIMEType.Contains("image"))
            {
                BitmapImage bImg = new BitmapImage();
                bImg.SetSource(stream);
                DetailsView.imgDetails.Source = bImg;
                //Image img;
                //img = (Image)FindName("img" + id.ToString());
                //DetailsView.imgDetails.Source = img.Source;
            }
            else if (dcList[id - 1].MIMEType.Contains("video"))
            {
                DetailsView.bdrImage.Visibility = Visibility.Collapsed;
                DetailsView.bdrMedia.Visibility = Visibility.Visible;
                DetailsView.mediaPlayer.SetSource(stream);
            }
            DetailsView.Visibility = Visibility.Visible;
        }

        private void bdr1_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            //tbkResults.Text = "bdr1_MouseLeftButtonUp";
            showDetails(1);
        }

        private void bdr2_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            //tbkResults.Text = "bdr2_MouseLeftButtonUp";
            showDetails(2);
        }

        private void bdr3_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            //tbkResults.Text = "bdr3_MouseLeftButtonUp";
            showDetails(3);
        }

        private void bdr4_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            //tbkResults.Text = "bdr4_MouseLeftButtonUp";
            showDetails(4);
        }

        private void bdr5_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            //tbkResults.Text = "bdr5_MouseLeftButtonUp";
            showDetails(5);
        }

        private void bdr6_MouseLeftButtonUp(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            //tbkResults.Text = "bdr6_MouseLeftButtonUp";
            showDetails(6);
        }
    }
}
