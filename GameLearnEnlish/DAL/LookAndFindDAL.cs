using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class LookAndFindDAL
    {
        private static readonly EnglishGameEntities db = new EnglishGameEntities();
        public LookAndFindDAL()
        {

        }
        public List<Data.LookAndFind> GetLookAndFinds(int Unit)
        {
            List<Data.LookAndFind> lst = db.LookAndFinds.Where(x => x.Units.Where(t => t.Id == Unit).Count() != 0).ToList().Select(z => new Data.LookAndFind(z.Id, z.Image, z.Title, z.Voice, z.ImageCover)).ToList();
            return lst;
        }
    }
}
