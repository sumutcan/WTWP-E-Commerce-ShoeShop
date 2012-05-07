using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WTWP_Project_2.ClassLayer
{
    public class Telefon
    {
        private int ilAlanKodu;
        private int ilceKodu;
        private int no;

        public Telefon(int ilAlanKodu, int ilceKodu, int no)
        {
            this.ilAlanKodu = ilAlanKodu;
            this.ilceKodu = ilceKodu;
            this.no = no;
        }
    }
}
