using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class PaintingBLL
    {
        public PaintingBLL()
        {

        }
        public List<Data.Painting> GetPaintingDataOfUnit(int Unit)
        {
            return new PaintingDAL().GetPaintingDataOfUnit(Unit);
        }
    }
}
