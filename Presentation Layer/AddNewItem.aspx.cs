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
    
    public partial class AddNewItem : System.Web.UI.Page
    {
        public string subsubcat;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["data"] != null)//session checking
            {
                if (!IsPostBack)
                {

                    PropItem objItem = new PropItem();
                    ddlItemName.DataSource = BusinessNewPurchase.busSelectItem(objItem);
                    ddlItemName.DataBind();//data binding

                    PropCategory objcat = new PropCategory();
                    ddlCategory.DataSource = BusinessNewPurchase.busSelectCategory(objcat);
                    ddlCategory.DataBind();

                    PropVendor objVendor = new PropVendor();
                    ddlSupplierName.DataSource = BusinessNewPurchase.busSelectVendor(objVendor);
                    ddlSupplierName.DataBind();

                    PropDestination objDes = new PropDestination();
                    DdlSite.DataSource = BusinessNewPurchase.busFillDestination(objDes);
                    DdlSite.DataBind();

                    //propunit objUnit = new propunit();
                    //drplUnit.DataSource = BusinessNewPurchase.busSelectUnit(objUnit);
                    //drplUnit.DataBind();

                    addItem.Attributes.Add("onclick", "openPopUp('PopUpItem.aspx')");
                  
                    AddVendor.Attributes.Add("onclick", "openPopUpVendor('PopUpVendor.aspx')");
                }
                Label1.Text = "";

            }
            else
            {

                Response.Redirect("~/Login.aspx");//page redirection

            }
        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                PropPurchase obj = new PropPurchase();//object initilization
                obj.PurchaseOr_No = txtPurchaseOrNo.Text;//purchase order no
                obj.pName = ddlItemName.SelectedItem.Text;//product name
                obj.date = Convert.ToDateTime(txtPurcahseDate.Text);//date of order purchase
                obj.Purchase_category = ddlCategory.SelectedItem.Text;//category selction
                obj.quantity =Convert.ToDecimal(txtQty.Text);//quantity selection
                obj.price = Convert.ToDecimal(txtPricePerUnit.Text);//price specifiacation
                obj.vName = ddlSupplierName.SelectedItem.Text;//vendor name specification
                obj.Unitname = drplUnit.SelectedItem.Text;//unit name specification
                

                int op = BusinessNewPurchase.busNewOrder(obj);//for checking the successful completion

                if (op <= 0)
                {

                    Label1.Text = "Successfully inserted";

                    
                    txtPurchaseOrNo.Text = "";
                    txtPurcahseDate.Text = "";
                    ddlItemName.SelectedItem.Text = "-Select-";
                    ddlCategory.SelectedItem.Text = "-Select-";
                    txtQty.Text = "";
                    txtPricePerUnit.Text = "";
                    ddlSupplierName.SelectedItem.Text = "-Select-";
                    drplUnit.SelectedItem.Text = "-Select-";

                 
                }
                else
                {
                    Label1.Text = "Unsuccessful";

                }
            }

            catch
            (Exception ex)//exception checking try catch case
            {
                Label1.Text = ex.Message.ToString();
            }

        }
        public void fill()
        {
            PropPurchase prp = new PropPurchase();
            prp.PurchaseOr_No = txtPurchaseOrNo.Text;
         grdViewInfo.DataSource=BusinessNewPurchase.busFillGridView(prp);
         grdViewInfo.DataBind();

        }
        protected void txtPurchaseOrNo_TextChanged(object sender, EventArgs e)
        {
            fill();
        }

        protected void grdViewInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdViewInfo.EditIndex = -1;
            fill();
        }

        protected void grdViewInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            PropPurchase prop = new PropPurchase();
            prop.Purchase_Id = Convert.ToInt32(grdViewInfo.DataKeys[e.RowIndex].Value.ToString());


            BusinessNewPurchase.BusDeleteGridView(prop);

            grdViewInfo.EditIndex = -1;
            fill();
        }

        protected void grdViewInfo_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdViewInfo.EditIndex = e.NewEditIndex;
            fill();
        }

        protected void grdViewInfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PropPurchase prop = new PropPurchase();
            prop.Purchase_Id = Convert.ToInt32(grdViewInfo.DataKeys[e.RowIndex].Value.ToString());

            //DropDownList d1 = (DropDownList)grdViewInfo.Rows[e.RowIndex].FindControl("drpeditItem");
            //prop.pName = d1.SelectedItem.Text;
            TextBox t1 = (TextBox)grdViewInfo.Rows[e.RowIndex].FindControl("drpeditItem");
            prop.pName = t1.Text;

            DropDownList d2 = (DropDownList)grdViewInfo.Rows[e.RowIndex].FindControl("drpEditCategory");
            prop.Purchase_category = d2.SelectedItem.Text;

            DropDownList d3 = (DropDownList)grdViewInfo.Rows[e.RowIndex].FindControl("drpEditSubCategory");
            prop.subcatname = d3.SelectedItem.Text;

            DropDownList d5 = (DropDownList)grdViewInfo.Rows[e.RowIndex].FindControl("drpEditSubSubCategory");
            prop.subsubcatname = d5.SelectedItem.Text;

            TextBox t3 = (TextBox)grdViewInfo.Rows[e.RowIndex].FindControl("txtEdtQty");
            prop.quantity = Convert.ToDecimal(t3.Text);

            

            TextBox t4 = (TextBox)grdViewInfo.Rows[e.RowIndex].FindControl("txtEdtprice");
            prop.price = Convert.ToDecimal(t4.Text);

            DropDownList d4 = (DropDownList)grdViewInfo.Rows[e.RowIndex].FindControl("drplUnit");
            prop.Unitname = d4.SelectedItem.Text;

            TextBox days = (TextBox)grdViewInfo.Rows[e.RowIndex].FindControl("txtday");
            prop.day =days.Text;


            BusinessNewPurchase.BusEditGridView(prop);
            grdViewInfo.EditIndex = -1;
            fill();
        }

        protected void grdViewInfo_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && grdViewInfo.EditIndex == e.Row.RowIndex)
            {

              

                PropCategory objcat = new PropCategory();
                DropDownList dd2 = (DropDownList)e.Row.FindControl("drpEditCategory");
                dd2.DataSource = BusinessNewPurchase.busSelectCategory(objcat);
                dd2.DataBind();

                PropSubCategory objsub = new PropSubCategory();
                DropDownList dd3 = (DropDownList)e.Row.FindControl("drpEditSubCategory");
                dd3.DataSource = BusinessNewPurchase.busSelectSubCategoryGridview(objsub);
                dd3.DataBind();

                PropSubSubCategory objsubsubsub = new PropSubSubCategory();
                DropDownList dd4 = (DropDownList)e.Row.FindControl("drpEditSubSubCategory");
                dd4.DataSource = BusinessNewPurchase.buseditmodefillsubcat(objsubsubsub);
                
                dd4.DataBind();


                //propunit objUnt = new propunit();
                //DropDownList dd5 = (DropDownList)e.Row.FindControl("drplUnit");
                //dd5.DataSource = BusinessNewPurchase.busSelectUnit(objUnt);
                //dd5.DataBind();


                

                

            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
           
            if( ddlSubSubCat.Text==null)
            {
               subsubcat = null;
                
        }
            else
            {
               subsubcat= ddlSubSubCat.Text;
            }
            

            PropPurchase add = new PropPurchase();
            add.PurchaseOr_No = txtPurchaseOrNo.Text;
            add.pName = ddlItemName.SelectedItem.Text;
            add.date = Convert.ToDateTime(txtPurcahseDate.Text);
            add.Purchase_category = ddlCategory.SelectedItem.Text;
            add.quantity = Convert.ToDecimal(txtQty.Text);
            add.price = Convert.ToDecimal(txtPricePerUnit.Text);
            add.vName = ddlSupplierName.SelectedItem.Text;
            add.Destination_name = DdlSite.SelectedItem.Text;
            add.Unitname = drplUnit.SelectedItem.Text;
           
            add.subcatname = ddlSubCat.SelectedItem.Text;
            add.subsubcatname = subsubcat;
            add.day =txtdays.Text;
           int op= BusinessNewPurchase.BusAddGridView(add);
           if (op <= 0)
           {
               fill();
               Label1.Text = "Successfully inserted";
           }
           else
           {
               Label1.Text = "Unsuccessfull";
           }


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
                ddlSubSubCat.DataSource = BusinessNewPurchase.busSelectSubSubCategory(obj);
                ddlSubSubCat.DataBind();

            }
            else
            {

                
                ddlSubSubCat.Items.Clear();
                ddlSubSubCat.Items.Add("-Select-");
            }
        }
        
        

       

        protected void grdViewInfo_RowCommand(object sender, GridViewCommandEventArgs e)
        {       
            
        }

        protected void AddSite_Click(object sender, ImageClickEventArgs e)
        {

        }

       
    }
}
