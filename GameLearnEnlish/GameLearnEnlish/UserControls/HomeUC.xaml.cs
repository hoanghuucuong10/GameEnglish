using AudioSwitcher.AudioApi.CoreAudio;
using GameLearnEnlish.Model;
using GameLearnEnlish.Utility;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
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
    /// Interaction logic for Home.xaml
    /// </summary>
    public partial class HomeUC : UserControl, INotifyPropertyChanged
    {
        public static HomeUC homeUC = null;
        private MenuUC ucMenu;
        private BoxSubMenuUC ucBoxSubMenu;
        private Menu_GlobeUC ucMenu_Globe;
        private Box_helpUC ucBox_help;
        private Exit_bg_boxUC ucExit_bg_box;
        private BackgroudOpacityUC backgroudOpacity;
        private MediaPlayer mplayerClose = new MediaPlayer();
        private Uri uriClose;
        public static UserControl userControl = null;


        public HomeUC()
        {
            homeUC = this;
            InitializeComponent();
            this.DataContext = this;
            grdHome.Visibility = Visibility.Visible;

            #region [Hình ảnh]
            uriClose = new Uri(@"..\..\media\audio\global\clickbutton.mp3", UriKind.Relative);
            #endregion

            if (Global.Instance.ButtonMenuSelect == SelectElementUC._imgBt_unit_new)
            {
                ucMenu = new MenuUC();
                ucBoxSubMenu = new BoxSubMenuUC();
                ucMenu_Globe = new Menu_GlobeUC();
                backgroudOpacity = new BackgroudOpacityUC();

                Global.Instance.WindowMain.grdBackgroudOpacityUC.Children.Add(backgroudOpacity);//Khởi tạo UC BackgroudOpacityUC
                Global.Instance.WindowMain.grdMenuUC.Children.Add(ucMenu);
                Global.Instance.WindowMain.grdBoxSubMenuUC.Children.Add(ucBoxSubMenu);
                Global.Instance.WindowMain.grdMenu_GlobeUC.Children.Add(ucMenu_Globe);

                BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_unit_1");
                MenuUC.menuUC.IsVisibleButtonClick("imgBt_unit_1");
                Global.Instance.UnitSelect = Unit._unit1;
            }

            //Set volume img
            volApp = defaultPlaybackDevice.Volume * 3;
            RaisePropertyChanged("VolumnValue");

        }

        public void StopVoid()//Tắt âm thanh
        {
            mplayerClose.Stop();
        }

        public void StopAllMedia()
        {
            if (userControl != null)
            {
                if (userControl is UC_Concentration)
                {
                    (userControl as UC_Concentration).StopAllMedia();
                }
                else if (userControl is UC_Matching)
                {
                    (userControl as UC_Matching).StopAllMedia();
                }
                else if (userControl is UC_LookAndFind)
                {
                    (userControl as UC_LookAndFind).StopAllMedia();
                }
                else if (userControl is UC_MultipleChoice)
                {
                    (userControl as UC_MultipleChoice).StopAllMedia();
                }
                else if (userControl is UC_Painting)
                {
                    (userControl as UC_Painting).StopAllMedia();
                }
                else if (userControl is UC_Sorting)
                {
                    (userControl as UC_Sorting).StopAllMedia();
                }
                else if (userControl is UC_StoryTime)
                {
                    (userControl as UC_StoryTime).StopAllMedia();
                }
            }
        }

        private void imgbtnMenu_MouseDown(object sender, MouseButtonEventArgs e)
        {
            //Tắt các âm khi mở menu

            Global.Instance.WindowMain.grdBackgroudOpacityUC.Children.Add(backgroudOpacity);//Khởi tạo UC BackgroudOpacityUC
            Global.Instance.WindowMain.grdMenuUC.Children.Clear();
            Global.Instance.WindowMain.grdMenuUC.Children.Add(ucMenu);
            Global.Instance.WindowMain.grdBoxSubMenuUC.Children.Add(ucBoxSubMenu);
            Global.Instance.WindowMain.grdMenu_GlobeUC.Children.Add(ucMenu_Globe);

            switch (Global.Instance.ButtonMenuSelect)
            {

                case SelectElementUC._imgBt_unit_1:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_unit_1");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_unit_1");
                        //grdBackGroud.Visibility = Visibility.Hidden;
                        break;
                    }
                case SelectElementUC._imgBt_unit_2:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_unit_2");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_unit_2");
                        break;
                    }
                case SelectElementUC._imgBt_unit_3:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_unit_3");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_unit_3");
                        break;
                    }
                case SelectElementUC._imgBt_unit_4:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_unit_4");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_unit_4");
                        break;
                    }
                case SelectElementUC._imgBt_unit_5:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_unit_5");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_unit_5");
                        break;
                    }
                case SelectElementUC._imgBt_unit_6:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_unit_6");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_unit_6");
                        break;
                    }
                case SelectElementUC._imgBt_unit_7:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_unit_7");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_unit_7");
                        break;
                    }
                case SelectElementUC._imgBt_unit_8:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_unit_8");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_unit_8");
                        break;
                    }
                case SelectElementUC._imgBt_AS:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_AS");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_AS");
                        break;
                    }
                case SelectElementUC._imgBt_Phonics:
                    {
                        BoxSubMenuUC.boxSubMenuUC.ChangeUnit("imgBt_Phonics");
                        MenuUC.menuUC.IsVisibleButtonClick("imgBt_Phonics");
                        break;
                    }
                default:
                    break;
            }
            StopAllMedia();


        }

        private void imgbtnHelp_MouseDown(object sender, MouseButtonEventArgs e)
        {
            ucBox_help = new Box_helpUC();
            Global.Instance.WindowMain.grdBox_helpUC.Children.Add(ucBox_help);
        }

        private void imgbtnClose_MouseDown(object sender, MouseButtonEventArgs e)
        {
            mplayerClose.Open(uriClose);
            mplayerClose.Play();
            ucExit_bg_box = new Exit_bg_boxUC();
            grdToolbarMenu.IsEnabled = false;
            Global.Instance.WindowMain.grdExit_bg_boxUC.Children.Add(ucExit_bg_box);
        }
        private void IsEnableImageButton(bool value)
        {
            if (value)
            {
                imgbtnMenu.IsEnabled = true;
                imgbtnHelp.IsEnabled = true;
                imgbtnBack.IsEnabled = true;
                imgbtnNext.IsEnabled = true;
                imgbtnClose.IsEnabled = true;
            }
            else
            {
                imgbtnMenu.IsEnabled = false;
                imgbtnHelp.IsEnabled = false;
                imgbtnBack.IsEnabled = false;
                imgbtnNext.IsEnabled = false;
                imgbtnClose.IsEnabled = false;
            }
        }

        public void IsEnabledGridToolbarMenu(SelectElementUC selectElementUC)
        {
            if (selectElementUC == SelectElementUC._notEnable)
            {
                grdToolbarMenu.IsEnabled = false;
            }
            else if (selectElementUC == SelectElementUC._isEnable)
                grdToolbarMenu.IsEnabled = true;
        }
        public void HiddenMenu()
        {
            Global.Instance.WindowMain.grdMenuUC.Children.Remove(ucMenu);
            Global.Instance.WindowMain.grdBackgroudOpacityUC.Children.Clear();
            Global.Instance.WindowMain.grdBoxSubMenuUC.Children.Clear();
            Global.Instance.WindowMain.grdMenu_GlobeUC.Children.Clear();
            Global.Instance.WindowMain.grdExit_bg_boxUC.Children.Clear();
        }

        public void CallChangeActivity(string nameTbl, SelectElementUC ButtonIsSelect)
        {
            Global.Instance.WindowMain.grdPlacard.Children.Clear();
            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
            PlacardUC.placardUC.ChangeActivity(nameTbl, ButtonIsSelect);

        }
        private void imgbtnNext_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (userControl != null)
            {

                //Xóa UC cũ
                string x = userControl.GetType().ToString();
                switch (x)
                {
                    case "GameLearnEnlish.UserControls.UC_Concentration":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity2", SelectElementUC._Bt_unit);


                            UC_Matching UC_Activity = new UC_Matching((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_Matching":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity3", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_Sorting UC_Activity = new UC_Sorting((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_Sorting":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity4", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_MultipleChoice UC_Activity = new UC_MultipleChoice((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_MultipleChoice":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity5", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_Painting UC_Activity = new UC_Painting((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_Painting":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity6", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_StoryTime UC_Activity = new UC_StoryTime((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_StoryTime":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity7", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_LookAndFind UC_Activity = new UC_LookAndFind((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_LookAndFind":
                        {

                            break;
                        }
                    default:
                        {

                            break;
                        }
                }
            }

        }

        private void imgbtnBack_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (userControl != null)
            {

                //Xóa UC cũ

                string x = userControl.GetType().ToString();
                switch (x)
                {
                    case "GameLearnEnlish.UserControls.UC_Concentration":
                        {

                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_Matching":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity1", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_Concentration UC_Activity = new UC_Concentration((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;

                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_Sorting":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity2", SelectElementUC._Bt_unit);


                            UC_Matching UC_Activity = new UC_Matching((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_MultipleChoice":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity3", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_Sorting UC_Activity = new UC_Sorting((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_Painting":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity4", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_MultipleChoice UC_Activity = new UC_MultipleChoice((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    case "GameLearnEnlish.UserControls.UC_StoryTime":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity5", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_Painting UC_Activity = new UC_Painting((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;  
                        }
                    case "GameLearnEnlish.UserControls.UC_LookAndFind":
                        {
                            StopAllMedia();
                            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Clear();
                            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
                            PlacardUC.placardUC.ChangeActivity("lblActivity6", SelectElementUC._Bt_unit);
                            //Add uc vào main
                            UC_StoryTime UC_Activity = new UC_StoryTime((int)Global.Instance.UnitSelect);
                            Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                            HomeUC.userControl = UC_Activity;
                            break;
                        }
                    default:
                        {

                            break;
                        }
                }
            }
        }

        #region Volume
        private static double volApp = 0;
        public double VolumnValue
        {
            get { return volApp; }
        }
        public event PropertyChangedEventHandler PropertyChanged;
        private void RaisePropertyChanged(string prop)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }
        private void imgBallVolume_MouseDown(object sender, MouseButtonEventArgs e)
        {
            imgBallVolume.CaptureMouse();
            moving = true;
        }
        private bool moving = false;
        private void imgBallVolume_MouseMove(object sender, MouseEventArgs e)
        {

            if (moving)
            {

                Image l = e.Source as Image;

                Point p = e.GetPosition(CanVasVol);

                volApp = p.Y;

                if (volApp < 0)
                    volApp = 0;
                if (volApp > 300)
                    volApp = 300;


                RaisePropertyChanged("VolumnValue");
            }




        }
        CoreAudioDevice defaultPlaybackDevice = new CoreAudioController().DefaultPlaybackDevice;
        private void imgBallVolume_MouseUp(object sender, MouseButtonEventArgs e)
        {
            moving = false;
            Image l = e.Source as Image;

            double vol = volApp / 3;


            defaultPlaybackDevice.Volume = 100 - vol;
            l.ReleaseMouseCapture();
        }
        #endregion
    }
}
