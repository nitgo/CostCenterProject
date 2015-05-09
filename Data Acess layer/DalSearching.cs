using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using property_layer;
using System.Data.SqlClient;
using System.Data;
namespace Data_Acess_layer
{
   public class DalSearching
    {
       public static DataSet searchbyItemName(PropItem obj)
       {
           return DBManager.ExecuteDataset("spSearchItem", obj.Name);
       }
       public static DataSet searchbyDate(PropPurchase obj1)
       {
           return DBManager.ExecuteDataset("spSearchOrderdate", obj1.date);
       }
       public static DataSet searchbyVname(PropVendor obj2)
       {
           return DBManager.ExecuteDataset("spSearchVendorName", obj2.Name);
       }
        public static DataSet searchCalcualte(PropPurchase objcal)
       {
          return DBManager.ExecuteDataset("spCalculateFill", objcal.pName,objcal.Destination_name);
            
       }
       
       public static DataSet searchbyPurchaseOrNo(PropPurchase obj3)
       {
           return DBManager.ExecuteDataset("spSearchPurcahseOrderno", obj3.PurchaseOr_No);
       }
       public static DataSet searchbyCategorywithsubsubcat(PropPurchase objsearchsubcat)
       {
           return DBManager.ExecuteDataset("spSearchCategorywithSub2cat", objsearchsubcat.subsubcatname);
       }

       public static DataSet searchbyCategorywithoutsubsubcat(PropPurchase objsearchsubcatwithout)
       {
           return DBManager.ExecuteDataset("spsearchwithoutsubsubcat",objsearchsubcatwithout.Purchase_category, objsearchsubcatwithout.subcatname);
       }
       
       public static DataSet searchbycategory(PropCategory obj4)
       {
           return DBManager.ExecuteDataset("spSelectCategory", obj4.Name);
       }
       public static int updateSearchPurchase(PropPurchase objUpd)
       {
           return DBManager.ExecuteNonQuery("spUpdatePurchaseSearch", objUpd.Purchase_Id, 
               objUpd.PurchaseOr_No, objUpd.pName, objUpd.date,objUpd.Purchase_category, objUpd.quantity, objUpd.price, objUpd.vName,objUpd.Unitname,objUpd.subcatname, objUpd.subsubcatname ,objUpd.day);
       }                                    
       public static DataSet History(PropPurchase obj5)
       {
           return DBManager.ExecuteDataset("spHistory");
       }
       public static DataSet DeleteHistory(PropPurchase obj6)
       {
           return DBManager.ExecuteDataset("spDeleteHistory",obj6.Purchase_Id);
       }
       public static DataSet ConatctVendor(PropVendor obj7)
       {
           return DBManager.ExecuteDataset("spVendorContact", obj7.Name);
       }

       public static DataSet Customsearch(PropPurchase objcust)
       {
           return DBManager.ExecuteDataset("spcustomsearch", objcust.pName);
       }
       public static DataSet inventoryCustomsearch(propInventory objinv)
       {
           return DBManager.ExecuteDataset("spinventorysearch", objinv.Itemname);
       }
       
    }
}
