<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ONLINEJOBPORTAL.User.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
                     <div class="col-12 pb-20">
                       <asp:Label ID="lblMsg" runat="server" Visible ="false"></asp:Label>
                    
                    </div>
                    <div class="col-12">
                        <h2 class="contact-title">sign-up</h2>
                    </div>
                    <div class="col-lg-8">
                                               <div class="form-contact contact_form"> 
                            <div class="row">
                                <div class="col-12">
                                    <h6>login information</h6>

                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>username</label>
                                        <asp:TextBox ID="Txtusername" runat="server" CssClass="form-control" placeholder="enter unique username" required></asp:TextBox>
                                        <%--<textarea class="form-control w-100" runat="server" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message" required></textarea>--%>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <%--<input class="form-control valid" runat="server" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name" required>--%>
                                        <label>password</label>
                                        <asp:TextBox ID="Txtpassword" runat="server" CssClass="form-control" placeholder="enter password" required></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <%--<input class="form-control valid" runat="server" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email" required>--%>
                                        <label>password</label>
                                        <asp:TextBox ID="Txtconfirmpassword" runat="server" CssClass="form-control" placeholder="enter confirm password" required></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password and confirm password should be same"
                                            controltocompare="txtpassword" ControlToValidate="txtconfirmpassword" ForeColor="red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:CompareValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <h6>personal information</h6>
                                <div class="col-12">
                                    <div class="form-group"
                                        <label>full name</label>
                                        <asp:TextBox ID="Txtfullname" runat="server" CssClass="form-control" placeholder="enter fullname" required></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name must be in characters" ForeColor="red" 
                                            Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="Txtfullname"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                    <div class="col-12">
                                    <div class="form-group"
                                        <label></label>
                                        <asp:TextBox ID="Txtemai" runat="server" CssClass="form-control" placeholder="enter email" required></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name must be in characters" ForeColor="red" 
                                            Display="Dynamic" SetFocusOnError="true" Font-Size="Small" ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="Txtemail"></asp:RegularExpressionValidator>
                                    </div>
                                </div><div class="col-12">
                                    <div class="form-group"
                                        <label>full name</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="enter fullname" required></asp:TextBox>
                                    </div>
                                </div><div class="col-12">
                                    <div class="form-group"
                                        <label>full name</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="enter fullname" required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
      <asp:Button ID="btnsend" runat="server" Text="Send" CssClass="button button-contactForm boxed-btn" OnClick="btnsend_Click"/>
                            </div>
                    </div>
                        </div>
</asp:Content>
