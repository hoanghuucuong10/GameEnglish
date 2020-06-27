using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MatchingBLL
    {
        private static readonly EnglishGameEntities db = new EnglishGameEntities();

        public MatchingBLL()
        {

        }

        public List<Data.Matching> GetMatchingsOfUnit(int Unit)
        {
            List<Data.Matching> lst = db.Matchings.Where(x => x.Units.Where(t => t.Id == Unit).Count() != 0).ToList().Select(z => new Data.Matching(z.Id, z.Image, z.Voice)).ToList();

            return lst;
        }
    }
}
