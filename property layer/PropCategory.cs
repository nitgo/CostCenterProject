using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
   public class PropCategory
    {
        private int Category_id;
        private string Category_name;
        public int Id
        {
            get { return Category_id; }
            set { Category_id = value; }
        }

        public string Name
        {
            get { return Category_name; }
            set { Category_name = value; }
        }
        
    }
}
