using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
  public  class PropDestination
    {
        private int Destination_id;
        private string Destination_name;
        private string Destination_Address;
        public int Id
        {
            get { return Destination_id; }
            set { Destination_id = value; }
        }

        public string Name
        {
            get { return Destination_name; }
            set { Destination_name = value; }
        }
        public string Address
        {
            get { return Destination_Address; }
            set { Destination_Address = value; }
 
        }
    }
}
