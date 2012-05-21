using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WTWP_Project_2.ClassLayer;
using System.Data;

namespace WTWP_Project_2.DataAccessLayer
{
    public class AdminDB
    {
        public static Adm loginKontrol(Adm kisi)
        {
            try
            {
                Adm k = null;

                foreach (Int32 pno in new DBConnection().ConnectDB.LoginAdmin(kisi.Email, kisi.Sifre))
                {
                    k = new Adm();
                    k.ID = pno;
                }

                return k;
            }
            catch (EntityCommandExecutionException)
            {
                throw new Exception("Giriş yapılırken hata oluştu.");
            }
        }
    }
}