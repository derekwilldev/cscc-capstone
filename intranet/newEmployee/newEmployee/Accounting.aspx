<%@ Page Title="Accounting" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accounting.aspx.cs" Inherits="newEmployee.Accounting" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


   <%--  the header--%>

    <div class="jumbotron text-center" >
        <h1 >Welcome to Accounting!</h1>
        <h2>The place where everyone COUNTS!</h2>
        <br />     
    </div>

    <%--this is the middle section of the layout--%>
    <div class="row">

        <%--provides link to the general ledger--%>
        <div class="col-md-4">
            <h2><asp:HyperLink href="GeneralLedger.aspx" runat="server">General Ledger</asp:HyperLink></h2>
            <p>Used to summarize the effects of journal entries on each account, which is organize by account</p>
          
            <%--provides link to the general journal--%>
        </div>
        <div class="col-md-4">
            <h2><asp:HyperLink href="GenJournal.aspx" runat="server">General Journal</asp:HyperLink></h2>
            <p>
                Used to record the effects of each day's transactions, which is organized by date.
            </p>
        </div>

        <%--provides link the products table--%>
                <div class="col-md-4">
            <h2><asp:HyperLink href="Products.aspx" runat="server">Products</asp:HyperLink></h2>
            <p>used to add, delete, and update products</p>
        </div>
    </div>
</asp:Content>

