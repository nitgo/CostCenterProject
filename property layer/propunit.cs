using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
   public class propunit
   {
    private int id;
        private string Unit_name;
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        public string unitname
        {
            get { return Unit_name; }
            set { Unit_name = value; }
        }
        
    }
}

