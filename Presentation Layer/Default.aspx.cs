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

namespace Presentation_Layer
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
             
        
            #region datasetadmin
            
            

            if (Session["data"] != null)//session checking
            {
                DataSet dsInfo = new DataSet();// dataset initialization "dsInfo"
                dsInfo = (DataSet)Session["data"];//Filling session data into declared dataset
                labadminname.Text = dsInfo.Tables[0].Rows[0]["Admin_Name"].ToString();//assigning values from data set tables and rows
                

            }
            else
            {

                Response.Redirect("~/Login.aspx");

            }
            #endregion
        }
        }
    }
