using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Configuration;
public partial class Forgot_Password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HouzesString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String myquery = "Select * from tbl_Registration where Email_ID='" + TextBox1.Text + "'";
        String password;
        SqlCommand cmd = new SqlCommand(myquery,con);
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";
            Label3.Enabled = true;
           password = ds.Tables[0].Rows[0]["pass"].ToString();
            sendpassword(password, TextBox1.Text);
            Label3.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";
            TextBox1.Text = "";

        }
        else
        {
            Label3.Enabled = true;
            Label3.Text = "Your Username is Not Valid or Email Not Registered";

        }
        con.Close();
    }
    private void sendpassword(String password, String email)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("7pihometutorsacademy@gmail.com", "9004734593");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Forgot Password ( Houzes.in )";
        msg.Body = "Hello ,  Your Password is  " + password + "\n\n\nThanks & Regards\n Houzes.in";
        string toaddress = TextBox1.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Houzes.in <7pihometutorsacademy@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);

        }
        catch
        {
            throw;
        }
    }
}