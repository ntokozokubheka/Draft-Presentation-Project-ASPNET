<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addjobs.aspx.cs" Inherits="Team_42.addjobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="inner-banner-w3ls py-5" id="home">
        <div class="container py-xl-5 py-lg-3">
            <!-- register  -->
            <div class="modal-body mt-md-2 mt-5">
                <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">Post a new job</h3>
                <form  action="#" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Job Description</label>
                        <input runat="server" type="text" class="form-control" placeholder="Description" id="description" required="">
                    </div>
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Date of publication</label>
                        <input runat="server" type="date" class="form-control" placeholder="publication" id="date"
                            required="">
                    </div>
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Company Name</label>
                        <input runat="server" type="text" class="form-control" placeholder="Company" id="company"
                            required="">
                    </div>    
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Location</label>
                        <input runat="server" type="text" class="form-control" placeholder="Location" id="location"
                            required="">
                    </div>
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Qualification</label>
                        <input runat="server" type="text" class="form-control" placeholder="Qualification" id="qualification" required="">
                    </div>
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Salary per month</label>
                        <input runat="server" type="text" class="form-control" placeholder="Salary" id="salary" required="">
                    </div> 
                    <div runat="server" class="form-group">
                        <label class="col-form-label">Required Experience duration</label>
                        <input runat="server" type="text" class="form-control" placeholder="Experience" id="experience" required="">
                    </div> 
                    <div runat="server" class="form-group">
                        <label class="col-form-label">  Deadline</label>
                        <input runat="server" type="date" class="form-control" placeholder="Deadline" id="deadline" required="">
                    </div>

                
  
                    <div runat="server" class="form-row-last">
					 <asp:Button class="btn button-style-w3" style="background-color:brown" type="submit" Text="Submit" ID="btnReg" runat="server" OnClick="btnReg_Click" />
               
						<div id="success" runat="server"></div>

				</div>
                </form>
            </div>
            <!-- //register -->
        </div>
    </div>
</asp:Content>
