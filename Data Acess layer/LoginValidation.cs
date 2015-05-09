using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using property_layer;
using Data_Acess_layer;
using System.Data.SqlClient;
using System.Data;




namespace Data_Acess_layer
{
  public class LoginValidation
    {
      public static DataSet dradminLogin(PropAdmin objAdmin)
      {
       return DBManager.ExecuteDataset("LoginAdmin", objAdmin.Name, objAdmin.password);
      }
    }
}
