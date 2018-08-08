<%@ Page Title="" Language="C#" MasterPageFile="~/Seller_Master.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(App_Themes/img/bg-img/hero1.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h4 class="breadcumb-title">Give Your Feedback</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br />
    <div class="container">
        <div class="row">    
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">

                    <div class="form-group">
                        <%-- <input type="text" class="form-control" name="text" id="contact-name" placeholder="Your Name">--%>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Contact Number" CssClass="form-control"></asp:TextBox>
                        <%-- <input type="number" class="form-control" name="number" id="contact-number" >--%>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Email ID" CssClass="form-control"></asp:TextBox>
                        <%--<input type="email" class="form-control" name="email" id="contact-email" placeholder="Your Email">--%>
                    </div>
                    <div class="form-group">
                        <%--  <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="Your Message"></textarea>--%>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="Message" CssClass="form-control" Height="250px"></asp:TextBox>
                    </div>
                    <button type="submit" class="btn south-btn">Send Message</button>

                </div>
            </div>
               
        </div>
              <div class="col-md-6">
                 <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="300ms">
                     <img src="App_Themes/img/bg-img/feedback1.jpg" class="img-thumbnail" />
                 </div>
             </div>
        </div>
      
            
            
    </div>    <br />
</asp:Content>

