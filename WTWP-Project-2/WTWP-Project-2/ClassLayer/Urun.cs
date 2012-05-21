using System;
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
            set { 
                
                productID = value;
                urunURL = "/UrunResimleri/" + value + ".jpg";
            
            }
        }


        private Uretici uretici;

        public Uretici Uretici
        {
            get { return uretici; }
            set { uretici = value; }
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


        public Urun(int productID)
        {
            // TODO: Complete member initialization
            this.productID = productID;
        }

        public Urun()
        { 
        
        }

<<<<<<< HEAD
        private double fiyat;
        private int urunID;

        public Urun(int urunID)
        {
            // TODO: Complete member initialization
            this.urunID = urunID;
        }

        public Urun()
        {
            // TODO: Complete member initialization
        }

        public double Fiyat
        {
            get { return fiyat; }
            set { fiyat = value; }
        }
=======
>>>>>>> 99aced40992cb45f162d5496cf64eed7f8c0266c

    }
}
