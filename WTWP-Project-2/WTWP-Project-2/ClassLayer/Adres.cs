﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WTWP_Project_2.ClassLayer
{
    public class Adres
    {
        private string mahalle;
        private string sokak;
        private string kapiNo;
        private string daireNo;
        private string ilce;
        private string postaKodu;
        private string il;
        private int id;
        private string baslik;


        public Adres(int id, string baslik, string mahalle, string sokak, string kapiNo, string daireNo, string ilce, string postaKodu, string il)
        {
            this.id = id;
            this.baslik = baslik;
            this.mahalle = mahalle;
            this.sokak = sokak;
            this.kapiNo = kapiNo;
            this.daireNo = daireNo;
            this.ilce = ilce;
            this.il = il;
            this.postaKodu = postaKodu;

        
        }
    }
}
