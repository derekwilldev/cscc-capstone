<%@ Page Title="New Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="newEmployee.Products" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <%--form for new product entry--%>
<div runat="server">
<p>Product Name:</p>
    <asp:TextBox ID="ProductNameBox" runat="server"/>
<p>Product Description:</p>
    <asp:TextBox ID="ProductDescriptionBox" runat="server"/>
<p>Product Features:</p>
    <asp:TextBox ID="ProductFeaturesBox" runat="server"/>
<p>Product Price:</p>
    <asp:TextBox ID="ProductPriceBox"  runat="server"/>
<p>Quanity to Add:</p>
    <asp:TextBox ID="QuanityBox"  runat="server"/>
</div>
 
    <%--buttons that add and clear the product textbox--%>
<asp:Button ID="AddProduct" Text="Add Product" runat="server" OnClick="AddProductEvent" />
<asp:Button ID="ClearProduct" Text="Clear Fields" runat="server" OnClick="ClearEvent" />
    <br />
    <br />
    
   <%-- the gridview table that pulls datafrom the database for the creation of rows and columns--%>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" HeaderStyle-HorizontalAlign="Center" DataKeyNames="prod_id" DataSourceID="SqlDataSource1" Width="100%">
        <AlternatingRowStyle BackColor="#99CCFF" />

        <%--code to create new columns--%>
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="prod_id"  HeaderText="Product ID" InsertVisible="False" ReadOnly="True" SortExpression="prod_id" />
            <asp:BoundField DataField="prod_name" HeaderText="Name" SortExpression="prod_name" />
            <asp:BoundField DataField="prod_desc"  HeaderText="Description" SortExpression="prod_desc" />
            <asp:BoundField DataField="prod_feature" HeaderText="Features" SortExpression="prod_feature" />
            <asp:BoundField DataField="prod_price"  HeaderText="Price" SortExpression="prod_price" />
            <asp:BoundField DataField="prod_in_stock" HeaderText="Quanity in Stock" SortExpression="prod_in_stock" />
        </Columns>

       <%-- style properties for the footer, header, and row styles--%>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" Font-Size="Medium" HorizontalAlign="Center" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

    <%--datasource used for the connection and the SQL statements for CRUD funtions--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountingConnectionString %>"
        DeleteCommand="DELETE FROM [product] WHERE [prod_id] = @prod_id"
        InsertCommand="INSERT INTO [product] ([prod_name], [prod_desc], [prod_feature], [prod_price], [prod_in_stock]) 
        VALUES (@prod_name, @prod_desc, @prod_feature, @prod_price, @prod_in_stock)" 
        SelectCommand="SELECT * FROM [product]" 
        UpdateCommand="UPDATE [product] SET [prod_name] = @prod_name, [prod_desc] = @prod_desc, [prod_feature] = @prod_feature, [prod_price] = @prod_price,
        [prod_in_stock] = @prod_in_stock WHERE [prod_id] = @prod_id">

       <%-- parameters used for the contol of data from the cells--%>
        <DeleteParameters>
            <asp:Parameter Name="prod_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="ProductNameBox" Name="prod_name" Type="String" />
            <asp:ControlParameter ControlID="ProductDescriptionBox" Name="prod_desc" Type="String" />
            <asp:ControlParameter ControlID="ProductFeaturesBox" Name="prod_feature" Type="String" />
            <asp:ControlParameter ControlID="ProductPriceBox" Name="prod_price" Type="Decimal" />
            <asp:ControlParameter ControlID="QuanityBox" Name="prod_in_stock" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="prod_name" Type="String" />
            <asp:Parameter Name="prod_desc" Type="String" />
            <asp:Parameter Name="prod_feature" Type="String" />
            <asp:Parameter Name="prod_price" Type="Decimal" />
            <asp:Parameter Name="prod_in_stock" Type="Int32" />
            <asp:Parameter Name="prod_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>