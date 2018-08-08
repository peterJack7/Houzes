using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Change_Password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HouzesString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userid"]==null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Label3.Text = Session["userid"].ToString();
        }
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String myquery = "select * from tbl_Registration where pass='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(myquery, con);
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";

            Label1.Visible
                    = true;
            Label1.Text = "User found";
            TextBox1.Enabled = false;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Please Enter correct password";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == TextBox3.Text)
        {
            {
                String updatepass = "update tbl_Registration set pass='" + TextBox2.Text +
               "' , con_pass='"+TextBox3.Text+"' where pass='" + TextBox1.Text + "'";

                con.Open();
                SqlCommand cmd1 = new SqlCommand(updatepass, con);
                cmd1.CommandText = updatepass;
                cmd1.Connection = con;
                cmd1.ExecuteNonQuery();
           
                Response.Write("<script>alert('Your Password Has Been Changed Successfully')</script>");
                TextBox2.Text = "";
                TextBox1.Text = "";
                TextBox3.Text = "";
                Label1.Visible = false;
                TextBox1.Enabled = true;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
            }
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Please Enter correct password";
        }
    }
}