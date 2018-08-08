using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class View_Posted_Properties : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["userid"] == null)
        {
            Response.Redirect("Home.aspx");
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HouzesString"].ConnectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * from tbl_Sell_Properties where Seller_Email_ID='" + Session["userid"].ToString() + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        rep.DataSource = dt;
        rep.DataBind();
        con.Close();
    }
}