using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class Unit
    {
        public int Id { get; set; }
        public int Number { get; set; }
        public string Title { get; set; }
        public string VoiceTitle { get; set; }
        public string Image { get; set; }
        public string VoiceUnit { get; set; }
        public string ImageButton { get; set; }
        public string ImageButtonOver { get; set; }
        public string ImageButtonSel { get; set; }

        public Unit(int id, int number, string title,string voiceTitle, string image, string voiceUnit, string imageButton, string imageOver, string imageSel)
        {
            Id = id;
            Number = number;
            Title = title;
            VoiceTitle = voiceTitle;
            Image = image;
            VoiceUnit = voiceUnit;
            ImageButton = imageButton;
            ImageButtonOver = imageOver;
            ImageButtonSel = imageSel;
        }
    }
}
