using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTWP_Project_2.ClassLayer
{
    public class Kampanya
    {
        private int id;
        private string ad;
        private decimal indirimOrani;
        private DateTime basTarih;
        private DateTime bitisTarih;

        public int KampanyaID
        {
            get { return id; }
            set { id = value; }
        }

        public string KampanyaAdi
        {
            get { return ad; }
            set { ad = value; }
        }

        public decimal IndirimOrani
        {
            get { return indirimOrani; }
            set { indirimOrani = value; }
        }

        public DateTime BaslangicTarih
        {
            get { return basTarih; }
            set { basTarih = value; }
        }

        public DateTime BitisTarih
        {
            get { return bitisTarih; }
            set { bitisTarih = value; }
        }
    }
}