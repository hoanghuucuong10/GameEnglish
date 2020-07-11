using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class LookAndFindBLL
    {
        public LookAndFindBLL()
        {

        }
        public List<Data.LookAndFind> GetLookAndFinds(int Unit)
        {
            return new LookAndFindDAL().GetLookAndFinds(Unit);
        }
    }
}
