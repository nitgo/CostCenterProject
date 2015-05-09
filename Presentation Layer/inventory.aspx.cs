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
    public partial class inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["data"] != null)//session checking
            {
                if (!IsPostBack)
                {

                    PropDestination objDes = new PropDestination();
                    ddlSitename.DataSource = BusinessNewPurchase.busFillDestination(objDes);
                    ddlSitename.DataBind();

                }
            }
        }


        protected void btnSearchbyPurcahseOr_Click1(object sender, EventArgs e)
        {
            propInventory obj = new propInventory();//object initilization
            obj.Itemname = txtItem.Text;//purchase order no
            obj.quantity =Convert.ToInt32(txtQty.Text);//product name
            obj.desc = txtdays.Text;//date of order purchase

            obj.site = ddlSitename.SelectedItem.Text;//quantity selection
           

            int op = BusinessNewPurchase.busNewInventory(obj);//for checking the successful completion

        }
    }
}
