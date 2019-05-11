<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Training.aspx.cs" Inherits="newEmployee.Training" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--the header--%>
    <div class="jumbotron">
        <h1>Learn how to use the new intranet</h1>
        <h2>Click on the links to watch new training videos</h2>
        <br />

        <p class="lead">"Learning to Lead. Leading to Learn"
            <br />
            -Mark Lerner</p>
    </div>

   <%-- the middle section with the training videos--%>
    <div class="row">
        <div class="col-md-4">
            <h2>
                <asp:HyperLink href="..\New Employee.mp4" runat="server">New Employee Enrollment</asp:HyperLink>
            </h2>

            <div>
                <video id="NewEmployeVideo" height="240" width="320" >
                    <source id="ss" src="..\New Employee.mp4" type='video/mp4'>
                </video>
            </div>

        </div>
        <div class="col-md-4">
            <h2>
                <asp:HyperLink href="..\General Journal.mp4" runat="server">New General Journal Entry</asp:HyperLink>
            </h2>

            <div>
                <video id="myVideo2" height="240" width="320"  >
                    <source id="ss2" src="..\General Journal.mp4" type='video/mp4'>
                </video>
            </div>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:HyperLink href="..\New Product.mp4" runat="server">New Product Entry</asp:HyperLink>
            </h2>

            <div>
                <video id="myVideo3" height="240" width="320" >
                    <source id="ss3" src="..\New Product.mp4" type='video/mp4'>
                </video>
            </div>
        </div>
    </div>

</asp:Content>
