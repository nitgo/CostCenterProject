using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using property_layer;
using System.Data.SqlClient;
using Data_Acess_layer;

namespace BusinessLayer
{
   public class BussinessLogin
    {

        public static DataSet BusadminLogin(PropAdmin obj1)
        {
            return LoginValidation.dradminLogin(obj1);
        }

       
    }
}
