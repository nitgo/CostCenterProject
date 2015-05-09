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
    public partial class ViewHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["data"] != null)
                {
                    fill();
                    //DataSet dsInfo = new DataSet();
                    //dsInfo = (DataSet)Session["data"];
                    //Id = Convert.ToInt32(dsInfo.Tables[0].Rows[0]["Admin_Id"].ToString());
                }

                else
                {

                    Response.Redirect("~/Login.aspx");

                }
            }

           

        }
        public void fill()
        {

            PropPurchase prp = new PropPurchase();
            grdvViewPurchaseOrder.DataSource = BusinessSearch.busHistory(prp);
            grdvViewPurchaseOrder.DataBind();

        }
        protected void GrdvViewStock_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            grdvViewPurchaseOrder.EditIndex = -1;
            fill();


        }

        protected void pageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdvViewPurchaseOrder.PageIndex = e.NewPageIndex;
            fill();
        }

        protected void GrdvViewStock_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            PropPurchase prop = new PropPurchase();
            prop.Purchase_Id = Convert.ToInt32(grdvViewPurchaseOrder.DataKeys[e.RowIndex].Value.ToString());

            TextBox t1 = (TextBox)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("txtPurcahseOrno");
            prop.PurchaseOr_No = t1.Text;

            TextBox t2 = (TextBox)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("txtItemName");
            prop.pName = t2.Text;

            TextBox t3 = (TextBox)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("txtPurchaseaDate");
            prop.date = Convert.ToDateTime(t3.Text);

            DropDownList t4 = (DropDownList)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("drpEditCategory");
            prop.Purchase_category = t4.SelectedItem.Text;


            TextBox t5 = (TextBox)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("txtQuantity");
            prop.quantity = Convert.ToDecimal(t5.Text);

            TextBox t6 = (TextBox)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("txtRate");
            prop.price = Convert.ToDecimal(t6.Text);

            TextBox t7 = (TextBox)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("txtVendorName");
            prop.vName = t7.Text;

            DropDownList t8 = (DropDownList)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("ddlUnit");
            prop.Unitname = t8.SelectedItem.Text;

           DropDownList t9 = (DropDownList)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("drpEditSubCategory");
            prop.subcatname = t9.SelectedItem.Text;

            DropDownList t10 = (DropDownList)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("drpEditSubSubCategory");
            prop.subsubcatname = t10.SelectedItem.Text;

            TextBox day = (TextBox)grdvViewPurchaseOrder.Rows[e.RowIndex].FindControl("txtday");
            prop.day =day.Text;
            
            BusinessSearch.busSearchUpdate(prop);


            grdvViewPurchaseOrder.EditIndex = -1;
            fill();


        }

        protected void GrdvViewStock_RowEditing(object sender, GridViewEditEventArgs e)
        {

            grdvViewPurchaseOrder.EditIndex = e.NewEditIndex;
            fill();

        }

        protected void GrdvViewStock_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            PropPurchase prop = new PropPurchase();
            prop.Purchase_Id = Convert.ToInt32(grdvViewPurchaseOrder.DataKeys[e.RowIndex].Value.ToString());

           BusinessSearch.busDeleteHistory(prop);


           grdvViewPurchaseOrder.EditIndex = -1;
            fill();
           
        }

        protected void grdvViewPurchaseOrder_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && grdvViewPurchaseOrder.EditIndex == e.Row.RowIndex)
            {

               

                PropCategory objcat = new PropCategory();
                DropDownList dd2 = (DropDownList)e.Row.FindControl("drpEditCategory");
                dd2.DataSource = BusinessNewPurchase.busSelectCategory(objcat);
                dd2.DataBind();

                PropSubCategory objsub = new PropSubCategory();
                DropDownList dd3 = (DropDownList)e.Row.FindControl("drpEditSubCategory");
                dd3.DataSource = BusinessNewPurchase.busSelectSubCategoryGridview(objsub);
                dd3.DataBind();

                //propunit objUnit = new propunit();
                //DropDownList dd4 = (DropDownList)e.Row.FindControl("ddlUnit");
                //dd4.DataSource = BusinessNewPurchase.busSelectUnit(objUnit);
                //dd4.DataBind();

                PropSubSubCategory objsubsubsub = new PropSubSubCategory();
                DropDownList dd5 = (DropDownList)e.Row.FindControl("drpEditSubSubCategory");
                dd5.DataSource = BusinessNewPurchase.buseditmodefillsubcat(objsubsubsub);
                dd5.DataBind();


            }

        }
    }
}
