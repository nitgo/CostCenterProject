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
    public partial class SearchItem : System.Web.UI.Page
    {
        public string Itemname;
        public string date;
        public string vendorname;
        public string purchaseOrNo;
        public string Category;

        DataSet dsop = new DataSet();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["data"] != null)//session checking
            {
                if (!IsPostBack)
                {

                    PropItem objItem = new PropItem();
                    ddlSearchItemName.DataSource = BusinessNewPurchase.busSelectItem(objItem);
                    ddlSearchItemName.DataBind();

                    PropCategory objcat = new PropCategory();
                    ddlCategory.DataSource = BusinessNewPurchase.busSelectCategory(objcat);
                    ddlCategory.DataBind();

                    PropVendor objVendor = new PropVendor();
                    ddlSearchVenderName.DataSource = BusinessNewPurchase.busSelectVendor(objVendor);
                    ddlSearchVenderName.DataBind();
                

            }
           
           
            }
            else
            {

                Response.Redirect("~/Login.aspx");

            }

        }
       
 protected void ddlSearchItemName_SelectedIndexChanged(object sender, EventArgs e)
        {
           Itemname =ddlSearchItemName.SelectedItem.Text;
           fillItem();
            
        }
 public void fillItem()
 {
     Itemname = ddlSearchItemName.SelectedItem.Text;
     PropItem prpItem = new PropItem();
     prpItem.Name = Itemname;
     dsop = BusinessSearch.busSearchbyname(prpItem);
     PanelDate.Visible = false;
     PanelOrder.Visible = false;
     Panelvendor.Visible = false;
     Panelcustom.Visible = false;
     PanelCat.Visible = false;
     grdvViewResult.DataSource = dsop;
     PanResult.Visible = true;
     grdvViewResult.DataBind();
    
     
     



 }

        protected void ddlSearchVenderName_SelectedIndexChanged(object sender, EventArgs e)
        {
            vendorname = ddlSearchVenderName.SelectedItem.Text;
            fillVendor();
        }
        public void fillVendor()
        {
            PropVendor prpVendor = new PropVendor();
            vendorname = ddlSearchVenderName.SelectedItem.Text;
            prpVendor.Name = vendorname;
          
              dsop=  BusinessSearch.busSearchbyVendorName(prpVendor);
              PanelDate.Visible = false;
              PanelOrder.Visible = false;
              PanResult.Visible =false;
              Panelcustom.Visible = false;
              PanelCat.Visible = false;
              GridViewvendor.DataSource = dsop;
            Panelvendor.Visible = true;
            GridViewvendor.DataBind();
           
            

        }

       

      

        protected void btnSearchbyPurcahseOr_Click(object sender, EventArgs e)
        {
            fillorder();

        }
        public void fillorder()
        {
            PropPurchase prpPurchaseNo = new PropPurchase();
            prpPurchaseNo.PurchaseOr_No = txtSearchPurchaseOrNo.Text;
            dsop = BusinessSearch.busSearchbyPurchaseOrNo(prpPurchaseNo);
            PanelDate.Visible = false;
            PanelCat.Visible = false;
            Panelvendor.Visible = false;
            PanResult.Visible = false;
            Panelcustom.Visible = false;
            GridVieworder.DataSource = dsop;
            PanelOrder.Visible = true;
            GridVieworder.DataBind();
            
        }

        protected void BtnSearchDate_Click(object sender, EventArgs e)
        {
            filldate();



        }
        public void filldate()
        {
            PropPurchase prpDate = new PropPurchase();
            prpDate.date = Convert.ToDateTime(txtSearchDate.Text);
            dsop = BusinessSearch.busSearchbyDate(prpDate);
            PanelOrder.Visible = false;
            PanResult.Visible = false;
            Panelvendor.Visible = false;
            PanelCat.Visible = false;
            GridViewdate.DataSource = dsop;
            Panelcustom.Visible = false;
            PanelDate.Visible = true;
            GridViewdate.DataBind();
           
           
 
        }



        protected void grdvViewResult_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdvViewResult.PageIndex = e.NewPageIndex;
            fillItem();
 
        }
        protected void grdvViewDate_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewdate .PageIndex = e.NewPageIndex;
            filldate();
 
        }
        protected void grdvViewvendor_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewvendor .PageIndex = e.NewPageIndex;
            fillVendor();
 
        }
        protected void grdvVieworder_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridVieworder .PageIndex = e.NewPageIndex;
            fillorder();
 
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCategory.SelectedIndex != 0)
            {
                ddlSubCat.Items.Clear();
                ddlSubSubCat.Items.Clear();
                ddlSubCat.Items.Add("-Select-");
                PropCategory obj = new PropCategory();
                obj.Id = Convert.ToInt32(ddlCategory.SelectedItem.Value.ToString());
                ddlSubCat.DataSource = BusinessNewPurchase.busSelectSubCategory(obj);
                ddlSubCat.DataBind();

            }
            else
            {
                ddlSubCat.Items.Clear();
                ddlSubCat.Items.Add("-Select-");
            }
        }

        protected void ddlSubCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlSubCat.SelectedIndex != 0)
            {
                ddlSubSubCat.Items.Clear();

                PropSubCategory obj = new PropSubCategory();
                obj.Id = Convert.ToInt32(ddlSubCat.SelectedItem.Value.ToString());
                DataSet dsop = new DataSet();
                dsop = BusinessNewPurchase.busSelectSubSubCategory(obj);

                if (dsop.Tables[0].Rows.Count > 0)
                {
                    ddlSubSubCat.Visible = true;
                    ddlSubSubCat.DataSource = dsop;
                    ddlSubSubCat.DataBind();
                }
                else
                {
                    ddlSubSubCat.Visible = false;
                }
             

            }
            else
            {


                ddlSubSubCat.Items.Clear();
                ddlSubSubCat.Items.Add("-Select-");
            }
        }

        protected void btnsearchcategory_Click(object sender, EventArgs e)
        {

            searchcat();
        }

        public void searchcat()
        {
            if (ddlSubSubCat.Visible == true)
            {
                PropPurchase obj=new PropPurchase();
                obj.subsubcatname = ddlSubSubCat.SelectedItem.Text;
                PanelOrder.Visible = false;
                PanResult.Visible = false;
                Panelvendor.Visible = false;
                PanelDate.Visible = false;
                GridViewcat.DataSource = BusinessSearch.busSearchbyCatwithSubSubCat(obj);
                PanelCat.Visible = true;
                Panelcustom.Visible = false;
                GridViewcat.DataBind();
           
            }
            else 
            {
                PropPurchase obj = new PropPurchase();
                obj.Purchase_category = ddlCategory.SelectedItem.Text;
                obj.subcatname = ddlSubCat.SelectedItem.Text;
                PanelOrder.Visible = false;
                PanResult.Visible = false;
                Panelvendor.Visible = false;
                PanelDate.Visible = false;
                GridViewcat.DataSource = BusinessSearch.busSearchbyCatwithoutSubSubCat(obj);
                PanelCat.Visible = true;
                Panelcustom.Visible = false;
                GridViewcat.DataBind();
            }
        }

        protected void GridViewcat_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewcat.PageIndex = e.NewPageIndex;
            searchcat();

        }

        protected void btncashsearch_Click(object sender, EventArgs e)
        {

        }

        protected void btncustom_Click(object sender, EventArgs e)
        {
            fillcustom();
        }
        public void fillcustom()
        {
            PropPurchase prpcustom = new PropPurchase();
            prpcustom.pName= txtcustom.Text;
            dsop = BusinessSearch.buscustomsearch(prpcustom);
            PanelOrder.Visible = false;
            PanResult.Visible = false;
            Panelvendor.Visible = false;
            PanelCat.Visible = false;
            GridViewcustom.DataSource = dsop;
            PanelDate.Visible = false;
            Panelcustom.Visible = true;
            GridViewcustom.DataBind();



        }

        protected void GridViewcustom_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewcustom.PageIndex = e.NewPageIndex;
            fillcustom();
        }

    }
}
