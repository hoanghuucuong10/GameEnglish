using BLL;
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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GameLearnEnlish.UserControls
{
    /// <summary>
    /// Interaction logic for ListActiveUC.xaml
    /// </summary>
    public partial class BoxSubMenuUC : UserControl
    {
        public static BoxSubMenuUC boxSubMenuUC = null;

        #region [Âm thanh các lable]
        List<Data.Unit> units = new List<Data.Unit>();
        MediaPlayer mplayer1 = new MediaPlayer();
        MediaPlayer mplayer2 = new MediaPlayer();
        MediaPlayer mplayer3 = new MediaPlayer();
        MediaPlayer mplayer4 = new MediaPlayer();
        MediaPlayer mplayer5 = new MediaPlayer();
        MediaPlayer mplayer6 = new MediaPlayer();
        MediaPlayer mplayer7 = new MediaPlayer(); //Âm thanh cho các nút
        #endregion
        #region [Khởi tạo Uri hình ảnh các Menu_Globe]
        Uri uriImg1;
        Uri uriImg2;
        Uri uriImg3;
        Uri uriImg4;
        Uri uriImg5;
        Uri uriImg6;
        Uri uriImg7;
        Uri uriImg8;
        Uri uriImgAs;
        Uri uriImgPhonics;
        #endregion
        SelectElementUC ButtonSelect;
        public BoxSubMenuUC()
        {
            boxSubMenuUC = this;
            InitializeComponent();

            units = (new UnitBLL()).GetUnits();
            #region [Âm thanh các unit]
            mplayer1.Open(new Uri(units[0].VoiceTitle, UriKind.Relative));
            mplayer2.Open(new Uri(units[1].VoiceTitle, UriKind.Relative));
            mplayer3.Open(new Uri(units[2].VoiceTitle, UriKind.Relative));
            mplayer4.Open(new Uri(units[3].VoiceTitle, UriKind.Relative));
            mplayer5.Open(new Uri(units[4].VoiceTitle, UriKind.Relative));
            mplayer6.Open(new Uri(units[5].VoiceTitle, UriKind.Relative));
            mplayer7.Open(new Uri(units[6].VoiceTitle, UriKind.Relative));
            #endregion

            #region [Hình ảnh các Menu_Globe]
            uriImg1 = new Uri(units[0].Image, UriKind.Relative);
            uriImg2 = new Uri(units[1].Image, UriKind.Relative);
            uriImg3 = new Uri(units[2].Image, UriKind.Relative);
            uriImg4 = new Uri(units[3].Image, UriKind.Relative);
            uriImg5 = new Uri(units[4].Image, UriKind.Relative);
            uriImg6 = new Uri(units[5].Image, UriKind.Relative);
            uriImg7 = new Uri(units[6].Image, UriKind.Relative);
            uriImg8 = new Uri(units[7].Image, UriKind.Relative);
            uriImgAs = new Uri(@"\media\textures\global\Menu_Globe_U9.png", UriKind.Relative);
            uriImgPhonics = new Uri(@"\media\textures\global\Menu_Globe_U10.png", UriKind.Relative);
            #endregion

        }

        public void StopVoid()//Tắt âm thanh
        {
            if (MenuUC.menuUC != null)
            {
                MenuUC.menuUC.StopVoid();
            }


            mplayer1.Stop();
            mplayer2.Stop();
            mplayer3.Stop();
            mplayer4.Stop();
            mplayer5.Stop();
            mplayer6.Stop();
            mplayer7.Stop();

        }
        public void ChangeUnit(string NameBtn) // Đổi tiêu đề khi nhấn vào từng nút unit ở Menu
        {
            StopVoid();
            var nameBtn = NameBtn;

            if (nameBtn != "")
            {
                switch (nameBtn)
                {
                    case "imgBt_unit_1":
                        {
                            ButtonSelect = SelectElementUC._Bt_unit;//Nút nhấn là unit
                            lblTheme.Content = units[0].Title;
                            imgMenu_Globe_U.Source = new BitmapImage(uriImg1);//đổi hình ảnh menu globe
                            break;
                        }
                    case "imgBt_unit_2":
                        {
                            ButtonSelect = SelectElementUC._Bt_unit;//Nút nhấn là unit
                            lblTheme.Content = units[1].Title;

                            imgMenu_Globe_U.Source = new BitmapImage(uriImg2);
                            break;
                        }
                    case "imgBt_unit_3":
                        {
                            ButtonSelect = SelectElementUC._Bt_unit;//Nút nhấn là unit
                            lblTheme.Content = units[2].Title;

                            imgMenu_Globe_U.Source = new BitmapImage(uriImg3);
                            break;
                        }
                    case "imgBt_unit_4":
                        {
                            ButtonSelect = SelectElementUC._Bt_unit;//Nút nhấn là unit
                            lblTheme.Content = units[3].Title;

                            imgMenu_Globe_U.Source = new BitmapImage(uriImg4);
                            break;
                        }
                    case "imgBt_unit_5":
                        {
                            ButtonSelect = SelectElementUC._Bt_unit;//Nút nhấn là unit
                            lblTheme.Content = units[4].Title;

                            imgMenu_Globe_U.Source = new BitmapImage(uriImg5);
                            break;
                        }
                    case "imgBt_unit_6":
                        {
                            ButtonSelect = SelectElementUC._Bt_unit;//Nút nhấn là unit
                            lblTheme.Content = units[5].Title;

                            imgMenu_Globe_U.Source = new BitmapImage(uriImg6);
                            break;
                        }
                    case "imgBt_unit_7":
                        {
                            ButtonSelect = SelectElementUC._Bt_unit;//Nút nhấn là unit
                            lblTheme.Content = units[6].Title;

                            imgMenu_Globe_U.Source = new BitmapImage(uriImg7);
                            break;
                        }
                    case "imgBt_unit_8":
                        {
                            ButtonSelect = SelectElementUC._Bt_unit;//Nút nhấn là unit
                            lblTheme.Content = units[7].Title;

                            imgMenu_Globe_U.Source = new BitmapImage(uriImg8);
                            break;
                        }

                    default:
                        break;
                }
            }
        }
        private void lblActivity_MouseEnter(object sender, MouseEventArgs e)
        {
            StopVoid();
            var nameTbl = sender as Label;

            if (nameTbl != null)
            {
                switch (nameTbl.Name)
                {
                    case "lblActivity1":
                        {
                            lblActivity1.Foreground = new SolidColorBrush(Colors.Red);//Đổi màu khi rê chuột vào lable
                            mplayer1.Play();//Phat âm lable
                            break;
                        }
                    case "lblActivity2":
                        {
                            lblActivity2.Foreground = new SolidColorBrush(Colors.Red);
                            mplayer2.Play();//Phat âm lable
                            break;
                        }
                    case "lblActivity3":
                        {
                            lblActivity3.Foreground = new SolidColorBrush(Colors.Red);
                            mplayer3.Play();//Phat âm lable
                            break;
                        }
                    case "lblActivity4":
                        {
                            lblActivity4.Foreground = new SolidColorBrush(Colors.Red);
                            mplayer4.Play();//Phat âm lable
                            break;
                        }
                    case "lblActivity5":
                        {
                            lblActivity5.Foreground = new SolidColorBrush(Colors.Red);
                            mplayer5.Play();//Phat âm lable
                            break;
                        }
                    case "lblActivity6":
                        {
                            lblActivity6.Foreground = new SolidColorBrush(Colors.Red);
                            mplayer6.Play();//Phat âm lable
                            break;
                        }
                    case "lblActivity7":
                        {
                            lblActivity7.Foreground = new SolidColorBrush(Colors.Red);
                            mplayer7.Play();//Phat âm lable
                            break;
                        }
                    default:
                        break;
                }
            }
        }
        private void lblActivity_MouseLeave(object sender, MouseEventArgs e)
        {
            StopVoid();
            var nameTbl = sender as Label;

            if (nameTbl != null)
            {
                switch (nameTbl.Name)
                {
                    case "lblActivity1":
                        {
                            lblActivity1.Foreground = new SolidColorBrush(Colors.Black);
                            break;
                        }
                    case "lblActivity2":
                        {
                            lblActivity2.Foreground = new SolidColorBrush(Colors.Black);
                            break;
                        }
                    case "lblActivity3":
                        {
                            lblActivity3.Foreground = new SolidColorBrush(Colors.Black);
                            break;
                        }
                    case "lblActivity4":
                        {
                            lblActivity4.Foreground = new SolidColorBrush(Colors.Black);
                            break;
                        }
                    case "lblActivity5":
                        {
                            lblActivity5.Foreground = new SolidColorBrush(Colors.Black);
                            break;
                        }
                    case "lblActivity6":
                        {
                            lblActivity6.Foreground = new SolidColorBrush(Colors.Black);
                            break;
                        }
                    case "lblActivity7":
                        {
                            lblActivity7.Foreground = new SolidColorBrush(Colors.Black);
                            break;
                        }
                    default:
                        break;
                }
            }
        }

        public void CallChangeActivity(string nameTbl, SelectElementUC ButtonIsSelect)
        {
            Global.Instance.WindowMain.grdPlacard.Children.Clear();
            Global.Instance.WindowMain.grdPlacard.Children.Add(new PlacardUC());
            PlacardUC.placardUC.ChangeActivity(nameTbl, ButtonIsSelect);

        }

        public void UnitUCActivity(Unit unit, string Activity)//Gọi các UC activity theo từng Unit khi MouseDown lable
        {
            StopVoid();
            //Xóa UC cũ
            Global.Instance.WindowMain.grdUC_Activity.Children.Clear();
            switch (Activity)
            {
                case "lblActivity1":
                    {
                        //Add uc vào main
                        UC_Concentration UC_Activity = new UC_Concentration((int)unit);
                        Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity); //Gọi UC với đối số truyền vào là 1
                        HomeUC.userControl = UC_Activity;
                        break;
                    }
                case "lblActivity2":
                    {
                        UC_Matching UC_Activity = new UC_Matching((int)unit);
                        Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                        HomeUC.userControl = UC_Activity;
                        break;
                    }
                case "lblActivity3":
                    {
                        //Add uc vào main
                        UC_Sorting UC_Activity = new UC_Sorting((int)unit);
                        Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                        HomeUC.userControl = UC_Activity;
                        break;
                    }
                case "lblActivity4":
                    {
                        //Add uc vào main
                        UC_MultipleChoice UC_Activity = new UC_MultipleChoice((int)unit);
                        Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                        HomeUC.userControl = UC_Activity;
                        break;
                    }
                case "lblActivity5":
                    {
                        //Add uc vào main
                        UC_Painting UC_Activity = new UC_Painting((int)unit);
                        Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                        HomeUC.userControl = UC_Activity;
                        break;
                    }
                case "lblActivity6":
                    {
                        //Add uc vào main
                        UC_StoryTime UC_Activity = new UC_StoryTime((int)unit);
                        Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                        HomeUC.userControl = UC_Activity;
                        break;
                    }
                case "lblActivity7":
                    {
                        //Add uc vào main
                        UC_LookAndFind UC_Activity = new UC_LookAndFind((int)unit);
                        Global.Instance.WindowMain.grdUC_Activity.Children.Add(UC_Activity);
                        HomeUC.userControl = UC_Activity;
                        break;
                    }
                default:
                    break;
            }

            switch ((int)unit)
            {
                case 1:
                    {
                        Global.Instance.homeUC.ChangeUnintTitleInMain("Unit " + units[0].Number + ": " + units[0].Title);
                        break;
                    }
                case 2:
                    {
                        Global.Instance.homeUC.ChangeUnintTitleInMain("Unit " + units[1].Number + ": " + units[1].Title);
                        break;
                    }
                case 3:
                    {
                        Global.Instance.homeUC.ChangeUnintTitleInMain("Unit " + units[2].Number + ": " + units[2].Title);
                        break;
                    }
                case 4:
                    {
                        Global.Instance.homeUC.ChangeUnintTitleInMain("Unit " + units[3].Number + ": " + units[3].Title);
                        break;
                    }
                case 5:
                    {
                        Global.Instance.homeUC.ChangeUnintTitleInMain("Unit " + units[4].Number + ": " + units[4].Title);
                        break;
                    }
                case 6:
                    {
                        Global.Instance.homeUC.ChangeUnintTitleInMain("Unit " + units[5].Number + ": " + units[5].Title);
                        break;
                    }
                case 7:
                    {
                        Global.Instance.homeUC.ChangeUnintTitleInMain("Unit " + units[6].Number + ": " + units[6].Title);
                        break;
                    }
                case 8:
                    {
                        Global.Instance.homeUC.ChangeUnintTitleInMain("Unit " + units[7].Number + ": " + units[7].Title);
                        break;
                    }
                default:
                    break;
            }
        }
        private void lblActivity_MouseDown(object sender, MouseButtonEventArgs e)
        {
            StopVoid();
            var nameTbl = sender as Label;

            if (nameTbl != null)
            {
                if (ButtonSelect == SelectElementUC._Bt_unit)//Nếu nút nhấn là Unit
                {

                    switch (nameTbl.Name)
                    {
                        case "lblActivity1":
                            {
                                Global.Instance.indexSelectActivity = 1;//Set index chọn lable activity
                                CallChangeActivity(nameTbl.Name, ButtonSelect);// Đổi placard theo unit 
                                UnitUCActivity(Global.Instance.UnitSelect, nameTbl.Name);//Gọi các UC activity của từng Unit
                                
                                break;
                            }
                        case "lblActivity2":
                            {
                                Global.Instance.indexSelectActivity = 2;//Set index chọn lable activity
                                CallChangeActivity(nameTbl.Name, ButtonSelect);// Đổi placard theo unit 
                                UnitUCActivity(Global.Instance.UnitSelect, nameTbl.Name);//Gọi các UC activity của từng Unit
                                break;
                            }
                        case "lblActivity3":
                            {
                                Global.Instance.indexSelectActivity = 3;//Set index chọn lable activity
                                CallChangeActivity(nameTbl.Name, ButtonSelect);// Đổi placard theo unit 
                                UnitUCActivity(Global.Instance.UnitSelect, nameTbl.Name);//Gọi các UC activity của từng Unit
                                break;
                            }
                        case "lblActivity4":
                            {
                                Global.Instance.indexSelectActivity = 4;//Set index chọn lable activity
                                CallChangeActivity(nameTbl.Name, ButtonSelect);// Đổi placard theo unit 
                                UnitUCActivity(Global.Instance.UnitSelect, nameTbl.Name);//Gọi các UC activity của từng Unit
                                break;
                            }
                        case "lblActivity5":
                            {
                                Global.Instance.indexSelectActivity = 5;//Set index chọn lable activity
                                CallChangeActivity(nameTbl.Name, ButtonSelect);// Đổi placard theo unit 
                                UnitUCActivity(Global.Instance.UnitSelect, nameTbl.Name);//Gọi các UC activity của từng Unit
                                break;
                            }
                        case "lblActivity6":
                            {
                                Global.Instance.indexSelectActivity = 6;//Set index chọn lable activity
                                CallChangeActivity(nameTbl.Name, ButtonSelect);// Đổi placard theo unit 
                                UnitUCActivity(Global.Instance.UnitSelect, nameTbl.Name);//Gọi các UC activity của từng Unit
                                break;
                            }
                        case "lblActivity7":
                            {
                                Global.Instance.indexSelectActivity = 7;//Set index chọn lable activity
                                CallChangeActivity(nameTbl.Name, ButtonSelect);// Đổi placard theo unit 
                                UnitUCActivity(Global.Instance.UnitSelect, nameTbl.Name);//Gọi các UC activity của từng Unit
                                break;
                            }
                        default:
                            break;
                    }
                }
            }
        }

        public void GotoActivity(int num)
        {
            StopVoid();
            switch (num)
            {
                case 1:
                    {
                        Global.Instance.indexSelectActivity = 1;//Set index chọn lable activity
                        CallChangeActivity("lblActivity1", ButtonSelect);// Đổi placard theo unit 
                        UnitUCActivity(Global.Instance.UnitSelect, "lblActivity1");//Gọi các UC activity của từng Unit

                        break;
                    }
                case 2:
                    {
                        Global.Instance.indexSelectActivity = 2;//Set index chọn lable activity
                        CallChangeActivity("lblActivity2", ButtonSelect);// Đổi placard theo unit 
                        UnitUCActivity(Global.Instance.UnitSelect, "lblActivity2");//Gọi các UC activity của từng Unit
                        break;
                    }
                case 3:
                    {
                        Global.Instance.indexSelectActivity = 3;//Set index chọn lable activity
                        CallChangeActivity("lblActivity3", ButtonSelect);// Đổi placard theo unit 
                        UnitUCActivity(Global.Instance.UnitSelect, "lblActivity3");//Gọi các UC activity của từng Unit
                        break;
                    }
                case 4:
                    {
                        Global.Instance.indexSelectActivity = 4;//Set index chọn lable activity
                        CallChangeActivity("lblActivity4", ButtonSelect);// Đổi placard theo unit 
                        UnitUCActivity(Global.Instance.UnitSelect, "lblActivity4");//Gọi các UC activity của từng Unit
                        break;
                    }
                case 5:
                    {
                        Global.Instance.indexSelectActivity = 5;//Set index chọn lable activity
                        CallChangeActivity("lblActivity5", ButtonSelect);// Đổi placard theo unit 
                        UnitUCActivity(Global.Instance.UnitSelect, "lblActivity5");//Gọi các UC activity của từng Unit
                        break;
                    }
                case 6:
                    {
                        Global.Instance.indexSelectActivity = 6;//Set index chọn lable activity
                        CallChangeActivity("lblActivity6", ButtonSelect);// Đổi placard theo unit 
                        UnitUCActivity(Global.Instance.UnitSelect, "lblActivity6");//Gọi các UC activity của từng Unit
                        break;
                    }
                case 7:
                    {
                        Global.Instance.indexSelectActivity = 7;//Set index chọn lable activity
                        CallChangeActivity("lblActivity7", ButtonSelect);// Đổi placard theo unit 
                        UnitUCActivity(Global.Instance.UnitSelect, "lblActivity7");//Gọi các UC activity của từng Unit
                        break;
                    }
                default:
                    break;
            }
        }
    }
}