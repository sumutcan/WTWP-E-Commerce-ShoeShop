using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTWP_Project_2.ClassLayer
{
    public class SatilanUrun
    {
        private int satilanUrunID;

        public int SatilanUrunID
        {
            get { return satilanUrunID; }
            set { satilanUrunID = value; }
        }

        private Urun urun;

        public Urun Urun
        {
            get { return urun; }
            set { urun = value; }
        }

        private int numara;

        public int Numara
        {
            get { return numara; }
            set { numara = value; }
        }

        private string renk;

        public string Renk
        {
            get { return renk; }
            set { renk = value; }
        }

        private double fiyat;

        public double Fiyat
        {
            get { return fiyat; }
            set { fiyat = value; }
        }

        private int stok;

        public int Stok
        {
            get { return stok; }
            set { stok = value; }
        }

        public SatilanUrun()
        {
            Urun = new Urun();
        }
    }
}