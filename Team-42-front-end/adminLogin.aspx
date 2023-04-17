<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="Team_42.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="inner-banner-w3ls py-5" id="home">
        <div class="container py-xl-5 py-lg-3">
            <!-- login  -->
            <div class="modal-body my-5 pt-4">
                <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">Login Now</h3>
                <form   >
                    <div class="form-group">
                        <label class="col-form-label">Username</label>
                        <input runat="server" type="text" class="form-control" placeholder="Username" id="Email" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Password</label>
                        <input runat="server" type="password" class="form-control" placeholder="*****" id="Pass" required="">
                    </div>
                   <asp:Button class="login100-form-btn" style="background-color:brown" type="submit" Text="Sign in" ID="Button1" runat="server" OnClick="btnLogin_Click" />
                	<div id="message" runat="server"></div>
                    <div class="row sub-w3l mt-3 mb-5">
                        <div class="col-sm-6 sub-w3layouts_hub">
                            <input runat="server" type="checkbox" id="brand1" value="">
                            <label for="brand1" class="text-li text-style-w3ls">
                                <span></span>Remember me?</label>
                        </div>
                        <div class="col-sm-6 forgot-w3l text-sm-right">
                            <a href="#" class="text-li text-style-w3ls">Forgot Password?</a>
                        </div>
                    </div>
                    <p class="text-center dont-do text-style-w3ls text-li">Don't have an account?
                        <a href="AdminReg.aspx" class="font-weight-bold text-li">
                            Register Now</a>
                    </p>
                </form>
            </div>
            <!-- //login -->
        </div>
    </div>
</asp:Content>
