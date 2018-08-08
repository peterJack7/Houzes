<%@ Page Title="" Language="C#" MasterPageFile="~/Seller_Master.master" AutoEventWireup="true" CodeFile="Post_Properties.aspx.cs" Inherits="Post_Properties" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(App_Themes/img/bg-img/hero2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h4 class="breadcumb-title">Sell Your Properties</h4>
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
                            <div class="col-md-12">
                                <asp:Label ID="Label1" runat="server" Visible="false" Text=""></asp:Label>
                           
                        </div>
                         <div class="col-md-12">
                            <label>For</label>
                            <asp:TextBox ID="forwh" CssClass="form-control" placeholder="Eg. Rent/Sell" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Configuration</label>
                            <asp:TextBox ID="conf" CssClass="form-control" placeholder="3 BHK etc." runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Furnishing</label>
                            <asp:TextBox ID="furn" CssClass="form-control" placeholder="Eg. Unfurnished" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Rent</label>
                            <asp:TextBox ID="rent" CssClass="form-control" placeholder="Eg. 3500 (monthly)" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Available For</label>
                            <asp:TextBox ID="avail" CssClass="form-control" placeholder="Eg. Married/All" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Address</label>
                            <asp:TextBox ID="addrs" TextMode="MultiLine" CssClass="form-control" placeholder="Eg. Address" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Floor Number</label>
                            <asp:TextBox ID="floor" CssClass="form-control" placeholder="Eg. 9th floor" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Property Age</label>
                            <asp:TextBox ID="prop_age" CssClass="form-control" placeholder="Eg. 0-1 year old" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Upload Property Photo</label>
                          <asp:FileUpload ID="FileUpload1" CssClass="custom-file" runat="server" />
                        </div>
                          <div class="col-md-12">
                              <asp:Button ID="Button1" CssClass="btn south-btn" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                         <div class="editor-thumbnail">
            <img src="App_Themes/img/bg-img/choosing-realtor.jpg" alt="">
                             <p>
                                 If few people are buying, and no one is also selling, prices can indeed stay aloft - though these prices are fictitious when no transaction is taking place. But the more important question is this: when property prices are so high, why is no one selling?

Let's assume investors are sitting tight on the properties they own - either directly or through benami ownership - in the belief that prices will start their upward climb shortly. But does this assumption makes sense at all purely from an investment returns perspective?
                             </p>
        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <br />
</asp:Content>

