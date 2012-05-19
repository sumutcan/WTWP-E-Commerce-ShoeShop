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

        public int ID
        {
            get { return id; }
            set { id = value; }
        }

        public Telefon(int id, string alanKodu, string no)
        {
            this.id = id;
            this.no = no;
            this.alanKodu = alanKodu;
        }

        public string AlanKodu { get { return alanKodu; } set { alanKodu = value;} }
        public string No
        {
            get { return no; }
            set { no = value; }
        }
    }
}
