using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using WTWP_Project_2.DataAccessLayer;
using System.Collections;

namespace WTWP_Project_2.ClassLayer
{
    public class Kullanici : Kisi
    {

        private Telefon evTel;
        private Telefon cepTel;
        private char cinsiyet;
        private int dogumYili;
        ArrayList adresler;
        private Dictionary<int, SatilanUrun> sepet;

        public Kullanici()
        {
            adresler = new ArrayList();
            sepet = new Dictionary<int, SatilanUrun>();
        }

        public char Cinsiyet
        {
            get { return cinsiyet; }
            set 
            {
                cinsiyet = value; 
            }
        }

        public int DogumYili
        {
            get { return dogumYili; }
            set { dogumYili = value; }
        }



        public Telefon EvTel { get { return evTel; } set {evTel = value ;} }

        public Telefon CepTel { get { return cepTel; } set { cepTel = value; } }


        public void sifremiUnuttum()
        {
            string yeniSifre = FormsAuthentication.HashPasswordForStoringInConfigFile(DateTime.Now.Ticks.ToString(), "md5").Substring(0, 6);

            //yenisifreyi veritabanına yolla eposta ile beraber. şayet epostaya ait kullanıcı varsa güncelle. yoksa hata döndür.

            string mesaj = "Aldığımız bir duyuma göre şifrenizi unutmuşsunuz.<p>" +
                            "Yeni şifreniz: " + yeniSifre + "<p>" +
                            "Broadway Sinemaları";

            this.Sifre = yeniSifre;

            KullaniciDB.sifreSifirla(this);

            Misc.getInstance().mailgonder(base.Email, "Yeni şifre", mesaj);
        }
        public void sepeteEkle(SatilanUrun yeniUrun)
        {
            sepet.Add(yeniUrun.SatilanUrunID,yeniUrun);
        }

        public void sepettenCikar(int urunID)
        {
            sepet.Remove(urunID);
        }



        public override Kisi girisYap()
        {
            if (!KullaniciDB.kullaniciVarMi(base.Email))
                throw new Exception("Böyle bir kullanıcı yok.");

            return KullaniciDB.loginKontrol(this);

        }

        public int sepettekiElemanSayisi()
        {
            return sepet.Count;
        }

        public void sepetiKaydet()
        {
            if (this.sepet.Count > 0)
                KullaniciDB.sepetiKaydet(this.ID, this.sepet);

        }

        public void kayitliSepetiGetir()
        {
            this.sepet = KullaniciDB.kayitliSepetiGetir(this.ID);
         
        }

        public Dictionary<int, SatilanUrun> Sepet 
        {
            get
            {
                return sepet;
            }
        }
    }
}