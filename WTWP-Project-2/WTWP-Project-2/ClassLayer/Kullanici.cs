using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using WTWP_Project_2.DataAccessLayer;
using System.Collections;

namespace WTWP_Project_2.ClassLayer
{
    public class Kullanici
    {
        private int id;
        private string ad;
        private string soyad;
        private string sifre;
        private string email;
        private Telefon evTel;
        private Telefon cepTel;
        ArrayList adresler;

        public Kullanici()
        {
            adresler = new ArrayList();
        }

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


        public Telefon EvTel { get { return evTel; } set {evTel = value ;} }

        public Telefon CepTel { get { return cepTel; } set { cepTel = value; } }

        public int ID
        {
            get { return id; }
            set { id = value; }
        }

        public void kaydet()
        {
            KullaniciDB.ekle(this);
        }

        public void girisYap()
        {
            //kullanıcıyı veritabanından çek. null dönerse hata ver, dönmezse kullanıcı nesnesi döndür.
        }
    }
}