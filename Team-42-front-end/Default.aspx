<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Team_42._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div class="main-w3pvt mian-content-wthree text-center" id="home">
        <div class="container">
            <div class="style-banner mx-auto">
                <h3 class="text-wh font-weight-bold">Search and Find Your <span>Dream</span> Jobs</h3>
                <p class="mt-2 text-li" id="find">Jobs Available around the world</p>
                <!-- form -->
                <div class="home-form-w3ls mt-5 pt-lg-4">
                    <form action="#" method="post">

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <select required="" runat="server" id="loc" class="form-control">
                                        <option value="">Location</option>
                                     
                                    </select>
                                </div>
                            
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <select required="" runat="server" id="company" class="form-control">
                                        <option value="">Company</option>
                                        
                                      
                                    </select>
                                </div>
                            
                            </div>
                        </div>
                        <button type="submit" class="btn btn_apt">Find Here</button>
                    </form>
                </div>
                <!-- //form -->
            </div>
        </div>
    </div>
      <div style="height:20px"></div>
    <h2> Job List</h2>
    <ul runat="server" id="myUL">
        </ul>


</asp:Content>
