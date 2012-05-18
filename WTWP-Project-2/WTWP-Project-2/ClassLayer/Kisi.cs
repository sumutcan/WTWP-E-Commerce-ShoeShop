using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace WTWP_Project_2.ClassLayer
{
    public abstract class Kisi
    {
        private int id;
        private string ad;
        private string soyad;
        private string sifre;
        private string email;

        public string Ad { get { return ad; } set { ad = value; } }

        public string Soyad { get { return soyad; } set { soyad = value; } }

        public string Email { get { return email; } set { email = value; } }

        public string Sifre
        {
            get { return sifre; }

            set
            {
                sifre = FormsAuthentication.HashPasswordForStoringInConfigFile(value, "md5");
            }
        }

        public int ID
        {
            get { return id; }
            set { id = value; }
        }
        public abstract Kisi girisYap();
        
    }
}