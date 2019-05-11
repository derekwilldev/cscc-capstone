    <%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HumanResources.aspx.cs" Inherits="newEmployee.Home" %>

<%--the header--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center" >
 <h1>Human Resources</h1>
        <h2>Hello <asp:Label ID="userLabel" Text="No User" runat="server" /></h2>        
        <p class="lead">Human Resources, finding the right people to lead the industry.</p>        
    </div>

    <%--quick navigation to the Employee Table --%>
    <div class="row">
        <div class="col-md-6">
            <h2><asp:HyperLink href="EmployeeTable.aspx" runat="server">Employees</asp:HyperLink></h2>
            <p>
             "Nothing we do is more important than hiring people. At the end of the day, you bet on people, not strategies."
                <br />
                -Lawrence Bossidy
            </p>
           
           <%-- quick navigation to the Training page--%>
        </div>
        <div class="col-md-6">
            <h2><asp:HyperLink href="Training.aspx" runat="server">Training</asp:HyperLink></h2>
            <p>
                "Never call an accountant a credit to his profession;
                A good accountant is a debit to his profession"
                <br />
                -Charles Lyell
            </p>     
        </div>
    </div>
</asp:Content>

