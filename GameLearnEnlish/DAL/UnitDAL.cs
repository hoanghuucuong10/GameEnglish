using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UnitDAL
    {
        private static readonly EnglishGameEntities db = new EnglishGameEntities();

        public UnitDAL()
        {

        }

        public List<Data.Unit> GetUnits()
        {
            List<Data.Unit> lst = db.Units.ToList().Select(z => new Data.Unit(z.Id, z.Number.Value, z.Title, z.VoiceTitle, z.Image, z.VoiceUnit, z.ImageButton, z.ImageButtonOver, z.ImageButtonSel)).ToList();

            return lst;
        }
    }
}
