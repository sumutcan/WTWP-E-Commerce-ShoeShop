using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTWP_Project_2.ClassLayer
{
    public class KullaniciIslemleriHandler
    {

        public void kullaniciKaydet(string ad, string soyad, string email, string sifre, Adres adres, Telefon evTel, Telefon cepTel)
        { 
            //email formatı kontroller üzerinde, aynı emailin olup olmadığı da db üzerinde kontrol edilebilir.

            Kullanici yeniKullanici = new Kullanici();
            yeniKullanici.Ad = ad;
            yeniKullanici.Soyad = soyad;
            yeniKullanici.Email = email;
            yeniKullanici.Sifre = sifre;
            yeniKullanici.Adres = adres;
            yeniKullanici.EvTel = evTel;
            yeniKullanici.CepTel = cepTel;

            yeniKullanici.kaydet();
        }

    }
}