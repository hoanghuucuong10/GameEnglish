﻿using System;
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
    /// Interaction logic for Menu_GlobeUC.xaml
    /// </summary>
    public partial class Menu_GlobeUC : UserControl
    {
        public static Menu_GlobeUC menu_GlobeUC = null;
        public Menu_GlobeUC()
        {
            menu_GlobeUC = this;
            InitializeComponent();
            AnimationBoxSubMenuUC();


        }

        private void AnimationBoxSubMenuUC()
        {

        }
    }
}
