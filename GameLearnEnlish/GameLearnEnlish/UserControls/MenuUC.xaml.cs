﻿using BLL;
using GameLearnEnlish.Model;
using GameLearnEnlish.Utility;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
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
    /// Interaction logic for MenuUC.xaml
    /// </summary>
    public partial class MenuUC : UserControl
    {
        public static MenuUC menuUC = null;
        public SelectElementUC ButtonSelect;
        public List<Data.Unit> units = new List<Data.Unit>();
        #region [Khởi tạo âm thanh các unit]
        private MediaPlayer mplayer1 = new MediaPlayer();
        private MediaPlayer mplayer2 = new MediaPlayer();
        private MediaPlayer mplayer3 = new MediaPlayer();
        private MediaPlayer mplayer4 = new MediaPlayer();
        private MediaPlayer mplayer5 = new MediaPlayer();
        private MediaPlayer mplayer6 = new MediaPlayer();
        private MediaPlayer mplayer7 = new MediaPlayer();
        private MediaPlayer mplayer8 = new MediaPlayer();
        private MediaPlayer mplayerAs = new MediaPlayer();

        private MediaPlayer mplayerPhonics = new MediaPlayer(); //Âm thanh cho các nút
        #endregion

        #region [Khởi tạo Uri hình ảnh các unit]
        private Uri uriImg1;
        private Uri uriImg2;
        private Uri uriImg3;
        private Uri uriImg4;
        private Uri uriImg5;
        private Uri uriImg6;
        private Uri uriImg7;
        private Uri uriImg8;
        private Uri uriImgAs;
        private Uri uriImgPhonics;
        #endregion

        public MenuUC()
        {
            menuUC = this;
            InitializeComponent();
            StopVoid();//Tắt âm thanh

            units = (new UnitBLL()).GetUnits();
            #region [Âm thanh các unit]
            mplayer1.Open(new Uri(units[0].VoiceUnit, UriKind.Relative));
            mplayer2.Open(new Uri(units[1].VoiceUnit, UriKind.Relative));
            mplayer3.Open(new Uri(units[2].VoiceUnit, UriKind.Relative));
            mplayer4.Open(new Uri(units[3].VoiceUnit, UriKind.Relative));
            mplayer5.Open(new Uri(units[4].VoiceUnit, UriKind.Relative));
            mplayer6.Open(new Uri(units[5].VoiceUnit, UriKind.Relative));
            mplayer7.Open(new Uri(units[6].VoiceUnit, UriKind.Relative));
            mplayer8.Open(new Uri(units[7].VoiceUnit, UriKind.Relative));
            mplayerAs.Open(new Uri(@"..\..\media\audio\global\BigF1_cdau_menu_U10.mp3", UriKind.Relative));
            mplayerPhonics.Open(new Uri(@"..\..\media\audio\global\BigF1_cdau_menu_U09.mp3", UriKind.Relative));
            #endregion

            #region [Hình ảnh ban đầu]
            uriImg1 = new Uri(units[0].ImageButton, UriKind.Relative);
            uriImg2 = new Uri(units[1].ImageButton, UriKind.Relative);
            uriImg3 = new Uri(units[2].ImageButton, UriKind.Relative);
            uriImg4 = new Uri(units[3].ImageButton, UriKind.Relative);
            uriImg5 = new Uri(units[4].ImageButton, UriKind.Relative);
            uriImg6 = new Uri(units[5].ImageButton, UriKind.Relative);
            uriImg7 = new Uri(units[6].ImageButton, UriKind.Relative);
            uriImg8 = new Uri(units[7].ImageButton, UriKind.Relative);
            uriImgAs = new Uri(@"\media\textures\global\Bt_unit_10_over.png", UriKind.Relative);
            uriImgPhonics = new Uri(@"\media\textures\global\Bt_unit_9_over.png", UriKind.Relative);

            imgBt_unit_1.Source = new BitmapImage(uriImg1);
            imgBt_unit_2.Source = new BitmapImage(uriImg2);
            imgBt_unit_3.Source = new BitmapImage(uriImg3);
            imgBt_unit_4.Source = new BitmapImage(uriImg4);
            imgBt_unit_5.Source = new BitmapImage(uriImg5);
            imgBt_unit_6.Source = new BitmapImage(uriImg6);
            imgBt_unit_7.Source = new BitmapImage(uriImg7);
            imgBt_unit_8.Source = new BitmapImage(uriImg8);

            #endregion

        }

        public void StopVoid()//Tắt âm thanh
        {
            mplayer1.Stop();
            mplayer2.Stop();
            mplayer3.Stop();
            mplayer4.Stop();
            mplayer5.Stop();
            mplayer6.Stop();
            mplayer7.Stop();
            mplayer8.Stop();
            mplayerAs.Stop();
            mplayerPhonics.Stop();
        }
        private void CallChangeUnit(string NameBtnImage)//Đổi unit bên menu_globe và các activity bên boxsub
        {
            Global.Instance.WindowMain.grdMenu_GlobeUC.Children.Clear();
            Global.Instance.WindowMain.grdMenu_GlobeUC.Children.Add(new Menu_GlobeUC());

            Global.Instance.WindowMain.grdBoxSubMenuUC.Children.Clear();
            Global.Instance.WindowMain.grdBoxSubMenuUC.Children.Add(new BoxSubMenuUC());
            BoxSubMenuUC.boxSubMenuUC.ChangeUnit(NameBtnImage);//Đổi các lable activity cho boxsubmenu
 
        }

        public void IsVisibleButtonClick(string NameButton) //Hiện nút khi được click
        {
            imgBt_unit_click_1.Visibility = Visibility.Hidden;
            imgBt_unit_click_2.Visibility = Visibility.Hidden;
            imgBt_unit_click_3.Visibility = Visibility.Hidden;
            imgBt_unit_click_4.Visibility = Visibility.Hidden;
            imgBt_unit_click_5.Visibility = Visibility.Hidden;
            imgBt_unit_click_6.Visibility = Visibility.Hidden;
            imgBt_unit_click_7.Visibility = Visibility.Hidden;
            imgBt_unit_click_8.Visibility = Visibility.Hidden;
            switch (NameButton)
            {
                case "imgBt_unit_1":
                    {
                        imgBt_unit_click_1.Visibility = Visibility.Visible;
                        imgBt_AS_click.Visibility = Visibility.Hidden;
                        imgBt_Phonics_click.Visibility = Visibility.Hidden;
                        CallChangeUnit(NameButton);//Đổi Unit
                        break;
                    }
                case "imgBt_unit_2":
                    {
                        imgBt_unit_click_2.Visibility = Visibility.Visible;
                        imgBt_AS_click.Visibility = Visibility.Hidden;
                        imgBt_Phonics_click.Visibility = Visibility.Hidden;
                        CallChangeUnit(NameButton);
                        break;
                    }
                case "imgBt_unit_3":
                    {
                        imgBt_unit_click_3.Visibility = Visibility.Visible;
                        imgBt_AS_click.Visibility = Visibility.Hidden;
                        imgBt_Phonics_click.Visibility = Visibility.Hidden;
                        CallChangeUnit(NameButton);
                        break;
                    }
                case "imgBt_unit_4":
                    {
                        imgBt_unit_click_4.Visibility = Visibility.Visible;
                        imgBt_AS_click.Visibility = Visibility.Hidden;
                        imgBt_Phonics_click.Visibility = Visibility.Hidden;
                        CallChangeUnit(NameButton);
                        break;
                    }
                case "imgBt_unit_5":
                    {
                        imgBt_unit_click_5.Visibility = Visibility.Visible;
                        imgBt_AS_click.Visibility = Visibility.Hidden;
                        imgBt_Phonics_click.Visibility = Visibility.Hidden;
                        CallChangeUnit(NameButton);
                        break;
                    }
                case "imgBt_unit_6":
                    {
                        imgBt_unit_click_6.Visibility = Visibility.Visible;
                        imgBt_AS_click.Visibility = Visibility.Hidden;
                        imgBt_Phonics_click.Visibility = Visibility.Hidden;
                        CallChangeUnit(NameButton);
                        break;
                    }
                case "imgBt_unit_7":
                    {
                        imgBt_unit_click_7.Visibility = Visibility.Visible;
                        imgBt_AS_click.Visibility = Visibility.Hidden;
                        imgBt_Phonics_click.Visibility = Visibility.Hidden;
                        CallChangeUnit(NameButton);
                        break;
                    }
                case "imgBt_unit_8":
                    {
                        imgBt_unit_click_8.Visibility = Visibility.Visible;
                        imgBt_AS_click.Visibility = Visibility.Hidden;
                        imgBt_Phonics_click.Visibility = Visibility.Hidden;
                        CallChangeUnit(NameButton);
                        break;
                    }
                case "imgBt_AS":
                    {
                        imgBt_unit_click_1.Visibility = Visibility.Hidden;
                        imgBt_unit_click_2.Visibility = Visibility.Hidden;
                        imgBt_unit_click_3.Visibility = Visibility.Hidden;
                        imgBt_unit_click_4.Visibility = Visibility.Hidden;
                        imgBt_unit_click_5.Visibility = Visibility.Hidden;
                        imgBt_unit_click_6.Visibility = Visibility.Hidden;
                        imgBt_unit_click_7.Visibility = Visibility.Hidden;
                        imgBt_unit_click_8.Visibility = Visibility.Hidden;
                        imgBt_AS_click.Visibility = Visibility.Visible;
                        imgBt_Phonics_click.Visibility = Visibility.Hidden;
                        CallChangeUnit(NameButton);
                        break;
                    }
                case "imgBt_Phonics":
                    {
                        imgBt_unit_click_1.Visibility = Visibility.Hidden;
                        imgBt_unit_click_2.Visibility = Visibility.Hidden;
                        imgBt_unit_click_3.Visibility = Visibility.Hidden;
                        imgBt_unit_click_4.Visibility = Visibility.Hidden;
                        imgBt_unit_click_5.Visibility = Visibility.Hidden;
                        imgBt_unit_click_6.Visibility = Visibility.Hidden;
                        imgBt_unit_click_7.Visibility = Visibility.Hidden;
                        imgBt_unit_click_8.Visibility = Visibility.Hidden;
                        imgBt_AS_click.Visibility = Visibility.Hidden;
                        imgBt_Phonics_click.Visibility = Visibility.Visible;
                        CallChangeUnit(NameButton);
                        break;
                    }
                default:
                    break;
            }
        }
        private void imgBt_unit_MouseDown(object sender, MouseButtonEventArgs e)
        {
            StopVoid();//Tắt âm thanh tất cả các unit trước khi nhấn vào
            var nameBtn = sender as Image;
            
            if (nameBtn != null)
            {
                switch (nameBtn.Name)
                {
                    case "imgBt_unit_1":
                        {
                            imgBt_unit_1.Source = new BitmapImage(new Uri(units[0].ImageButtonOver, UriKind.Relative));//Hiển thị hình ảnh over
                            IsVisibleButtonClick(nameBtn.Name);//Hiện nút khi được nhấn
                            Global.Instance.ButtonMenuSelect = SelectElementUC._imgBt_unit_1;//Nút trên menu được click là nút nào
                            Global.Instance.UnitSelect = Unit._unit1;//Unit nào được chọn
                            mplayer1.Play();//Phát âm thanh của unit

                            break;
                        }
                    case "imgBt_unit_2":
                        {
                            imgBt_unit_2.Source = new BitmapImage(new Uri(units[1].ImageButtonOver, UriKind.Relative));//Hiển thị hình ảnh over
                            IsVisibleButtonClick(nameBtn.Name);
                            Global.Instance.ButtonMenuSelect = SelectElementUC._imgBt_unit_2;//Nút trên menu được click là nút nào
                            Global.Instance.UnitSelect = Unit._unit2;//Unit nào được chọn
                            mplayer2.Play();//Phát âm thanh của unit

                            break;
                        }
                    case "imgBt_unit_3":
                        {
                            imgBt_unit_3.Source = new BitmapImage(new Uri(units[2].ImageButtonOver, UriKind.Relative));//Hiển thị hình ảnh over
                            IsVisibleButtonClick(nameBtn.Name);
                            Global.Instance.ButtonMenuSelect = SelectElementUC._imgBt_unit_3;//Nút trên menu được click là nút nào
                            Global.Instance.UnitSelect = Unit._unit3;//Unit nào được chọn

                            mplayer3.Play();//Phát âm thanh của unit
                            break;
                        }
                    case "imgBt_unit_4":
                        {
                            imgBt_unit_4.Source = new BitmapImage(new Uri(units[3].ImageButtonOver, UriKind.Relative));//Hiển thị hình ảnh over
                            IsVisibleButtonClick(nameBtn.Name);
                            Global.Instance.ButtonMenuSelect = SelectElementUC._imgBt_unit_4;//Nút trên menu được click là nút nào
                            Global.Instance.UnitSelect = Unit._unit4;//Unit nào được chọn

                            mplayer4.Play();//Phát âm thanh của unit
                            break;
                        }
                    case "imgBt_unit_5":
                        {
                            imgBt_unit_5.Source = new BitmapImage(new Uri(units[4].ImageButtonOver, UriKind.Relative));//Hiển thị hình ảnh over
                            IsVisibleButtonClick(nameBtn.Name);
                            Global.Instance.ButtonMenuSelect = SelectElementUC._imgBt_unit_5;//Nút trên menu được click là nút nào
                            Global.Instance.UnitSelect = Unit._unit5;//Unit nào được chọn

                            mplayer5.Play();//Phát âm thanh của unit
                            break;
                        }
                    case "imgBt_unit_6":
                        {
                            imgBt_unit_6.Source = new BitmapImage(new Uri(units[5].ImageButtonOver, UriKind.Relative));//Hiển thị hình ảnh over
                            IsVisibleButtonClick(nameBtn.Name);
                            Global.Instance.ButtonMenuSelect = SelectElementUC._imgBt_unit_6;//Nút trên menu được click là nút nào
                            Global.Instance.UnitSelect = Unit._unit6;//Unit nào được chọn

                            mplayer6.Play();//Phát âm thanh của unit
                            break;
                        }
                    case "imgBt_unit_7":
                        {
                            imgBt_unit_7.Source = new BitmapImage(new Uri(units[6].ImageButtonOver, UriKind.Relative));//Hiển thị hình ảnh over
                            IsVisibleButtonClick(nameBtn.Name);
                            Global.Instance.ButtonMenuSelect = SelectElementUC._imgBt_unit_7;//Nút trên menu được click là nút nào
                            Global.Instance.UnitSelect = Unit._unit7;//Unit nào được chọn

                            mplayer7.Play();//Phát âm thanh của unit
                            break;
                        }
                    case "imgBt_unit_8":
                        {
                            imgBt_unit_8.Source = new BitmapImage(new Uri(units[7].ImageButtonOver, UriKind.Relative));//Hiển thị hình ảnh over
                            IsVisibleButtonClick(nameBtn.Name);
                            Global.Instance.ButtonMenuSelect = SelectElementUC._imgBt_unit_8;//Nút trên menu được click là nút nào
                            Global.Instance.UnitSelect = Unit._unit8;//Unit nào được chọn

                            mplayer8.Play();//Phát âm thanh của unit
                            break;
                        }
                    default:
                        break;
                }
            }

        }

        private void imgBt_unit_MouseUp(object sender, MouseButtonEventArgs e)
        {
            var nameBtn = sender as Image;

            if (nameBtn != null)
            {
                switch (nameBtn.Name)
                {
                    case "imgBt_unit_1":
                        {
                            Uri uri = new Uri(units[0].ImageButton, UriKind.Relative);
                            imgBt_unit_1.Source = new BitmapImage(uri);
                            break;
                        }
                    case "imgBt_unit_2":
                        {
                            Uri uri = new Uri(units[1].ImageButton, UriKind.Relative);
                            imgBt_unit_2.Source = new BitmapImage(uri);
                            break;
                        }
                    case "imgBt_unit_3":
                        {
                            Uri uri = new Uri(units[2].ImageButton, UriKind.Relative);
                            imgBt_unit_3.Source = new BitmapImage(uri);
                            break;
                        }
                    case "imgBt_unit_4":
                        {
                            Uri uri = new Uri(units[3].ImageButton, UriKind.Relative);
                            imgBt_unit_4.Source = new BitmapImage(uri);
                            break;
                        }
                    case "imgBt_unit_5":
                        {
                            Uri uri = new Uri(units[4].ImageButton, UriKind.Relative);
                            imgBt_unit_5.Source = new BitmapImage(uri);
                            break;
                        }
                    case "imgBt_unit_6":
                        {
                            Uri uri = new Uri(units[5].ImageButton, UriKind.Relative);
                            imgBt_unit_6.Source = new BitmapImage(uri);
                            break;
                        }
                    case "imgBt_unit_7":
                        {
                            Uri uri = new Uri(units[6].ImageButton, UriKind.Relative);
                            imgBt_unit_7.Source = new BitmapImage(uri);
                            break;
                        }
                    case "imgBt_unit_8":
                        {
                            Uri uri = new Uri(units[7].ImageButton, UriKind.Relative);
                            imgBt_unit_8.Source = new BitmapImage(uri);
                            break;
                        }
                    default:
                        break;
                }
            }
        }

        private void imgBt_unit_MouseLeave(object sender, MouseEventArgs e)
        {
            var nameBtn = sender as Image;

            if (nameBtn != null)
            {
                switch (nameBtn.Name)
                {
                    case "imgBt_unit_1":
                        {
                            imgBt_unit_1.Source = new BitmapImage(uriImg1);
                            break;
                        }
                    case "imgBt_unit_2":
                        {
                            imgBt_unit_2.Source = new BitmapImage(uriImg2);
                            break;
                        }
                    case "imgBt_unit_3":
                        {
                            imgBt_unit_3.Source = new BitmapImage(uriImg3);
                            break;
                        }
                    case "imgBt_unit_4":
                        {
                            imgBt_unit_4.Source = new BitmapImage(uriImg4);
                            break;
                        }
                    case "imgBt_unit_5":
                        {
                            imgBt_unit_5.Source = new BitmapImage(uriImg5);
                            break;
                        }
                    case "imgBt_unit_6":
                        {
                            imgBt_unit_6.Source = new BitmapImage(uriImg6);
                            break;
                        }
                    case "imgBt_unit_7":
                        {
                            imgBt_unit_7.Source = new BitmapImage(uriImg7);
                            break;
                        }
                    case "imgBt_unit_8":
                        {
                            imgBt_unit_8.Source = new BitmapImage(uriImg8);
                            break;
                        }
                    default:
                        break;
                }
            }
        }

        private void imgBt_unit_MouseEnter(object sender, MouseEventArgs e)
        {
          
            var nameBtn = sender as Image;

            if (nameBtn != null)
            {
                switch (nameBtn.Name)
                {
                    case "imgBt_unit_1":
                        {
                            Uri uri = new Uri(units[0].ImageButtonOver, UriKind.Relative);
                            imgBt_unit_1.Source = new BitmapImage(uri);
                            imgBt_unit_1.Stretch = Stretch.Uniform;
                            break;
                        }
                    case "imgBt_unit_2":
                        {
                            Uri uri = new Uri(units[1].ImageButtonOver, UriKind.Relative);
                            imgBt_unit_2.Source = new BitmapImage(uri);
                            imgBt_unit_2.Stretch = Stretch.Uniform;
                            break;
                        }
                    case "imgBt_unit_3":
                        {
                            Uri uri = new Uri(units[2].ImageButtonOver, UriKind.Relative);
                            imgBt_unit_3.Source = new BitmapImage(uri);
                            imgBt_unit_3.Stretch = Stretch.Uniform;
                            break;
                        }
                    case "imgBt_unit_4":
                        {
                            Uri uri = new Uri(units[3].ImageButtonOver, UriKind.Relative);
                            imgBt_unit_4.Source = new BitmapImage(uri);
                            imgBt_unit_4.Stretch = Stretch.Uniform;
                            break;
                        }
                    case "imgBt_unit_5":
                        {
                            Uri uri = new Uri(units[4].ImageButtonOver, UriKind.Relative);
                            imgBt_unit_5.Source = new BitmapImage(uri);
                            imgBt_unit_5.Stretch = Stretch.Uniform;
                            break;
                        }
                    case "imgBt_unit_6":
                        {
                            Uri uri = new Uri(units[5].ImageButtonOver, UriKind.Relative);
                            imgBt_unit_6.Source = new BitmapImage(uri);
                            imgBt_unit_6.Stretch = Stretch.Uniform;
                            break;
                        }
                    case "imgBt_unit_7":
                        {
                            Uri uri = new Uri(units[6].ImageButtonOver, UriKind.Relative);
                            imgBt_unit_7.Source = new BitmapImage(uri);
                            imgBt_unit_7.Stretch = Stretch.Uniform;
                            break;
                        }
                    case "imgBt_unit_8":
                        {
                            Uri uri = new Uri(units[7].ImageButtonOver, UriKind.Relative);
                            imgBt_unit_8.Source = new BitmapImage(uri);
                            imgBt_unit_8.Stretch = Stretch.Uniform;
                            break;
                        }
                    default:
                        break;
                }
            }
        }
    }
}
