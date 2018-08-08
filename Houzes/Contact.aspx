<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(App_Themes/img/bg-img/hero1.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title">Contact</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <section class="south-contact-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact-heading">
                        <h6>Contact info</h6>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-4">
                    <div class="content-sidebar">
                        <!-- Office Hours -->
                        <div class="weekly-office-hours">
                            <ul>
                                <li class="d-flex align-items-center justify-content-between"><span>Monday - Friday</span> <span>09 AM - 19 PM</span></li>
                                <li class="d-flex align-items-center justify-content-between"><span>Saturday</span> <span>09 AM - 14 PM</span></li>
                                <li class="d-flex align-items-center justify-content-between"><span>Sunday</span> <span>Closed</span></li>
                            </ul>
                        </div>
                        <!-- Address -->
                        <div class="address mt-30">
                            <h6><img src="App_Themes/img/icons/phone-call.png" alt=""> +45 677 8993000 223</h6>
                            <h6><img src="App_Themes/img/icons/envelope.png" alt=""> office@template.com</h6>
                            <h6><img src="App_Themes/img/icons/location.png" alt=""> UG-248, Dreams The Mall, Near Railway Station<br>Bhandup (West) ,Mumbai-400078</h6>
                        </div>
                    </div>
                </div>

                <!-- Contact Form Area -->
                <div class="col-12 col-lg-8">
                    <div class="contact-form">

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
                                                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="Message" CssClass="form-control"></asp:TextBox>
                            </div>
                            <button type="submit" class="btn south-btn">Send Message</button>
                    
                    </div>
                </div>
            </div>
        </div>
    </section>




</asp:Content>

