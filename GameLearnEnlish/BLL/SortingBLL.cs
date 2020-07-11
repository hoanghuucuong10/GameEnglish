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
        public SortingBLL()
        {

        }

        public List<Data.Sorting> GetWordsOfUnit(int Unit)
        {
            return (new SortingDAL()).GetWordsOfUnit(Unit);
        }
    }
}
