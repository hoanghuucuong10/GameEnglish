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
        public MatchingBLL()
        {

        }

        public List<Data.Matching> GetMatchingsOfUnit(int Unit)
        {
            return (new MatchingDAL()).GetMatchingsOfUnit(Unit);
        }
    }
}
