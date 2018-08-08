<%@ Page Title="" Language="C#" MasterPageFile="~/Seller_Master.master" AutoEventWireup="true" CodeFile="View_Posted_Properties.aspx.cs" Inherits="View_Posted_Properties" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(App_Themes/img/bg-img/hero3.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title">Register Now</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br />
    <div class="container">
        <div class="row" style="padding-top: 50px">
            <asp:Repeater runat="server" ID="rep">

                <ItemTemplate>
                    <div class="col-md-4 col-sm-4">
                        <!-- Property Thumbnail -->
                        <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="300ms">
                            <div class="property-thumb">
                                <img class="img-thumbnail" src="<%#Eval("Property_Picture") %>" alt="">

                                <div class="tag">
                                    <span>For <%#Eval("For") %></span>
                                </div>
                                <div class="list-price">
                                    <p><span class="fa fa-inr"></span><%#Eval("rent") %> </p>
                                </div>
                            </div>
                            <!-- Property Content -->
                            <div class="property-content">
                                <h5><%#Eval("configuration") %></h5>
                                <p>Available For:<%#Eval("Available_For") %> </p>
                                <p>Property Age:<%#Eval("Property_Age") %> </p>
                                <p>Furnishing:<%#Eval("furnsihing") %> </p>
                                <p class="location">
                                    <img src="App_Themes/img/icons/location.png" alt=""><%#Eval("Floor_Number") %>
                                </p>
                                <p><%#Eval("Addres") %></p>
                                <div class="property-meta-data d-flex align-items-end justify-content-between">
                                </div>
                            </div>
                        </div>
                    </div>


                </ItemTemplate>

            </asp:Repeater>
        </div>
    </div>
</asp:Content>

