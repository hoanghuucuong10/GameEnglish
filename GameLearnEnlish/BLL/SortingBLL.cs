using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public  class SortingBLL
    {
        private static readonly EnglishGameEntities db = new EnglishGameEntities();

        public SortingBLL()
        {

        }

        public List<Data.Sorting> GetWordsOfUnit(int Unit)
        {
            List<Data.Sorting> lst = db.Sortings.Where(x => x.Units.Where(t => t.Id == Unit).Count() != 0).ToList().Select(z => new Data.Sorting(z.Id, z.Image, z.Voice)).ToList();

            return lst;
        }
    }
}
