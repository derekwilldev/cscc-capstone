<%@ Page Title="New Employee Enrollment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newEmployeeForm.aspx.cs" Inherits="newEmployee.newEmployeeForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="div1" runat="server">
       <%-- header--%>
        <h1>Enroll a new employee! | <a href="EmployeeTable.aspx">Employee Table</a></h1>
        <div>

           <%-- textboxes used to create a new employee--%>
        <p>First Name: </p>
            <asp:Textbox ID ="txtFirstNameBx"  runat="server" />
        </div>

        <div>
        <p>Last Name: </p>
            <asp:Textbox ID ="txtLastNameBx" runat ="server"/>
        </div>

        <div>
            <p>Phone: </p>
            <asp:Textbox ID="txtPhoneBx"  runat="server" />
        </div>

        <div>
            <p>E-mail: </p>
            <asp:Textbox ID="txtEmailBx"  runat="server" />
        </div>
        
        <div>
            <p>Password: </p>
            <asp:Textbox ID="txtPasswordBx" runat="server" />
        </div>

        <div>
            <p>Street: </p>
            <asp:Textbox ID="txtStreetbx"  runat="server" />
        </div>

        <div>
            <p>City: </p>
            <asp:Textbox ID="txtCitybx"  runat="server" />
        </div>
        <div>
            <p>State: </p>
            <asp:Textbox ID="txtStatebx"  runat="server" />
        </div>
        <p>Clear Button:</p>
        <asp:Button ID="clearButton" Text="Clear Fields" runat="server" OnClick="clearEvent" />
            <p>Submit Button:</p>
            <asp:Button ID="submitButton" Text="Create a New Employee" runat="server" OnClick="submitEvent"/>
            
        
    </div>
   
   <%-- datasource is the connection the database, provides CRUD functions with SQL statements--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountingConnectionString %>"
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [employee]"        
        InsertCommand="INSERT INTO [employee] ([first_name], [last_name], [email], [pass], [street], [city], [state], [phone])
        VALUES (@FirstName, @LastName, @Email, @Pass, @Street, @City, @State, @Phone)" >

        <%--parameters send the data from each box--%>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtFirstNameBx" Name="FirstName" Type="String" />
            <asp:ControlParameter ControlID="txtLastNameBx" Name="LastName" Type="String" />
            <asp:ControlParameter ControlID="txtPhoneBx" Name="Phone" Type="String" />
            <asp:ControlParameter ControlID="txtEmailBx" Name="Email" Type="String" />
            <asp:ControlParameter ControlID="txtPasswordBx" Name="Pass" Type="String" />
            <asp:ControlParameter ControlID="txtStreetbx" Name="Street" Type="String" />
            <asp:ControlParameter ControlID="txtCitybx" Name="City" Type="String" />
            <asp:ControlParameter ControlID="txtStatebx" Name="State" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>