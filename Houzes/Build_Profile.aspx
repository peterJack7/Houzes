<%@ Page Title="" Language="C#" MasterPageFile="~/Seller_Master.master" AutoEventWireup="true" CodeFile="Build_Profile.aspx.cs" Inherits="Build_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(App_Themes/img/bg-img/hero2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h4 class="breadcumb-title">Build Your Profile</h4>
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
                            <label>Name</label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="3 Bruce Wayne." runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Email ID</label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Eg. Email ID" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <label>Contact Number</label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Eg. 9004734590" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-md-12">
                            <label>Address</label>
                            <asp:TextBox ID="TextBox5" TextMode="MultiLine" CssClass="form-control" placeholder="Eg. Address" runat="server"></asp:TextBox>
                        </div>
                     
                    
                        <div class="col-md-12">
                            <label>Upload Profile Photo</label>
                            <asp:FileUpload ID="FileUpload1" CssClass="custom-file" runat="server" />
                        </div>
                        <div class="col-md-12">
                            <asp:Button ID="Button1" CssClass="btn south-btn" runat="server" Text="Submit" />
                        </div>

                    </div>
                </div>
                
            </div>
            <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="editor-thumbnail">
                                <img src="App_Themes/img/bg-img/editor.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
    <br />
</asp:Content>

