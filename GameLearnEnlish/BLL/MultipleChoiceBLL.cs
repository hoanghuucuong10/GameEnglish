using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
  public  class MultipleChoiceBLL
    {

        public MultipleChoiceBLL()
        {

        }
        public List<Data.MultipleChoice> GetMultipleChoicesOfUnit(int Unit)
        {

            return new MultipleChoiceDAL().GetMultipleChoicesOfUnit(Unit);
        }
    }
}
