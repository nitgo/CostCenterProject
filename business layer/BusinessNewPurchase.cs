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
   public class BusinessNewPurchase
    {
       public static int busNewOrder(PropPurchase obj1)
       {
           return DalItemPurchase.InsertNewOrder(obj1);
       }

       public static int busNewInventory(propInventory objInv)
       {
           return DalItemPurchase.InsertNewInventory(objInv);
       }

       public static int busPopItem(PropItem objitem)
       {
           return DalItemPurchase.InsertpopItem(objitem);
       }
       public static int busPopSite(PropDestination objsite)
       {
           return DalItemPurchase.Insertpopsite(objsite);
       }

       public static int buspopCategory(PropCategory objCategory)
       {
           return DalItemPurchase.InsertpopCategory(objCategory);
       }
       public static int buspopVendor(PropVendor objvendor)
       {
           return DalItemPurchase.InsertpopVendor(objvendor);
       }
       public static DataSet busSelectItem(PropItem obj2)
       {
           return DalItemPurchase.SelectItemName(obj2);
       }
       // public static DataSet busSelectUnit(propunit objunit)
       //{
       //    return DalItemPurchase.FillDDlUnit(objunit);
       //}

       
       public static DataSet busFillDestination(PropDestination objDes)
       {
           return DalItemPurchase.FillDDlDestination(objDes);
           }
       public static DataSet busFillGridView(PropPurchase objprp)
       {
           return DalItemPurchase.FillGridView(objprp);
       }
       public static int BusEditGridView(PropPurchase objedit)
       {
           return DalItemPurchase.EditGridView(objedit);
       }
       public static int BusAddGridView(PropPurchase objadd)
       {
           return DalItemPurchase.InsertGridView(objadd);
       }
       public static int BusDeleteGridView(PropPurchase objdel)
       {
           return DalItemPurchase.DeleteGridView(objdel);
       }
       public static DataSet buseditmodefillsubcat (PropSubSubCategory objsubsub)
       {
           return DalItemPurchase.selectSubSubCategoryEditmode(objsubsub);
       }

       public static DataSet busSelectCategory(PropCategory obj3)
       {
           return DalItemPurchase.selectCategory(obj3);

       }
       public static DataSet busSelectSubCategoryGridview(PropSubCategory objSub)
       {
           return DalItemPurchase.fillSubcategoryGridview(objSub);

       }
       public static DataSet busSelectSubCategory(PropCategory objSub)
       {
           return DalItemPurchase.selectSubCategory(objSub);

       }

       public static DataSet busSelectSubSubCategory(PropSubCategory objSubSub)
       {
           return DalItemPurchase.selectSubSubCategory(objSubSub);

       }



       public static DataSet busSelectVendor(PropVendor obj4)
       {
           return DalItemPurchase.selectvendor(obj4);
       }

       public static int dalbusfillcash(propcash objcash)
       {
           return DalItemPurchase.insertcash(objcash);
       }
       public static DataSet dalfilltag (proptag objtag)
       {
           return DalItemPurchase.filltag(objtag);
       }

    }
}
