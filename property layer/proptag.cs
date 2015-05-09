using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
   public class proptag
    {

        private int Id;
        private string tag;

        public int tag_id
        {
            get { return Id; }
            set { Id = value; }

        }
        public string tag_name
        {
            get { return tag; }
            set { tag = value; }
        }
    }
}
