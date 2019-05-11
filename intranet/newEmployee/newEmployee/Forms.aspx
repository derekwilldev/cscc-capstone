<%@ Page Title="Forms" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="newEmployee.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>New Forms </h2>

    <%--provides quick navigation links to the differnt tables and forms--%>
    <h3>New Employee Form:</h3>
    <br />
    <a class="btn btn-default" style="background-color:aqua" href="newEmployeeForm.aspx">Enroll a New Employee</a>
    <h3>Employee Table:</h3>
    <a class="btn btn-default" style="background-color:aqua" href="EmployeeTable.aspx">Employee Table</a>
    <h3>General Ledger:</h3>
    <a class="btn btn-default" style="background-color:aqua" href="GeneralLedger.aspx">General Ledger</a>
    <h3>General Journal:</h3>
    <a class="btn btn-default" style="background-color:aqua" href="GenJournal.aspx">General Journal</a>
    <h3>Products:</h3>
    <a class="btn btn-default" style="background-color:aqua" href="Products.aspx">Product Table</a>
</asp:Content>
