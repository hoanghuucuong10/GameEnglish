using System.Collections.Generic;
using System.Linq;


namespace DAL
{
    public class ConcentrationDAL
    {

        private static readonly EnglishGameEntities db = new EnglishGameEntities();

        public ConcentrationDAL()
        {

        }

        public List<Data.Concentration> GetWordsOfUnit(int Unit)
        {
            List<Data.Concentration> lst = db.Concentrations.Where(x => x.Units.Where(t => t.Id == Unit).Count() != 0).ToList().Select(z => new Data.Concentration(z.Id, z.Image, z.Voice)).ToList();

            return lst;
        }
    }
}
