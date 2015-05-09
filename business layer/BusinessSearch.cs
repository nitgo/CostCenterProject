using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using property_layer;
using Data_Acess_layer;
using System.Data.SqlClient;
using System.Data;
namespace business_layer
{
  public  class BusinessSearch
    {

      public static DataSet busSearchbyname(PropItem obj1)
      {
          return DalSearching.searchbyItemName(obj1);
      }
      public static DataSet busSearchbyDate(PropPurchase obj2)
      {
          return DalSearching.searchbyDate(obj2);

      }

          public static DataSet busSearchbyCatwithSubSubCat(PropPurchase objsearchsubcat)
      {
          return DalSearching.searchbyCategorywithsubsubcat(objsearchsubcat);

      }
          public static DataSet busSearchbyCatwithoutSubSubCat(PropPurchase objsearchsubcatwithout)
          {
              return DalSearching.searchbyCategorywithoutsubsubcat(objsearchsubcatwithout);

          }
      
       public static DataSet buscalculatefill(PropPurchase objcal)
      {
          return DalSearching.searchCalcualte(objcal);

      }
       public static DataSet buscustomsearch(PropPurchase objcustom)
       {
           return DalSearching.Customsearch(objcustom);
       }
      public static DataSet businventorycustomsearch(propInventory objinvt)
       {
           return DalSearching.inventoryCustomsearch(objinvt);
       }
      
      public static DataSet busSearchbyVendorName(PropVendor obj3)
      {
          return DalSearching.searchbyVname(obj3);

      }
      public static DataSet busSearchbyPurchaseOrNo(PropPurchase obj4)
      {
          return DalSearching.searchbyPurchaseOrNo(obj4);

      }
      public static DataSet busSearchCategory(PropCategory obj5)
      {
          return DalSearching.searchbycategory(obj5);
      }
      public static int busSearchUpdate(PropPurchase objup)
      {
          return  DalSearching.updateSearchPurchase(objup);
      }
      public static DataSet busHistory(PropPurchase objHistory)
      {
          return DalSearching.History(objHistory);
      }
      public static DataSet busDeleteHistory(PropPurchase objDel)
      {
          return DalSearching.DeleteHistory(objDel);
      }
      public static DataSet busConatctVendor(PropVendor objven)
      {
          return DalSearching.ConatctVendor(objven);
      }

    }
}
