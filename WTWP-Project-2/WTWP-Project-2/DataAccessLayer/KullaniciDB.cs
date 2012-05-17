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
            throw new NotImplementedException();
        }

        public static void sifreSifirla(Kullanici kullanici)
        {
            throw new NotImplementedException();
        }
    }
}