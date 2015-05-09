using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
  public  class PropItem
    {
        private int Item_id;
        private string Item_name;
        public int Id
        {
            get { return Item_id; }
            set { Item_id = value; }
        }

        public string Name
        {
            get { return Item_name; }
            set { Item_name = value; }
        }
    }
}
