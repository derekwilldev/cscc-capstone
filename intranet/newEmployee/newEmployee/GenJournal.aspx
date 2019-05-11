 <%@ Page Title= "General Journal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GenJournal.aspx.cs" Inherits="newEmployee.GenJournal" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <%--  provides a quick navigation link bewteen the ledger and journal--%>
<h1><asp:HyperLink runat="server" NavigateUrl="~/GeneralLedger.aspx">General Ledger</asp:HyperLink>| General Journal   </h1>
    
   <%-- uses a gridview table that pulls data from the database to define table--%>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"
        Width="100%" DataSourceID="SqlDataSource1" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="General_Ledger_ID">
    
        <%--defines the columns--%>
        <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="General_Ledger_ID" HeaderText="Ledger Account Number" InsertVisible="False" ReadOnly="True" SortExpression="General_Ledger_ID" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="Credit" HeaderText="Credit" SortExpression="Credit" />
        <asp:BoundField DataField="Debit" HeaderText="Debit" SortExpression="Debit" />
        <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
    </Columns>

      <%--  table properties --%>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <AlternatingRowStyle BackColor="#99CCFF" BorderStyle="None" />
    <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>

    <%--this table is used to enter data into the gridview table--%>
            <table border="1" style="border-collapse: collapse; width:100%; background-color: #006699; color:white; font:medium" >

                <tr>
                    <td >
                        <asp:Button ID="btnAdd" runat="server" Text="Add" style="width:115px; color:black" OnClick="BtnAdd_Click" />
                    </td>

                    <td style="width:270px" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />                   
                    </td>

                    <td >
                        Description: <br />
                        <asp:TextBox ID="txtDescription" runat="server" Width="395" ForeColor="Black"/>
                    </td>

                    <td >
                        Date: <br />
                        <asp:TextBox ID="txtDate" runat="server" Width="233" ForeColor="Black"  />
                    </td>

                    <td >
                        Credit: <br />
                        <asp:TextBox ID="txtCredit" runat="server" Width="75" ForeColor="Black" />
                    </td>

                    <td >
                        Debit: <br />
                        <asp:TextBox ID="txtDebit" runat="server" Width="75" ForeColor="Black" />
                    </td>

                    <td >
                        Balance: <br />
                        <asp:TextBox ID="txtBalance" runat="server" Width="85" ForeColor="Black" />
                    </td>
                </tr>
            </table>

    <%--the datasource is used for the connection and the gridview table, defines CRUD funtions--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AccountingConnectionString %>"
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [General_Ledger]" DeleteCommand="DELETE FROM [General_Ledger]
        WHERE [General_Ledger_ID] = @original_General_Ledger_ID" 
        InsertCommand="INSERT INTO [General_Ledger] ([Date], [Balance], [Credit], [Debit], [Description])
        VALUES (@Date, @Balance, @Credit, @Debit, @Description)" 
        UpdateCommand="UPDATE [General_Ledger] SET [Date] = @Date, [Balance] = @Balance, [Credit] = @Credit, [Debit] = @Debit, 
        [Description] = @Description 
        WHERE [General_Ledger_ID] = @original_General_Ledger_ID">

        <%--the parameters allows controls for the data --%>
        <DeleteParameters>
            <asp:Parameter Name="original_General_Ledger_ID" Type="Int32" />
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
            <asp:Parameter Name="original_General_Ledger_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>