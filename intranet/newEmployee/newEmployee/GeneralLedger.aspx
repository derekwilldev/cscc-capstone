<%@ Page Title="General Ledger" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="GeneralLedger.aspx.cs" Inherits="newEmployee.GeneralLedger" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <%-- provides a quick link bewteen the ledger and journal--%>
<h1>General Ledger|<asp:HyperLink runat="server" NavigateUrl="~/GenJournal.aspx"> General Journal </asp:HyperLink>      </h1>

   <%-- The beginning to the gridview table used for the General Legder--%>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="General_Ledger_ID"
        DataSourceID="SqlDataSource1" Font-Size="Medium" Width="100%">
        <AlternatingRowStyle BackColor="#99CCFF" />

       <%-- defines the columns for the gridview table--%>
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="General_Ledger_ID" HeaderText="Account Number" InsertVisible="False" ReadOnly="True" SortExpression="General_Ledger_ID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Credit" HeaderText="Credit" SortExpression="Credit" />
            <asp:BoundField DataField="Debit" HeaderText="Debit" SortExpression="Debit" />
            <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
        </Columns>

        <%--style properties for the footer, header and row styles--%>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle Font-Size="Medium" ForeColor="#000066" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

    <%--that is used for enter data into the gridview--%>
                <table border="1" style="border-collapse: collapse; width:100%; background-color: #006699; color:white; font:medium" >

                <tr>
                    <td >
                        <asp:Button ID="btnAdd" runat="server" Text="Add" style="width:115px; color:black" OnClick="BtnAdd_Click" />
                    </td>

                    <td >
                        <asp:Button ID="btnClear" runat="server" Text="Clear" style="width:200px; color:black" OnClick="btnClear_Click" />
                     <br />                   
                    </td>

                    <td >
                        Date: <br />
                        <asp:TextBox ID="txtDate" runat="server" Width="233" ForeColor="Black"  />
                    </td>

                    <td >
                        Description: <br />
                        <asp:TextBox ID="txtDescription" runat="server" Width="400" ForeColor="Black"/>
                    </td>


                    <td >
                        Credit: <br />
                        <asp:TextBox ID="txtCredit" runat="server" Width="80" ForeColor="Black" />
                    </td>

                    <td >
                        Debit: <br />
                        <asp:TextBox ID="txtDebit" runat="server" Width="80" ForeColor="Black" />
                    </td>

                    <td >
                        Balance: <br />
                        <asp:TextBox ID="txtBalance" runat="server" Width="85" ForeColor="Black" />
                    </td>
                </tr>
            </table>

    <%--the data source that the gridview table uses for the connection, gridview pulls the data from the database to create the table--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountingConnectionString %>" DeleteCommand="DELETE FROM [General_Ledger] WHERE [General_Ledger_ID] = @General_Ledger_ID" InsertCommand="INSERT INTO [General_Ledger] ([Date], [Balance], [Credit], [Debit], [Description]) VALUES (@Date, @Balance, @Credit, @Debit, @Description)" SelectCommand="SELECT * FROM [General_Ledger]" UpdateCommand="UPDATE [General_Ledger] SET [Date] = @Date, [Balance] = @Balance, [Credit] = @Credit, [Debit] = @Debit, [Description] = @Description WHERE [General_Ledger_ID] = @General_Ledger_ID">
        
       <%-- the parameters allow the gridview to control the individual cells of the gridview table for CRUD--%>
        <DeleteParameters>
            <asp:Parameter Name="General_Ledger_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtDate" Name="Date" Type="DateTime" />
            <asp:ControlParameter ControlID="txtBalance" Name="Balance" Type="Single" />
            <asp:ControlParameter ControlID="txtCredit" Name="Credit" Type="Single" />
            <asp:ControlParameter ControlID="txtDebit" Name="Debit" Type="Single" />
            <asp:ControlParameter ControlID="txtDescription" Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="Balance" Type="Single" />
            <asp:Parameter Name="Credit" Type="Single" />
            <asp:Parameter Name="Debit" Type="Single" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="General_Ledger_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
