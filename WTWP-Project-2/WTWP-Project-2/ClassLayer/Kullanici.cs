using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using WTWP_Project_2.DataAccessLayer;

namespace WTWP_Project_2.ClassLayer
{
    public class Kullanici
    {
        private string ad;
        private string soyad;
        private string sifre;
        private string email;
        private ClassLayer.Adres adres;
        private Telefon evTel;
        private Telefon cepTel;

        public string Ad { get { return ad; } set { ad = value; } }

        public string Soyad { get { return soyad; } set { soyad = value; } }

        public string Email { get { return email; } set { email = value ;} }

        public string Sifre 
        { 
            get { return sifre; } 
            
            set 
            {
                sifre = FormsAuthentication.HashPasswordForStoringInConfigFile(value,"md5");
            } 
        }

        public Adres Adres { get { return adres; } set { adres = value ;} }

        public Telefon EvTel { get { return evTel; } set {evTel = value ;} }

        public Telefon CepTel { get { return cepTel; } set { cepTel = value; } }

        public void kaydet()
        {
            KullaniciDB.ekle(this);
        }
    }
}