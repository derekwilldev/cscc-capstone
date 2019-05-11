<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="newEmployee.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="div1" runat="server">
        <div>

            <%--login text boxes that confirm data from database--%>
            <h1>Welcome! Please Login</h1>
            <p>Enter the Employee Number:</p>           
            <asp:TextBox ID="employeeNumberTextBox" runat="server" />
            <br />
            <br />
            <p>Enter the Password:</p>
            <asp:TextBox ID="passwordTextBox" runat="server" OnTextChanged="passwordTextBox_TextChanged" TextMode="Password"/>
            <br />
            <br />
            <asp:Button ID="loginButton" text="Submit Login" runat="server" OnClick ="LoginSubmit"/>
        </div>
    </div>
    </asp:Content>
