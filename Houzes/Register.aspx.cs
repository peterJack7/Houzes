using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.IO;
public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HouzesString"].ConnectionString);
    private string activationcode;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
            Random random = new Random();
            activationcode = random.Next(1001, 9999).ToString();
            string insert = "insert into  tbl_Registration values('" + ddlRole.Text + "','" + fname.Text + "','" + lname.Text + "','" + cnum.Text + "','" + email.Text + "','" + pass.Text + "','" + conpass.Text + "','unverified','" + activationcode + "')";

            SqlCommand cmd = new SqlCommand(insert, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                sendcode();
                Response.Write("<script>alert('Registered Successfull')</script>");
                Response.Redirect("OTP_Verification.aspx?emailadd=" + email.Text);



            }
            catch (Exception el)
            {
                Response.Write(el);
                con.Close();
            }
      
       
    }
    public void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("7pihometutorsacademy@gmail.com", "9004734593");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Activation Code";
        msg.Body = "Hello " + fname.Text + "your acttivation code is" + activationcode + "\n\nThanks and Regard\n\n JobSearch";
        string toaddress = email.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Houzes.in <7pihometutorsacademy@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
            // Label14.Text = "Your Query sended successfully";


        }
        catch (Exception el)
        {
            Response.Write(el);
        }
    }
}