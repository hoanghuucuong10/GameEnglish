using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
   public class Matching
    {
        public int Id { get; set; }
        public string Image { get; set; }
        public string Voice { get; set; }

        public Matching(int Id, string Image, string Voice)
        {
            this.Id = Id;
            this.Image = Image;
            this.Voice = Voice;
        }
    }
}
