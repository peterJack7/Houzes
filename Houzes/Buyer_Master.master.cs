using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Buyer_Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userid"]==null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Label1.Text = "Welcome " + Session["userid"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}
