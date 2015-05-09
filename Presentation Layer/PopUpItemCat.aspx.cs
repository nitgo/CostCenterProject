using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using property_layer;
using Data_Acess_layer;
using business_layer;


namespace Presentation_Layer
{
    public partial class PopUpItemCat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
//            string updateParentScript = @"function closeWindow()
//                              {  
// 
//                    window.opener.location.reload(true);
//                               window.close(); 
//                              }";
//            this.ClientScript.RegisterStartupScript(this.GetType(), "closeWindow", updateParentScript, true);
        }

        protected void btnSubmitCat_Click(object sender, EventArgs e)
        {
            
            PropCategory newcat = new PropCategory();
            newcat.Name= txtPopCatName.Text;
         int op=  BusinessNewPurchase.buspopCategory(newcat);


         if (op <= 0)
         {

             ClientScript.RegisterStartupScript(Page.GetType(), "test3", "<script>window.opener.location.reload(true);window.close();</script>");

         }
             
         else 
         {
             Response.Write("Error in processing.Please Try Again!!");
         }
        
        }
    }
}
