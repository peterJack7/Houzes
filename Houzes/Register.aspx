<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
       <div class="row">
               <div class="col-md-3">

               </div>
                 <div class="col-md-6">
                     <div class="card">
                         <div class="card-body">
                             <div class="col-md-12">
                              
                                   <asp:DropDownList CssClass="dropdown-menu" ID="ddlRole" runat="server">
                                       <asp:ListItem> Select Role</asp:ListItem>
                                        <asp:ListItem> Buyer</asp:ListItem>
                                        <asp:ListItem> Seller</asp:ListItem>
                                        <asp:ListItem> Builder</asp:ListItem>
                                   </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ddlRole" InitialValue=" Select Role" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                             </div>
                         <br />
                             <br />
                             <div class="col-md-12">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="fname" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                 <asp:TextBox ID="fname" placeholder="Enter First Name" CssClass="form-control" runat="server"></asp:TextBox>
                             </div>
                              <div class="col-md-12">
                             
                                        <asp:TextBox ID="lname" placeholder="Enter Last Name" CssClass="form-control" runat="server"></asp:TextBox>
                             </div>
                                  <div class="col-md-12">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="cnum" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                       <asp:TextBox ID="cnum" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="cnum" ValidationExpression="^[789]\d{9}$" runat="server" ErrorMessage="enter a valid number"></asp:RegularExpressionValidator>
                             </div>
                                  <div class="col-md-12">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="email" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="enter a valid email"></asp:RegularExpressionValidator>
                                      <asp:TextBox ID="email" CssClass="form-control" placeholder="Enter Email ID" runat="server"></asp:TextBox>
                             </div>
                                  <div class="col-md-12">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="pass" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="pass" TextMode="Password" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                             </div>
                               <div class="col-md-12">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="conpass" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="conpass"  TextMode="Password" CssClass="form-control" placeholder="Confirm Password" runat="server"></asp:TextBox>
                             </div>
                               <div class="col-md-4">
                                   <asp:Button ID="Button1" CssClass="btn south-btn" runat="server" Text="Submit" OnClick="Button1_Click" style="left: 0px; top: 0px" />
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

