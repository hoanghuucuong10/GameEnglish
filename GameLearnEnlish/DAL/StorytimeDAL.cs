﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public class StorytimeDAL
    {
        private static readonly EnglishGameEntities db = new EnglishGameEntities();

        public StorytimeDAL()
        {

        }
        public List<Data.Storytime> GetSentencesOfUnit(int Unit)
        {
            List<Data.Storytime> lst = db.Storytimes.Where(x => x.Units.Where(t => t.Id == Unit).Count() != 0).ToList().Select(z => new Data.Storytime(z.Id, z.Image, z.Sound, z.Text)).OrderBy(x => x.Id).ToList();
            return lst;
        }
    }
}
