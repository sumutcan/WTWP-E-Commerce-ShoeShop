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
        Dictionary<int, Urun> sepet;

        public Kullanici()
        {
            adresler = new ArrayList();
            sepet = new Dictionary<int, Urun>();
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

        public void sifremiUnuttum()
        {
            string yeniSifre = FormsAuthentication.HashPasswordForStoringInConfigFile(DateTime.Now.Ticks.ToString(), "md5").Substring(0, 6);

            //yenisifreyi veritabanına yolla eposta ile beraber. şayet epostaya ait kullanıcı varsa güncelle. yoksa hata döndür.

            string mesaj = "Aldığımız bir duyuma göre şifrenizi unutmuşsunuz.<p>" +
                            "Yeni şifreniz: " + yeniSifre + "<p>" +
                            "Broadway Sinemaları";

            this.Sifre = yeniSifre;

            KullaniciDB.sifreSifirla(this);

            Misc.getInstance().mailgonder(email, "Yeni şifre", mesaj);
        }
    }
}