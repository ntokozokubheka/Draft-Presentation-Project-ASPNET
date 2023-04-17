<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="Team_42.AdminReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div class="inner-banner-w3ls py-5" id="home">
        <div class="container py-xl-5 py-lg-3">
            <!-- register  -->
            <div class="modal-body mt-md-2 mt-5">
                <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">Register Now</h3>
                <form  action="#" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Username</label>
                        <input runat="server" type="text" class="form-control" placeholder="Username" id="Name" required="">
                    </div>
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Email</label>
                        <input runat="server" type="email" class="form-control" placeholder="loremipsum@email.com" id="Email"
                            required="">
                    </div>
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Date of Birth</label>
                        <input runat="server" type="date" class="form-control" placeholder="loremipsum@email.com" id="DOB"
                            required="">
                    </div>
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Password</label>
                        <input runat="server" type="password" class="form-control" placeholder="*****" id="Password" required="">
                    </div>
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Confirm Password</label>
                        <input runat="server" type="password" class="form-control" placeholder="*****" id="PassCon" required="">
                    </div>
                    <div class="sub-w3l my-3">
                        <div class="sub-w3layouts_hub">
                            <input runat="server" type="checkbox" id="brand1" value="">
                            <label for="brand1" class="text-li text-style-w3ls">
                                <span></span>I Accept to the Terms & Conditions</label>
                        </div>
                    </div>
                    <div runat="server" class="form-row-last">
					 <asp:Button class="btn button-style-w3" style="background-color:brown" type="submit" Text="Register" ID="btnReg" runat="server" OnClick="btnReg_Click" />
               
						<div id="success" runat="server"></div>

				</div>
                </form>
            </div>
            <!-- //register -->
        </div>
    </div>
</asp:Content>
