<%@ Page Title="Employee Form" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="EmployeeTable.aspx.cs" Inherits="newEmployee.EmployeeTable" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<h1>
    Employee Table

    <%--Employee table using gridview, a tool that pulls data directly from the database to form the table--%>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="employee_id" DataSourceID="SqlDataSource1" Width="100%" Font-Size="Medium" HorizontalAlign="Center">
        
        <%--attributes for the columns --%>
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="employee_id" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="employee_id" />
            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
            <asp:BoundField DataField="email" HeaderText="E-Mail" SortExpression="email" />
            <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" InsertVisible="False" Visible="False" />
            <asp:BoundField DataField="street" HeaderText="Street" SortExpression="street" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
        </Columns>

       <%-- gridview properties for the headers, footers and style--%>
        <AlternatingRowStyle BackColor="#99CCFF" />
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle Font-Size="Medium" ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
</h1>

   <%-- the datasource tool uses SQL statements for the controls of the gridview--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountingConnectionString %>"
        SelectCommand="SELECT * FROM [employee]"
        DeleteCommand="DELETE FROM [employee] WHERE [employee_id] = @employee_id"
        InsertCommand="INSERT INTO [employee] ([first_name], [last_name], [email], [pass], [street], [city], [state], [phone]) 
        VALUES (@first_name, @last_name, @email, @pass, @street, @city, @state, @phone)" 
        UpdateCommand="UPDATE [employee] SET [first_name] = @first_name, [last_name] = @last_name, [email] = @email, 
        [pass] = @pass, [street] = @street, [city] = @city, [state] = @state, [phone] = @phone
        WHERE [employee_id] = @employee_id">

        <%--the parameters allows control of the gridview cells--%>
        <DeleteParameters>
            <asp:Parameter Name="employee_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="street" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="street" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="employee_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
     
    <div style="text-align:center">
      <asp:HyperLink runat="server" ID="AddEmployee" Text="Add New Employee" Font-Bold="true" 
           Font-Size="Large" align="center" NavigateUrl="~/newEmployeeForm.aspx" />
        </div>
    
</asp:Content>


