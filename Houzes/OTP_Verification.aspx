<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="OTP_Verification.aspx.cs" Inherits="OTP_Verification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(App_Themes/img/bg-img/hero1.jpg);">
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
       <div class="row">
               <div class="col-md-3">

               </div>
                 <div class="col-md-6">
                     <div class="card">
                         <div class="card-body">
                        <div class="col-md-12">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                             <br />
                             <div class="col-md-12">
                           
                                 <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter OTP"  runat="server"></asp:TextBox>
                             </div>
                           
                               <div class="col-md-12">
                                   <asp:Button ID="Button1" CssClass="btn btn-block south-btn" runat="server" Text="Submit" OnClick="Button1_Click" style="left: 1px; top: 0px" />
                        </div>
                                
                               <div class="col-md-12">
                                   <asp:HyperLink CssClass="align-middle" NavigateUrl="#" ID="HyperLink1" runat="server">Resend OTP?</asp:HyperLink>
                        </div>
                         </div>
                     </div>

               </div>
                 <div class="col-md-3">

               </div>
           </div>
    
   </div>
        <br />
</asp:Content>

