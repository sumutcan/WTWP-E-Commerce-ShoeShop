﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WTWP_Project_2.ClassLayer
{
    public class Urun
    {
        int productID;
        public int ProductID
        {
            get { return productID; }
            set { productID = value; }
        }


        int producerID;
        public int ProducerID
        {
            get { return producerID; }
            set { producerID = value; }
        }


        string model;
        public string Model
        {
            get { return model; }
            set { model = value; }
        }


        int type;
        public int Type
        {
            get { return type; }
            set { type = value; }
        }


        int sex;
        public int Sex
        {
            get { return sex; }
            set { sex = value; }
        }


        string description;
        public string Description
        {
            get { return description; }
            set { description = value; }
        }


        DateTime importDate;
        public DateTime ImportDate
        {
            get { return importDate; }
            set { importDate = value; }
        }

        string urunURL;

        public string UrunURL
        {
            get { return urunURL; }
            set { urunURL = value; }
        }
    }
}