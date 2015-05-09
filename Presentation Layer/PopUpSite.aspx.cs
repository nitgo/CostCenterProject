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
    public partial class PopUpSite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitsite_Click(object sender, EventArgs e)
        {
            PropDestination newsite = new  PropDestination();
            newsite.Name = txtPopSiteName.Text;
            newsite.Address = txtaddress.Text;
            int op = BusinessNewPurchase.busPopSite(newsite);
            if (op <= 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "test21", "<script>window.opener.location.reload(true);window.close();</script>");
            }
            else
            {
                Response.Write("Error in processing.Please Try Again!!");
            }
        }
    }
}
