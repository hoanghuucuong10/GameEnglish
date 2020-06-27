using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL;
using DAL;
using Data;
namespace BLL
{
    public class ConcentrationBLL
    {
        private static readonly EnglishGameEntities db = new EnglishGameEntities();

        public ConcentrationBLL()
        {

        }

        public List<Data.Concentration> GetWordsOfUnit(int Unit)
        {
            List<Data.Concentration> lst = db.Concentrations.Where(x=>x.Units.Where(t=>t.Id==Unit).Count()!=0).ToList().Select(z=>new Data.Concentration(z.Id,z.Image,z.Voice)).ToList();

            return lst;
        }
    }
}
