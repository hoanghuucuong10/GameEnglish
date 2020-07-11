using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class StorytimeBLL
    {
        public StorytimeBLL()
        {

        }
        public List<Data.Storytime> GetSentencesOfUnit(int Unit)
        {
            return new StorytimeDAL().GetSentencesOfUnit(Unit);
        }
    }
}
