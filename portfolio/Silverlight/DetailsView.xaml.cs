using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

namespace ContentViewer
{
	public partial class DetailsView : UserControl
	{
		public DetailsView()
		{
			// Required to initialize variables
			InitializeComponent();
		}

        public void resetAll()
        {
            mediaPlayer.Stop();
            bdrMedia.Visibility = Visibility.Collapsed;
            bdrImage.Visibility = Visibility.Visible;
             
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            resetAll();
            Visibility = Visibility.Collapsed;
        }
	}
}