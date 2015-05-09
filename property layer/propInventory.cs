using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
    public class propInventory
    {
        private int Id;
        private string Item_name;
        private int qty;
        private string description;
        private string Sitename;



        public int Purchase_Id
        {
            get { return Id; }
            set { Id = value; }
        }
        public string Itemname
        {
            get { return Item_name; }
            set { Item_name = value; }
        }
        public int quantity
        {
            get { return qty; }
            set { qty = value; }
        }

        public string desc
        {
            get { return description; }
            set { description = value; }
        }

        public string site
        {
            get { return Sitename; }
            set { Sitename = value; }
        }

    }
}
