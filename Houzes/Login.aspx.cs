using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HouzesString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool Flag = false;
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Select * from tbl_Registration";
        cmd.CommandType = CommandType.Text;
        dr = cmd.ExecuteReader();
        string Role = "";
        string bn = "";
        while (dr.Read())
        {

            string Email = dr[5].ToString();
            string PassWord = dr[6].ToString();

            if (TextBox1.Text == Email && TextBox2.Text == PassWord)
            {
                Role = dr[1].ToString();
                bn = dr[8].ToString();
                Flag = true;
            }
        }
        dr.Close();

        if (Flag == false)
        {
            Label3.Visible = true;
            Label3.Text = "Not authorized";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        if (Flag == true)
        {

            if (Role == " Builder" && bn == "varified")
            {
                Label3.Visible = true;
                Label3.Text = "Authorized";
                Session["userid"] = TextBox2.Text;
                Response.Redirect("Builder_LandingPage.aspx");

                Session.RemoveAll();

            }
            else if (Role == " Buyer" && bn == "varified")
            {
                Label3.Visible = true;
                Label3.Text = "Authorized";
                Session["userid"] = TextBox2.Text;
                Response.Redirect("Buyer_LandingPage.aspx");
                Session.RemoveAll();

            }
            else if (Role == " Seller" && bn == "varified")
            {
                Label3.Visible = true;
                Label3.Text = "Authorized";
                Session["userid"] = TextBox2.Text;

                Response.Redirect("Seller_LandingPage.aspx");
                Session.RemoveAll();

            }
            else
            {
                Label3.Text = "Your Account is not verified";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
        con.Close();
    }
}