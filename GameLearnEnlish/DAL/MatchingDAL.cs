using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class MatchingDAL
    {
        private static readonly EnglishGameEntities db = new EnglishGameEntities();

        public MatchingDAL()
        {

        }

        public List<Data.Matching> GetMatchingsOfUnit(int Unit)
        {
            List<Data.Matching> lst = db.Matchings.Where(x => x.Units.Where(t => t.Id == Unit).Count() != 0).ToList().Select(z => new Data.Matching(z.Id, z.Image, z.Voice)).ToList();
            return lst;
        }
    }
}
