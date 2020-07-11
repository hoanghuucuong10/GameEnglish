using GameLearnEnlish.Model;
using GameLearnEnlish.Utility;
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

namespace GameLearnEnlish.UserControls
{
    /// <summary>
    /// Interaction logic for PlacardUC.xaml
    /// </summary>
    public partial class PlacardUC : UserControl
    {
        public static PlacardUC placardUC = null;
        public PlacardUC()
        {
            placardUC = this;
            InitializeComponent();
        }

        public void ChangeActivity(string nameLable, SelectElementUC ButtonSelect)
        {
            if (nameLable != "")
            {
                if (ButtonSelect == SelectElementUC._Bt_unit)
                {
                    switch (nameLable)
                    {
                        case "lblActivity1":
                            {
                                lblActivity.Content = "Concentration";
                                Uri uri = new Uri(@"\media\textures\global\actv1a.png", UriKind.Relative);
                                imgActv.Source = new BitmapImage(uri);
                                HomeUC.homeUC.HiddenMenu();
                                Global.Instance.ActivitySelect = SelectElementUC._activity1;//Gán activity
                                break;
                            }
                        case "lblActivity2":
                            {
                                lblActivity.Content = "Matching";
                                Uri uri = new Uri(@"\media\textures\global\actv2a.png", UriKind.Relative);
                                imgActv.Source = new BitmapImage(uri);
                                HomeUC.homeUC.HiddenMenu();
                                Global.Instance.ActivitySelect = SelectElementUC._activity2;//Gán activity
                                break;
                            }
                        case "lblActivity3":
                            {

                                lblActivity.Content = "Sorting";
                                Uri uri = new Uri(@"\media\textures\global\actv3a.png", UriKind.Relative);
                                imgActv.Source = new BitmapImage(uri);
                                HomeUC.homeUC.HiddenMenu();
                                Global.Instance.ActivitySelect = SelectElementUC._activity3;//Gán activity
                                break;
                            }
                        case "lblActivity4":
                            {

                                lblActivity.Content = "Multiple Choice";
                                Uri uri = new Uri(@"\media\textures\global\actv4a.png", UriKind.Relative);
                                imgActv.Source = new BitmapImage(uri);
                                HomeUC.homeUC.HiddenMenu();
                                Global.Instance.ActivitySelect = SelectElementUC._activity4;//Gán activity
                                break;
                            }
                        case "lblActivity5":
                            {

                                lblActivity.Content = "Painting";
                                Uri uri = new Uri(@"\media\textures\global\actv5a.png", UriKind.Relative);
                                imgActv.Source = new BitmapImage(uri);
                                HomeUC.homeUC.HiddenMenu();
                                Global.Instance.ActivitySelect = SelectElementUC._activity5;//Gán activity
                                break;
                            }
                        case "lblActivity6":
                            {

                                lblActivity.Content = "Story Time";
                                Uri uri = new Uri(@"\media\textures\global\actv6a.png", UriKind.Relative);
                                imgActv.Source = new BitmapImage(uri);
                                HomeUC.homeUC.HiddenMenu();
                                Global.Instance.ActivitySelect = SelectElementUC._activity6;//Gán activity
                                break;
                            }
                        case "lblActivity7":
                            {

                                lblActivity.Content = "Look and Find";
                                Uri uri = new Uri(@"\media\textures\global\actv7a.png", UriKind.Relative);
                                imgActv.Source = new BitmapImage(uri);
                                HomeUC.homeUC.HiddenMenu();
                                Global.Instance.ActivitySelect = SelectElementUC._activity7;//Gán activity
                                break;
                            }

                        default:
                            break;
                    }
                }
            }
        }
    }
}
