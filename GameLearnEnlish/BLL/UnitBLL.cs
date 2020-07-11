using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class UnitBLL
    {
        public UnitBLL()
        {

        }

        public List<Data.Unit> GetUnits()
        {

            return new UnitDAL().GetUnits();
        }
    }
}
