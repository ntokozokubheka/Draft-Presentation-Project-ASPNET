<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminviewjobs.aspx.cs" Inherits="Team_42.adminviewjobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div style="height:20px"></div>
    <h2>My Job List</h2>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
 
    <ul runat="server" id="myUL">
        </ul>

</asp:Content>
