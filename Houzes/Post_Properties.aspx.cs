using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Post_Properties : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HouzesString"].ConnectionString);
    static String imagelink;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userid"]!=null)
        {
            Label1.Text = Session["userid"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
      
    }
    private Boolean uploadimage()
    {
        Boolean imagesaved = false;
        if (FileUpload1.HasFile == true)
        {
            String contenttype = FileUpload1.PostedFile.ContentType;
            int filesize;
            filesize = FileUpload1.PostedFile.ContentLength;
            System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
            int height = img.Height;
            int width = img.Width;
            FileUpload1.SaveAs(Server.MapPath("~/Property_Photo/") + addrs.Text + ".jpg");
            imagelink = "Property_Photo/" + addrs.Text + ".jpg";
            imagesaved = true;
        }
        else
        {
            //Label81.Text = "You have not uploaded image - Browse and Select File First"; 
        }
        return imagesaved;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (uploadimage() == true)

        {
            string insert = "insert into  tbl_Sell_Properties values('"+Label1.Text+"','"+forwh.Text+"','" + conf.Text + "','" + furn.Text + "','" + rent.Text + "','" + avail.Text + "','" + addrs.Text + "','" + floor.Text + "','" + prop_age.Text + "','"+imagelink+"')";

            SqlCommand cmd = new SqlCommand(insert, con);
           
                con.Open();
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Registered Successfull')</script>");
            Clears();
        }
        else
        {
            Response.Write("<script>alert('Unsuccessful')</script>");
        }
    }
    public void Clears()
    {
        conf.Text = "";
        furn.Text = "";
        rent.Text = "";
        avail.Text = "";
        addrs.Text = "";
        floor.Text = "";
        prop_age.Text = "";
        imagelink = null;
    }
}