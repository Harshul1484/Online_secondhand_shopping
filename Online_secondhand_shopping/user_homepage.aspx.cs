using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {

        }
        else
        {
            Response.Redirect("~/login_page.aspx");    
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login_page.aspx");
        Session["Username"] = null;
    }
}