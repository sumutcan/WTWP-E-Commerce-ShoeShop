using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

namespace WTWP_Project_2.ClassLayer
{
    public class Misc
    {
        private static Misc instance = null;
        static Object obj = new Object();
        private SmtpClient sc;

        public const string GecerliKullanici = "GecerliKullanici";
        public const string KullaniciIslemleriHandler = "KullaniciIslemleriHandler";

        public static Misc getInstance()
        {
            if (instance == null)
            {
                lock(obj)
                {
                    if (instance == null)
                    {
                        instance = new Misc();
                    }
                }

            }
            return instance;
        }

        public void mailgonder(string alici, string konu, string mesaj)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("iletisim@broadway.com","Broadway Sinemaları");
            msg.Subject = konu;
            msg.Body = mesaj;
            msg.BodyEncoding = System.Text.Encoding.UTF8;
            msg.IsBodyHtml = true;
            msg.To.Add(new MailAddress(alici));

            sc.Send(msg);

        }

        private Misc()
        {
            sc = new SmtpClient();
            sc.Credentials = new NetworkCredential("broadway.sinema@gmail.com", "broadway123");
            sc.Host = "smtp.gmail.com";
            sc.Timeout = 20000;
            sc.DeliveryMethod = SmtpDeliveryMethod.Network;
            sc.EnableSsl = true;

            sc.Port = 587;
        }
    }
}
