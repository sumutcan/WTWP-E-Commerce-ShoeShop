using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTWP_Project_2.ClassLayer
{
    public class Kargo
    {
        private int id;
        private string ad;
        private decimal ekUcret;

        public Kargo(int id, string ad, decimal ekUcret)
        {
            this.id = id;
            this.ad = ad;
            this.ekUcret = ekUcret;
        }
    }
}