using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
   public class PropSubCategory
    {
        private int SubCategory_id;
        private int Asso_parent_id;
        private string Sub_Category_name;
        public int Id
        {
            get { return SubCategory_id; }
            set { SubCategory_id = value; }
        }
        public int Assoc_parent_id
        {
            get { return Asso_parent_id; }
            set { Asso_parent_id = value; }
        }
        public string Sub_cat_Name
        {
            get { return Sub_Category_name; }
            set { Sub_Category_name = value; }
        }
    }
}
