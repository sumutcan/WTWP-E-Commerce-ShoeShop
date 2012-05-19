using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WTWP_Project_2.ClassLayer;
using System.Data;
using System.Data.SqlClient;

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
            throw new NotImplementedException();
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

        public static void sepetiKaydet(int pNo, Dictionary<int, Urun> sepet)
        {
            foreach (Int32 k in sepet.Keys)
            {
                new DBConnection().ConnectDB.AddProductToCart(pNo,sepet[k].ProductID);
            }
        }

        public static Dictionary<int, Urun> kayitliSepetiGetir(int kullaniciID)
        {
            Dictionary<int, Urun> getirilenSepet = new Dictionary<int, Urun>();

            foreach (Int32 urunID in new DBConnection().ConnectDB.GetProductsFromCart(kullaniciID))
            {
                getirilenSepet.Add(urunID, new Urun(urunID));
            
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