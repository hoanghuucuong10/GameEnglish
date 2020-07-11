using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class LookAndFind
    {
        public int Id { get; set; }
        public string Image { get; set; }
        public string Title { get; set; }
        public string ImageCover { get; set; }
        public string Voice { get; set; }

        public LookAndFind(int Id, string Image, string Title, string Voice, string ImageCover)
        {
            this.Id = Id;
            this.Image = Image;
            this.Title = Title;
            this.ImageCover = ImageCover;
            this.Voice = Voice;
        }
    }
}
