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
using System.Drawing;
namespace Presentation_Layer
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        public decimal result = 0;
        public decimal qtyresult = 0;
        public int days = 0;
        public decimal avgprice = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["data"] != null)//session checking
            {
                if (!IsPostBack)
                {

                    PropItem objItem = new PropItem();
                    ddlSearchItemName.DataSource = BusinessNewPurchase.busSelectItem(objItem);
                    ddlSearchItemName.DataBind();

                    PropDestination objDes = new PropDestination();
                    ddlSitename.DataSource = BusinessNewPurchase.busFillDestination(objDes);
                    ddlSitename.DataBind();

                }
            }
        }

        protected void btnSearchbyPurcahseOr_Click(object sender, EventArgs e)
        {

            PropPurchase obj = new PropPurchase();
            obj.pName = ddlSearchItemName.SelectedItem.Text;
            obj.Destination_name = ddlSitename.SelectedItem.Text;
            GridVieworder.DataSource = BusinessSearch.buscalculatefill(obj);
            DataSet ds = new DataSet();
            ds = BusinessSearch.buscalculatefill(obj);
            PanelOrder.Visible = true;
            GridVieworder.DataBind();

            if (ds.Tables[0].Rows.Count > 0)
            {
                bntcalculateResult.Visible = true;
            }
            else
            {
                bntcalculateResult.Visible = false;
                pnlResult.Visible = false;

            }



        }


        protected void bntcalculateResult_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            PropPurchase obj = new PropPurchase();
            obj.pName = ddlSearchItemName.SelectedItem.Text;
            obj.Destination_name = ddlSitename.SelectedItem.Text;

            ds = BusinessSearch.buscalculatefill(obj);
            decimal minprice = Convert.ToDecimal(ds.Tables[1].Rows[0]["Column1"].ToString());
            decimal maxprice = Convert.ToDecimal(ds.Tables[2].Rows[0]["Column1"].ToString());
            avgprice = Convert.ToDecimal(ds.Tables[3].Rows[0]["Column1"].ToString());
            lblopminprice.Text = minprice.ToString() + " " + " Rs.";
            lblOpMaxPrice.Text = maxprice.ToString() + " " + " Rs.";
            lblOpAvg.Text = avgprice.ToString() + " " + " Rs.";

           

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                decimal qty = Convert.ToDecimal(ds.Tables[0].Rows[i]["Purchase_qty"].ToString());
                decimal rate = Convert.ToDecimal(ds.Tables[0].Rows[i]["Purchase_rate"].ToString());

                qtyresult = qtyresult + qty;
                result = result + qty * rate;

                pnlResult.Visible = true;
                lblqty.Text = qtyresult.ToString();

                lblOpResult.Text = result.ToString() + " " + " Rs.";

            }

        }

        protected void GridVieworder_RowDataBound(object sender, GridViewRowEventArgs e)
        {
   //         if (e.Row.RowType == DataControlRowType.DataRow)
   //         {
   //             DataSet ds = new DataSet();
   //             PropPurchase obj = new PropPurchase();
   //             obj.pName = ddlSearchItemName.SelectedItem.Text;
   //             obj.Destination_name = ddlSitename.SelectedItem.Text;

   //             ds = BusinessSearch.buscalculatefill(obj);
   //             avgprice = Convert.ToDecimal(ds.Tables[3].Rows[0]["Column1"].ToString());
   //             //decimal lowb = Convert.ToDecimal(avgprice - avgprice * 10 / 100);
   //             //decimal upb = Convert.ToDecimal(avgprice + avgprice * 10 / 100);


   //             if (e.Row.RowType == DataControlRowType.DataRow)
   //             {
   //                 for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
   //                 {
                    
   //                     decimal res = Convert.ToDecimal(ds.Tables[0].Rows[i]["Purchase_rate"].ToString());
                    

   //                     if (res > avgprice)
   //                     {
   //                         // GridViewRow prevRow = GridVieworder.Rows[e.Row.RowIndex];


   //                         e.Row.RowIndex.CompareTo(i);
   //                         if (e.Row.RowIndex == i)
   //                         {
   //                             e.Row.ForeColor= System.Drawing.Color.Red;
   //                         }
   //                         else 
   //                         {
   //                             e.Row.ForeColor = System.Drawing.Color.Green;
   //                         }

   //                     }
   //                     //else
   //                     //{
   //// e.Row.ForeColor = System.Drawing.Color.Green;
   //                // }

                        

   //                 }

   //             }
   //         }
        }

        protected void ddlSitename_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlResult.Visible = false;

        }

        protected void ddlSearchItemName_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlResult.Visible = false;
        }
    }
}
    