using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
   public class PropSubSubCategory
    {
        private int SubSubCategory_id;
        private int Asso_Subparent_id;
        private string Sub_Sub_Category_name;
        public int Id
        {
            get { return SubSubCategory_id; }
            set { SubSubCategory_id = value; }
        }
        public int Assoc_Sub_parent_id
        {
            get { return Asso_Subparent_id; }
            set { Asso_Subparent_id = value; }
        }
        public string Sub_Sub_cat_Name
        {
            get { return Sub_Sub_Category_name; }
            set { Sub_Sub_Category_name = value; }
        }
    }
}
