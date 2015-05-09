using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
  public class PropAdmin
    {
        private int Admin_Id;
        private string Admin_uname;
        
        
        private string Admin_pswrd;
        
        public int Id
        {
            get { return Admin_Id; }
            set { Admin_Id = value; }
        }

        public string Name
        {
            get { return Admin_uname; }
            set { Admin_uname = value; }
        }
        public string password
        {
            get { return Admin_pswrd; }
            set { Admin_pswrd = value; }
        }

        
    }
}
