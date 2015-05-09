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
using BusinessLayer;

namespace Presentation_Layer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //on page load event
        }

        protected void btnsbmit_Click(object sender, ImageClickEventArgs e)
        {
            PropAdmin admn = new PropAdmin();// object Initialization
            admn.Name = txtUname.Text;// assigning value to properties from textbox
            admn.password = txtPassword.Text;// assigning value to properties from textbox


            DataSet red = new DataSet();// dataset initialization "rad"

            red = BussinessLogin.BusadminLogin(admn);//Filling  dataset into business layer
            //check condition from dataset
            if (red.Tables[0].Rows.Count > 0)
            {

                Session["data"] = red;//create session
                Response.Redirect("~/Default.aspx");//page redirection

            }
            else
            {
                lblMsg.Text = "Incorrect Details";//if login fails
            }
        }
    }
}
