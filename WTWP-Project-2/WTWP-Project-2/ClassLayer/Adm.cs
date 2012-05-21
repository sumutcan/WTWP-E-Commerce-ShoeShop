using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WTWP_Project_2.DataAccessLayer;

namespace WTWP_Project_2.ClassLayer
{
    public class Adm : Kisi
    {
        DateTime lastLogin;

        public Adm()
        {

        }

        public DateTime LastLogin
        {
            get { return lastLogin; }
            set { lastLogin = value; }
        }

        public override Kisi girisYap()
        {
            return AdminDB.loginKontrol(this);
        } 

    }
}