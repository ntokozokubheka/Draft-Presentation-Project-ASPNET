<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="Team_42.AdminIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">    <div class="w3pvtits-services py-5" id="services">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-2 text-center text-wh font-weight-bold">Welcome  <span id="user" runat="server" ></span>
            </h3>
            <p class="text-li text-center title-w3 mb-md-5 mb-4">Excepteur sint occaecat cupidatat</p>
            <div class="row w3pvtits-services-row text-center pt-4">
                <div class="col-lg-4">
                    <a href="addjobs.aspx">  <div class="w3pvtits-services-grids">
                        <div class="icon-effect-wthree">
                            <span class="fa fa-home ser-icon"></span>
                        </div>
                        <h4 class="text-bl my-4">Post new job </h4>
                        <p class="text-left">recruite new workers</p>
                       
                    </div></a>
                  
                </div>
                <div class="col-lg-4 serv-w3mk my-lg-0 my-5">
                     <a href="adminviewjobs.aspx">  <div class="w3pvtits-services-grids">
                        <div class="icon-effect-wthree">
                            <span class="fa fa-home ser-icon"></span>
                        </div>
                        <h4 class="text-bl my-4">View  jobs </h4>
                        <p class="text-left">you can manage jobs here</p>
                       
                    </div></a>
                </div>

                <div class="col-lg-4">
                    <a href="addjobs.aspx">  <div class="w3pvtits-services-grids">
                        <div class="icon-effect-wthree">
                            <span class="fa fa-home ser-icon"></span>
                        </div>
                        <h4 class="text-bl my-4">Job Applications </h4>
                        <p class="text-left">see how many people applied</p>
                       
                    </div></a>
                </div>
            </div>
        </div>
        <img src="images/img.png" alt="services" class="img-fluid img-posi-w3pvt" />
    </div>

</asp:Content>
