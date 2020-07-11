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

        public ConcentrationBLL()
        {

        }

        public List<Data.Concentration> GetWordsOfUnit(int Unit)
        {
            return (new ConcentrationDAL()).GetWordsOfUnit(Unit);
        }
    }
}
