<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="newEmployee._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--The header--%>
    <div class="jumbotron">

        <%--the title take the userLabel from the login and pulls the user data from the database--%>
                <h1 >Welcome Home <asp:Label ID="userLabel" Text="No User" runat="server" /></h1>
        <h2>S-mart is happy you are here. Have a great day!!</h2>
        <br />        
        <p class="lead">You are what you do.  You are S-mart</p>       
    </div>

    <%--Provides a fast link to the Human Resources home page--%>
    <div class="row">
        <div class="col-md-4">
            <h2><asp:HyperLink href="HumanResources.aspx" runat="server">Human Resources</asp:HyperLink> </h2>
            <p>
             "Unleash the potential of another and you unleash the potential of you"
                <br />
                -Jim Collins
            </p>         
        </div>

        <%--provides a fast link to the Accounting home page--%>
        <div class="col-md-4">
            <h2><asp:HyperLink href="Accounting.aspx" runat="server">Accounting</asp:HyperLink> </h2>
            <p>
                Happiness is 
                Debits = Credits
            </p>
        </div>

        <%--provides a fast link to the training home page--%>
        <div class="col-md-4">
            <h2><asp:HyperLink href="Training.aspx" runat="server">Training</asp:HyperLink> </h2>
            <p>
                Training resources that unleash your talent.  
            </p>
        </div>
    </div>

</asp:Content>
