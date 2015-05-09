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
using System.Data.SqlClient;



namespace Presentation_Layer
{
    public partial class AddVendor : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            PropVendor newVendor = new PropVendor();
            newVendor.Name = txtVendorName.Text;
            newVendor.address = txtVendorAddress.Text;
            newVendor.phone = txtPhone.Text;
            newVendor.AlternatePhone = txtMobile.Text;
            newVendor.fax = txtFax.Text;
            newVendor.Email = txtemail.Text;
          int a=  BusinessNewPurchase.buspopVendor(newVendor);
          if (a <= 0)
          {
              ClientScript.RegisterStartupScript(Page.GetType(), "test", "<script>window.opener.location.reload(true);window.close();</script>");
          
          }
          else 
          {
              Response.Write("Error in processing.Please Try Again!!");
          }
        }

       
    }
}
