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
                urun.Uretici = uretici;
                urun.Description = product.Description;
                satilanUrun.Fiyat = product.PricePerPiece;
                satilanUrun.Renk = product.Color;

                satilanUrun.Urun = urun;
                satilanUrun.SatilanUrunID = product.StockID;

                list.Add(satilanUrun);
            }
            return list;
        }


    }
}