using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WTWP_Project_2.DataAccessLayer;

namespace WTWP_Project_2.ClassLayer
{
    public class KullaniciIslemleriHandler
    {

        private Kullanici kullanici = null;

        public Kullanici Kullanici
        {
            get { return kullanici; }
            set { kullanici = value; }
        }

        public void kullaniciKaydet(string ad, string soyad, string email, string sifre, Telefon evTel, Telefon cepTel, char cinsiyet, int dogumYili)
        { 
            //email formatı kontroller üzerinde, aynı emailin olup olmadığı da db üzerinde kontrol edilebilir.

            
                

                Kullanici yeniKullanici = new Kullanici();
                yeniKullanici.Ad = ad;
                yeniKullanici.Soyad = soyad;
                yeniKullanici.Email = email;
                yeniKullanici.Sifre = sifre;
                yeniKullanici.EvTel = evTel;
                yeniKullanici.CepTel = cepTel;
                yeniKullanici.Cinsiyet = cinsiyet;
                yeniKullanici.DogumYili = dogumYili;

                KullaniciDB.ekle(yeniKullanici);

                      


        }

        public Kisi kullaniciGiris(string email, string sifre)
        {
            if (!KullaniciDB.kullaniciVarMi(email))
                throw new Exception("Böyle bir kullanıcı yok.");

            Kisi girisYapacak = new Kullanici();
            girisYapacak.Email = email;
            girisYapacak.Sifre = sifre;

            return girisYapacak.girisYap();

            
            
        }


        public void sifremiUnuttum(string email)
        {
            Kullanici kullanici = new Kullanici();
            kullanici.Email = email;
            kullanici.sifremiUnuttum();
            
        }

        public void profilBilgileriniGetir(int pNo)
        {
            kullanici = KullaniciDB.profilBilgileriniGetir(pNo);
        }

        public void profilBilgileriniGuncelle(int id, string ad, string soyad, string sifre, string sifreTekrar, string eposta, string dogumYili, char cinsiyet, int evTelID, string evTelNo, string evTelAlanKodu, string cepTelNo, string cepTelAlanKodu, int cepTelID, string eskiSifre)
        {

            if (sifre != string.Empty)
            {
                if (sifre != sifreTekrar)
                    throw new Exception("Girilen şifreler tutmuyor.");

                this.Kullanici.Sifre = sifre;
                this.Kullanici.HamSifre = this.Kullanici.Sifre;

            }
            else
                this.Kullanici.HamSifre = eskiSifre;

            this.Kullanici.ID = id;
            this.Kullanici.Ad = ad;
            this.Kullanici.Soyad = soyad;
            this.Kullanici.Email = eposta;
            this.Kullanici.DogumYili = Convert.ToInt32(dogumYili);
            this.Kullanici.Cinsiyet = cinsiyet;
            this.Kullanici.EvTel = new Telefon(evTelID,evTelAlanKodu,evTelNo);
            this.Kullanici.CepTel = new Telefon(cepTelID,cepTelAlanKodu,cepTelNo);

            KullaniciDB.profilBilgileriniGuncelle(this.Kullanici);
            

        }
    }
}