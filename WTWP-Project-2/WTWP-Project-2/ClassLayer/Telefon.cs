using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WTWP_Project_2.ClassLayer
{
    public class Telefon
    {
        private string alanKodu;
        
        private string no;
        private int id;

        public Telefon(int id, string alanKodu, string no)
        {
            this.id = id;
            this.no = no;
            this.alanKodu = alanKodu;
        }
    }
}
