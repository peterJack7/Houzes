using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class OTP_Verification : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HouzesString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Your Email is" + Request.QueryString["emailadd"].ToString() + "Kindly Check Your Email for OTP";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "select * from tbl_Registration where Email_ID='" + Request.QueryString["emailadd"] + "'";
    
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string activationcode;
            activationcode = ds.Tables[0].Rows[0]["activation_code"].ToString();
            if (activationcode == TextBox1.Text)
            {
                changestatus();
                Response.Write("<script>alert('Verified Successfully')</script>");

                TextBox1.Text = "";

            }
            else
            {
                Response.Write("<script>alert('Please Check OTP')</script>");
            }
        }
        con.Close();
    }
    private void changestatus()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HouzesString"].ConnectionString);
        string query = "update tbl_Registration set status='varified' where Email_ID='" + Request.QueryString["emailadd"] + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
}