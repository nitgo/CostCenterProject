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
    public partial class viewInventory : System.Web.UI.Page
        
    {
        public string Itemname;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["data"] != null)//session checking
            {
                if (!IsPostBack)
                {
                }


            }
            else
            {

                Response.Redirect("~/Login.aspx");

            }
        }



        public void fillcustom()
        {
            propInventory prpcustom = new propInventory();
            prpcustom.Itemname = txtcustom.Text;
            DataSet dsop = new DataSet();
            dsop = BusinessSearch.businventorycustomsearch(prpcustom);
            
            PanResult.Visible = true;
            grdvViewResult.DataSource = dsop;

            grdvViewResult.DataBind();



        }

        protected void txtcustom_TextChanged(object sender, EventArgs e)
        {
            
                Itemname = txtcustom.Text;
                fillcustom();
            
            
        }

        protected void grdvViewResult_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            grdvViewResult.PageIndex = e.NewSelectedIndex;
            fillcustom();
        }
    }
}
