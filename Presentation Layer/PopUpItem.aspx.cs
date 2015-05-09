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
using System.Data.SqlClient;

using property_layer;
using Data_Acess_layer;
using business_layer;
namespace Presentation_Layer
{
    public partial class PopUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmitItem_Click(object sender, EventArgs e)
        {
            PropItem newitem = new PropItem();
            newitem.Name = txtPopItemName.Text;
           int op= BusinessNewPurchase.busPopItem(newitem);
            if (op <= 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "test2", "<script>window.opener.location.reload(true);window.close();</script>");
            }
            else
            {
                Response.Write("Error in processing.Please Try Again!!");
            }

        }
    }
}
