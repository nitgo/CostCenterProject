using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
  public  class propcash
    {
        private int Id;
        private string voucherno;
        private DateTime date;
        private string name;
        private string purpose;
        private string tag;
        private int amount;

        public int cash_Id
        {
            get { return Id; }
            set { Id = value; }
        }

        public string Cash_VNo
        {
            get { return voucherno; }
            set { voucherno = value; }
        }

        public DateTime cash_date
        {
            get { return date; }
            set { date = value; }
        }
        public string cash_name
        {
            get { return name; }
            set { name= value; }
        }
        public string Cash_purpose
        {
            get { return purpose; }
            set { purpose = value; }
        }
        public string cash_tag
        {
            get { return tag; }
            set { tag = value; }
        }
        public int cash_amount
        {
            get { return amount; }
            set { amount = value; }
        }
    }
}
