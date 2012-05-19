using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WTWP_Project_2.ClassLayer
{
    public class GecersizOturumException : Exception
    {
        public GecersizOturumException(string mesaj) : base(mesaj)
        {
            
        }
    
    }
}