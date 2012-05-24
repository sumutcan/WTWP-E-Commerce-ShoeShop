using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using WTWP_Project_2.ClassLayer;

namespace WTWP_Project_2.DataAccessLayer
{
    public class UrunDB
    {


        public static ArrayList top5UrunGetir()
        {
            ArrayList satilanUrunler = new ArrayList();

            foreach (GetTOP5Product_Result top5 in new DBConnection().ConnectDB.GetTOP5Product())
            {
                SatilanUrun satilanUrun = new SatilanUrun();
                Urun urun = new Urun();
                urun.ProductID = top5.ProductID;
                satilanUrun.Numara = top5.Size;
                Uretici uretici = new Uretici();
                uretici.Ad = top5.ProducerName;
                urun.Uretici = uretici;
                urun.Description = top5.Description;
                satilanUrun.Fiyat = top5.PricePerPiece;
                satilanUrun.Renk = top5.Color;

                satilanUrun.Urun = urun;
                satilanUrun.SatilanUrunID = top5.StockID;

                satilanUrunler.Add(satilanUrun);
            }
            return satilanUrunler;
        }

        public static ArrayList urunAra(string kriter)
        {
            ArrayList satilanUrunler = new ArrayList();

            foreach (SearchProduct_Result product in new DBConnection().ConnectDB.SearchProduct(kriter))
            {
                SatilanUrun satilanUrun = new SatilanUrun();
                Urun urun = new Urun();
                urun.ProductID = product.ProductID;
                satilanUrun.Numara = product.Size;
                Uretici uretici = new Uretici();
                uretici.Ad = product.ProducerName;
                urun.Uretici = uretici;
                urun.Description = product.Description;
                satilanUrun.Fiyat = product.PricePerPiece;
                satilanUrun.Renk = product.Color;

                satilanUrun.Urun = urun;
                satilanUrun.SatilanUrunID = product.StockID;

                satilanUrunler.Add(satilanUrun);
            }
            return satilanUrunler;
        }

        public static List<SatilanUrun> tekUrunGetir(int stockID)
        {
            List<SatilanUrun> list = new List<SatilanUrun>();

            foreach (GetSingleProduct_Result product in new DBConnection().ConnectDB.GetSingleProduct(stockID))
            {
                SatilanUrun satilanUrun = new SatilanUrun();
                Urun urun = new Urun();
                urun.ProductID = product.ProductID;
                satilanUrun.Numara = product.Size;
                Uretici uretici = new Uretici();
                uretici.Ad = product.ProducerName;
                uretici.ID = product.ProducerID;
                urun.Uretici = uretici;
                urun.Description = product.Description;
                urun.Cinsiyet = Convert.ToChar( product.Gender);
                satilanUrun.Fiyat = product.PricePerPiece;
                satilanUrun.Stok = product.Count;
                satilanUrun.Renk = product.Color;

                satilanUrun.Urun = urun;
                satilanUrun.SatilanUrunID = product.StockID;

                list.Add(satilanUrun);
            }
            return list;
        }



        public static Dictionary<int,SatilanUrun> sepettekiUrunleriGetir(Dictionary<int, SatilanUrun> sepettekiUrunIDs)
        {
            Dictionary<int,SatilanUrun> al = new Dictionary<int,SatilanUrun>();

            foreach (int sepettekiUrunID in sepettekiUrunIDs.Keys)
            {
                foreach (GetSingleProduct_Result product in new DBConnection().ConnectDB.GetSingleProduct(sepettekiUrunID))
                {
                    SatilanUrun satilanUrun = new SatilanUrun();
                    satilanUrun.SatilanUrunID = product.StockID;
                    satilanUrun.Urun.ProductID = product.ProductID;
                    satilanUrun.Fiyat = product.PricePerPiece;
                    al.Add(product.StockID,satilanUrun);
                }
            }

            return al;
        }

        public static object tumunuCek()
        {
            ArrayList al = new ArrayList();
            foreach (TumUrunleriCek_Result product in new DBConnection().ConnectDB.TumUrunleriCek())
            {
                SatilanUrun u = new SatilanUrun();
                u.Urun.Uretici.Ad = product.ProducerName;
                u.Urun.Uretici.ID = product.ProducerID;
                u.Urun.ProductID = product.ProductID;
                u.SatilanUrunID = product.StockID;
                u.Stok = product.Count;
                u.Urun.Cinsiyet = Convert.ToChar( product.Gender);
                u.Renk = product.Color;
                u.Fiyat = product.PricePerPiece;
                u.Numara = product.Size;

                al.Add(u);
            }
            return al;
        }

        public static void sil(int stockID)
        {
            DBConnection db = new DBConnection();
            db.ConnectDB.DeleteInventory(stockID);
            db.ConnectDB.SaveChanges();
            
        }

        public static ArrayList tumUreticileriCek()
        {
            ArrayList al = new ArrayList();
            
            foreach (TumUreticileriCek_Result uretici in new DBConnection().ConnectDB.TumUreticileriCek())
            {
                Uretici u = new Uretici();
                u.ID = uretici.ProducerID;
                u.Ad = uretici.ProducerName;

                al.Add(u);
            }
            return al;
        }

        public static void guncelle(int stockID, int productID, int producerID, int stok, string renk, double fiyat, string cinsiyet, int numara)
        {
            DBConnection db = new DBConnection();
            db.ConnectDB.UrunGuncelle(stockID,producerID,cinsiyet,stok,numara,fiyat,renk,productID);
            db.ConnectDB.SaveChanges();
        }

        public static int urunEkle(int ureticiID, char cinsiyet, double fiyat, string renk, int stok, int numara)
        {
            return Convert.ToInt32(new DBConnection().ConnectDB.UrunEkle(ureticiID,cinsiyet.ToString(),stok,numara,fiyat,renk).First());
        }
    }
}