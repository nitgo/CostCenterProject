using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using property_layer;
using Data_Acess_layer;
using business_layer;

namespace Presentation_Layer
{
    public partial class Contact_Vendor : System.Web.UI.Page
    {
      public  string itemname;
      public DataSet dsop;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["data"] != null)//session checking
            {
                if (!IsPostBack)
                {

                    PropVendor objVendor = new PropVendor();//onject initialization
                    ddlVendorName.DataSource = BusinessNewPurchase.busSelectVendor(objVendor);
                    ddlVendorName.DataBind();//data binding


                }
                
            }
            else
            {
                Response.Redirect("~/login.aspx");
            }
        }

        protected void ddlVendorName_SelectedIndexChanged(object sender, EventArgs e)
        {
            itemname = ddlVendorName.SelectedItem.Text;
            PropVendor prpven = new PropVendor();
            prpven.Name = itemname;
            dsop = BusinessSearch.busConatctVendor(prpven);
            if (dsop.Tables[0].Rows.Count > 0)
            {
               
                Frmviwenquiries.DataSource = dsop;
               // grd.DataSource = dsop;
                Panop.Visible = true;
               // PanResult.Visible = true;
                Frmviwenquiries.DataBind();
            }
        }
    }
}
