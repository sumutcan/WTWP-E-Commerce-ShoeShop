using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WTWP_Project_2.DataAccessLayer;

namespace WTWP_Project_2.ClassLayer
{
    public class KullaniciIslemleriHandler
    {

        public void kullaniciKaydet(string ad, string soyad, string email, string sifre, Telefon evTel, Telefon cepTel)
        { 
            //email formatı kontroller üzerinde, aynı emailin olup olmadığı da db üzerinde kontrol edilebilir.

            Kullanici yeniKullanici = new Kullanici();
            yeniKullanici.Ad = ad;
            yeniKullanici.Soyad = soyad;
            yeniKullanici.Email = email;
            yeniKullanici.Sifre = sifre;
            yeniKullanici.EvTel = evTel;
            yeniKullanici.CepTel = cepTel;

            yeniKullanici.kaydet();

        }

        public Kullanici kullaniciGiris(string email, string sifre)
        {
            if (!KullaniciDB.kullaniciVarMi(email))
                throw new Exception("Böyle bir kullanıcı yok.");

            Kullanici girisYapacak = new Kullanici();
            girisYapacak.Email = email;
            girisYapacak.Sifre = sifre;

            girisYapacak.girisYap();

            
            return null;
        }

    }
}