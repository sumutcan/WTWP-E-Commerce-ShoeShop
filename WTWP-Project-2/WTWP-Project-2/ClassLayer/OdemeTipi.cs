using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTWP_Project_2.ClassLayer
{
    public class OdemeTipi
    {
        private int id;
        private string ad;
        private string aciklama;

        public OdemeTipi(int id, string ad, string aciklama)
        {
            this.id = id;
            this.ad = ad;
            this.aciklama = aciklama;
        }
    }
}