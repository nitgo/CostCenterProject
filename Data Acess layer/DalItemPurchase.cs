using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using property_layer;
using System.Data.SqlClient;
using System.Data;
namespace Data_Acess_layer
{
   public class DalItemPurchase
    {
       public static int InsertNewOrder(PropPurchase obj)
       {
           return DBManager.ExecuteNonQuery("spInsertAddItems",obj.PurchaseOr_No,obj.pName,obj.date,obj.Purchase_category,obj.quantity,obj.price,obj.vName,obj.Unitname,obj.day);
       }
       public static int InsertpopItem(PropItem objitem)
       {
           return DBManager.ExecuteNonQuery("spPopInserItemName",objitem.Name);
       }

       public static int Insertpopsite(PropDestination objsite)
       {
           return DBManager.ExecuteNonQuery("spPopInserItemName", objsite.Name,objsite.Address);
       }

       public static int InsertNewInventory(propInventory objInvent)
       {
           return DBManager.ExecuteNonQuery("spInsertInventory", objInvent.Itemname, objInvent.quantity, objInvent.desc, objInvent.site);
       } 


       public static DataSet FillGridView(PropPurchase objFill)
       {
           return DBManager.ExecuteDataset("SpFillGridAddItem", objFill.PurchaseOr_No);
       }


   


        public static DataSet FillDDlDestination(PropDestination objdes)
       {
           return DBManager.ExecuteDataset("spSelectDestination");
       }
       // public static DataSet FillDDlUnit(propunit objunit)
       //{
       //    return DBManager.ExecuteDataset("spSelectUnit");
       //}

       
        public static int EditGridView(PropPurchase objedit)
        {
            return DBManager.ExecuteNonQuery("spEditAdditem",objedit.Purchase_Id ,objedit.pName,objedit.Purchase_category,objedit.subcatname,objedit.subsubcatname,objedit.quantity,objedit.price,objedit.Unitname,objedit.day);
        }


        public static int DeleteGridView(PropPurchase objdel)
        {
            return DBManager.ExecuteNonQuery("spDeleteOrderAdd",objdel.Purchase_Id);
        }

       public static int InsertGridView(PropPurchase objadd)
        {
            return DBManager.ExecuteNonQuery("spInsertAddItems",objadd.PurchaseOr_No,objadd.pName,objadd.date,objadd.Purchase_category,objadd.quantity,objadd.price,objadd.vName,objadd.Destination_name,objadd.Unitname,objadd.subcatname,objadd.subsubcatname,objadd.day);
        }

       
       
       public static int InsertpopCategory(PropCategory objcat)
       {
           return DBManager.ExecuteNonQuery("spPopInserCategoryName", objcat.Name);
       }
       public static DataSet fillSubcategoryGridview(PropSubCategory objsubcat)
       {
           return DBManager.ExecuteDataset("fillsubcategoryGridview");
       }
       
       public static int InsertpopVendor(PropVendor objVendor)
       {
           return DBManager.ExecuteNonQuery("spPopVendorName", objVendor.Name,objVendor.address,objVendor.phone,objVendor.AlternatePhone,objVendor.fax,objVendor.Email);
       }
       public static DataSet SelectItemName(PropItem obj1)
       {
           return DBManager.ExecuteDataset("spSelectItemName", obj1.Name);
       }
       public static DataSet selectCategory(PropCategory obj2)
       {
           return DBManager.ExecuteDataset("spSelectCategory",obj2.Name);
       }
        public static DataSet selectSubCategory(PropCategory objsub)
       {
           return DBManager.ExecuteDataset("spFillSubCategory", objsub.Id);
       }
         public static DataSet selectSubSubCategoryEditmode(PropSubSubCategory objSubsub)
       {
           return DBManager.ExecuteDataset("spFillSubSubCategoryEitmode");
       }

       
        public static DataSet selectSubSubCategory(PropSubCategory objsubSub)
        {
            return DBManager.ExecuteDataset("spFillSubSubCategory ", objsubSub.Id);
        }

       public static DataSet selectvendor(PropVendor obj3)
       {
           return DBManager.ExecuteDataset("spSeelctSupplierName", obj3.Name);
       }

       public static int insertcash(propcash objcash)
       {
           return DBManager.ExecuteNonQuery("spInsertCash",objcash.Cash_VNo,objcash.cash_date,objcash.cash_name,objcash.Cash_purpose,objcash.cash_tag,objcash.cash_amount);
       }

       public static DataSet filltag(proptag objtag)
       {
           return DBManager.ExecuteDataset("spFillTag");
       }

    }
}
