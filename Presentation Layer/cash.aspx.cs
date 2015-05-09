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
    public partial class cash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Session["data"] != null)//session checking
            {
                if (!IsPostBack)
                {

                    proptag obj = new proptag();
                    ddltagpurpose.DataSource = BusinessNewPurchase.dalfilltag(obj);
                    ddltagpurpose.DataBind();
                    
                }
                Label1.Text = "";

            }
            else
            {

                Response.Redirect("~/Login.aspx");

            }
        }

        protected void ddltagpurpose_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {

                propcash obj = new  propcash();
                obj.Cash_VNo = txtVocherno.Text;
                obj.cash_date = Convert.ToDateTime(txtDate.Text);
                obj.cash_name = txtwhom.Text;
                obj.Cash_purpose = txtpurpose.Text;
                obj.cash_tag = ddltagpurpose.SelectedItem.Text;
                obj.cash_amount =Convert.ToInt32(txtAmount.Text);

                int op = BusinessNewPurchase.dalbusfillcash(obj);

                if (op <= 0)
                {

                    Label1.Text = "Successfully inserted";


                    txtVocherno.Text = "";
                    txtDate.Text = "";
                    txtwhom.Text = "";
                    txtpurpose.Text = "";
                    
                    txtAmount.Text = "";
                    ddltagpurpose.SelectedItem.Text = "-Select-";
                    


                }
                else
                {
                    Label1.Text = "Unsuccessful";

                }
            }

            catch
           (Exception ex)
            {
                Label1.Text = ex.Message.ToString();
            }
        }
    }
}
