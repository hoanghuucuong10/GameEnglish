using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class MultipleChoiceDAL
    {
        private static readonly EnglishGameEntities db = new EnglishGameEntities();

        public MultipleChoiceDAL()
        {

        }
        public List<Data.MultipleChoice> GetMultipleChoicesOfUnit(int Unit)
        {
            List<Data.MultipleChoice> lst = db.Choices.Where(x => x.Units.Where(t => t.Id == Unit).Count() != 0).ToList().Select(z => new Data.MultipleChoice(z.Id, z.Image, z.Voice)).ToList();

            return lst;
        }
    }
}
