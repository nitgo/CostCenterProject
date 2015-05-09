using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace property_layer
{
   public class PropPurchase
    {
       private int Id; 
       private string PurchaseOr_no;
       private string Product_Name;
       private DateTime PurchaseOr_date;
       private string PurchaseOr_Category;
       private decimal PurchaseOr_qty;
       private decimal PurchaseOr_rate;
       private string Vendor_Name;
       private string Destination;
       private string Unit;
       private string subcat;
       private string subsubcat;
       private string days;

        public int Purchase_Id
        {
            get { return Id; }
            set { Id = value; }
        }
       
        public string PurchaseOr_No   
        {
            get { return PurchaseOr_no; }
            set { PurchaseOr_no = value; }
        }
        public string pName
        {
            get { return Product_Name; }
            set { Product_Name = value; }
        }
        public DateTime date
        {
            get { return PurchaseOr_date; }
            set { PurchaseOr_date = value; }
        }

        public string Purchase_category
        {
            get { return PurchaseOr_Category; }
            set { PurchaseOr_Category = value; }
        }

        public decimal quantity
        {
            get { return PurchaseOr_qty; }
            set { PurchaseOr_qty = value; }
        }

        public decimal price
        {
            get { return PurchaseOr_rate; }
            set { PurchaseOr_rate = value; }
        }
        public string vName
        {
            get { return Vendor_Name; }
            set { Vendor_Name = value; }
        }
        public string Destination_name
        {
            get { return Destination; }
            set { Destination = value; }
        }
        public string Unitname
        {
            get { return Unit; }
            set { Unit = value; }
        }
        public string subcatname
        {
            get { return subcat;}
            set { subcat = value; }

        }
        public string subsubcatname
        
        {
            get { return subsubcat; }
            set { subsubcat = value; }
        }

        public string day
        {
            get { return days; }
            set { days = value; }
        }
        
        
       
    }
}
