using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WTWP_Project_2.ClassLayer;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

namespace WTWP_Project_2.DataAccessLayer
{
    public class KullaniciDB
    {

        public static void ekle(Kullanici obj)
        {

            try
            {
                DBConnection db = new DBConnection();
                db.ConnectDB.AddCustomer(obj.Ad, obj.Soyad, obj.Email, obj.Sifre, obj.DogumYili, obj.Cinsiyet.ToString(), obj.EvTel.AlanKodu, obj.EvTel.No, obj.CepTel.AlanKodu, obj.CepTel.No);
                db.ConnectDB.SaveChanges();
            }
            catch (EntityCommandExecutionException entityEx)
            {
                SqlException sqlEx = (SqlException)entityEx.InnerException;

                switch (sqlEx.State)
                { 
                    case 1:
                        throw new Exception("Kişi bilgileri eklenemedi");
                    case 2:
                        throw new Exception("Ev telefonu bilgileri eklenemedi");
                    case 3:
                        throw new Exception("Cep telefonu bilgileri eklenemedi.");
                    case 4:
                        throw new Exception("Müşteri bilgileri eklenemedi");
                    default:
                        throw new Exception("Veritabanında bir hata oluştu.");
                             
                            
                }
            }
            

        }

        public static void sil(int id)
        {
            try
            {
                DBConnection db = new DBConnection();
                db.ConnectDB.DeleteCustomer(id);
                db.ConnectDB.SaveChanges();
            }
            catch (EntityCommandExecutionException entityEx)
            {
            }
        }

        public static void guncelle(Kullanici obj)
        {
            throw new NotImplementedException();
        }

        public static bool kullaniciVarMi(string email)
        {
            try
            {

                if (new DBConnection().ConnectDB.CheckUser(email).First() == 0)
                    return false;

                return true;
            }
            catch (EntityCommandExecutionException)
            {
                throw new Exception("Kullanıcı kontrolü yapılırken hata oluştu.");
            }
            catch (InvalidOperationException)
            {
                throw new Exception("Böyle bir kullanıcı yok.");
            }

        }

        public static void sifreSifirla(Kullanici kullanici)
        {
            if (!KullaniciDB.kullaniciVarMi(kullanici.Email))
                throw new Exception("Böyle bir kullanıcı yok");

            DBConnection db = new DBConnection();
            db.ConnectDB.ResetPassword(kullanici.Email, kullanici.Sifre);
        }

        public static Kisi loginKontrol(Kisi kisi)
        {
            try
            {
                Kisi k = null;

                foreach (Int32 pno in new DBConnection().ConnectDB.LoginUser(kisi.Email, kisi.Sifre))
                {
                    k = new Kullanici();
                    k.ID = pno;
                }

                return k;
            }
            catch (EntityCommandExecutionException)
            {
                throw new Exception("Giriş yapılırken hata oluştu.");
            }
        }

        public static void sepetiKaydet(int pNo, Dictionary<int, SatilanUrun> sepet)
        {
            foreach (Int32 k in sepet.Keys)
            {
                new DBConnection().ConnectDB.AddProductToCart(pNo,sepet[k].SatilanUrunID);
            }
        }

        public static Dictionary<int, SatilanUrun> kayitliSepetiGetir(int kullaniciID)
        {
            Dictionary<int, SatilanUrun> getirilenSepet = new Dictionary<int, SatilanUrun>();

            foreach (Int32 satilanUrunID in new DBConnection().ConnectDB.GetProductsFromCart(kullaniciID))
            {
                SatilanUrun u = new SatilanUrun();
                u.SatilanUrunID = satilanUrunID;
                getirilenSepet.Add(satilanUrunID, u);
            
            }

            try
            {
                DBConnection db = new DBConnection();
                db.ConnectDB.DeleteCart(kullaniciID);
                db.ConnectDB.SaveChanges();

            }
            catch (EntityCommandExecutionException)
            {
                throw new Exception("Sepet silinirken hata oluştu.");
            }


            return getirilenSepet;

        }


        public static Kullanici profilBilgileriniGetir(int pNo)
        {
            GetUserProfile_Result profile = new DBConnection().ConnectDB.GetUserProfile(pNo).First();
            Kullanici kullanici = new Kullanici();

            kullanici.Ad = profile.Name;
            kullanici.Soyad = profile.Surname;
            kullanici.Email = profile.Email;
            kullanici.Cinsiyet = Convert.ToChar(profile.Gender);
            kullanici.DogumYili = profile.YearOfBirth;
            kullanici.HamSifre = profile.Password;

            PHONE phone = new DBConnection().ConnectDB.GetUserPhones(profile.HomePhoneID).First();
            kullanici.EvTel = new Telefon(phone.PhoneID,phone.AreaCode,phone.PhoneNumber);
            
            phone = new DBConnection().ConnectDB.GetUserPhones(profile.MobilePhoneID).First();
            kullanici.CepTel = new Telefon(phone.PhoneID, phone.AreaCode, phone.PhoneNumber);

            return kullanici;


           

            
        }

        public static ArrayList tumunuCek()
        {
            DBConnection cn = new DBConnection();
            IEnumerator<TumKullanicilariCek_Result> num = cn.ConnectDB.TumKullanicilariCek().GetEnumerator();

            ArrayList kullanicilar = new ArrayList();

            while (num.MoveNext())
            {
                Kullanici kullanici = new Kullanici();
                kullanici.ID = num.Current.Pno;
                kullanici.Ad = num.Current.Name;
                kullanici.Soyad = num.Current.Surname;
                
                kullanici.Email = num.Current.Email;
                kullanicilar.Add(kullanici);
            }

            return kullanicilar;
        }


        public static void profilBilgileriniGuncelle(Kullanici kullanici)
        {
            try
            {
                DBConnection db = new DBConnection();
                db.ConnectDB.UpdateCustomer(kullanici.Ad,kullanici.Soyad,kullanici.Email,kullanici.HamSifre,kullanici.DogumYili,kullanici.Cinsiyet.ToString(),kullanici.EvTel.AlanKodu,kullanici.EvTel.No,kullanici.CepTel.AlanKodu,kullanici.CepTel.No,kullanici.ID,kullanici.EvTel.ID,kullanici.CepTel.ID);
                db.ConnectDB.SaveChanges();
            }
            catch (EntityCommandExecutionException entityEx)
            {
                SqlException sqlEx = (SqlException)entityEx.InnerException;

                switch (sqlEx.State)
                {
                    case 1:
                        throw new Exception("Kişi bilgileri güncellenemedi.");
                    case 2:
                        throw new Exception("Ev telefonu bilgileri güncellenemedi.");
                    case 3:
                        throw new Exception("Cep telefonu bilgileri güncellenemedi..");
                    case 4:
                        throw new Exception("Müşteri bilgileri güncellenemedi.");
                    default:
                        throw new Exception("Veritabanında bir hata oluştu.");


                }
            }
            
        }
    }
}