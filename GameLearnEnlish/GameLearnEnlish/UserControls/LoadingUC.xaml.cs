using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace GameLearnEnlish.UserControls
{
    /// <summary>
    /// Interaction logic for LoadingUC.xaml
    /// </summary>
    public partial class LoadingUC : UserControl
    {
        private MainWindow mainWindow;
        public LoadingUC(MainWindow main)
        {
            mainWindow = main;
         
            InitializeComponent();
            media.Source = new Uri(@"..\..\Images\load2.gif", UriKind.Relative);
            lab.Visibility = Visibility.Visible;
            Loading();
        }

        DispatcherTimer timer = new DispatcherTimer();

        private void MediaElement_MediaEnded(object sender, RoutedEventArgs e)
        {
            media.Position = new TimeSpan(0, 0, 1);
            media.Play();
        }

        private void timer_tick(object sender, EventArgs e)
        {
            timer.Stop();
            media.Visibility = Visibility.Hidden;
            lab.Visibility = Visibility.Hidden;

            HomeUC homeUC = new HomeUC();

            mainWindow.grdHomeUC.Children.Clear();
            mainWindow.grdHomeUC.Children.Add(homeUC);

        }

        void Loading()
        {
            timer.Tick += timer_tick;
            timer.Interval = new TimeSpan(0, 0, 10);
            timer.Start();
        }
    }
}
