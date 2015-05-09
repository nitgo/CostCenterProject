using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
  public  class PropVendor
    {
        private int Vendor_Id;
        private string Vendor_name;
        private string Vendor_address;
        private string Vendor_phone;
        private string Vendor_Alphone;
        private string Vendor_Fax;
        private string Vendor_email;

        public int Id
        {
            get { return Vendor_Id; }
            set { Vendor_Id = value; }
        }

        public string Name
        {
            get { return Vendor_name; }
            set { Vendor_name = value; }
        }
        public string address
        {
            get { return Vendor_address; }
            set { Vendor_address = value; }
        }
        public string phone
        {
            get { return Vendor_phone; }
            set { Vendor_phone = value; }
        }
        public string AlternatePhone
        {
            get { return Vendor_Alphone; }
            set { Vendor_Alphone = value; }
        }
        public string fax
        {
            get { return Vendor_Fax; }
            set { Vendor_Fax = value; }
        }

        public string Email
        {
            get { return Vendor_email; }
            set { Vendor_email = value; }
        }

       

        

        


    }
}
