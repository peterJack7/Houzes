﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Forgot_Password.aspx.cs" Inherits="Forgot_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img" style="background-image: url(App_Themes/img/bg-img/hero1.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h4 class="breadcumb-title">Forgot Your Password</h4>
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
                                 <asp:Label ID="Label3" Enabled="false" runat="server" Text=""></asp:Label>
                                 </div>
                              <div class="col-md-12">
                             
                                 <%-- <input type="text" class="form-control" placeholder="Email ID" />--%>
                                  <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Enter Registered Email ID" runat="server"></asp:TextBox>
                        
                             </div>
                     
                             <br />
                             <div class="col-lg-12 col-md-8 col-sm-12 col-xl-12">
                                 <asp:Button ID="Button2"  CssClass="btn south-btn btn-block" runat="server" Text="Request Password" OnClick="Button2_Click" />
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

