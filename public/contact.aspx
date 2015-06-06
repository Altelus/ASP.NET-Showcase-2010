<%@ Page Language="C#" MasterPageFile="~/templates/public.master" AutoEventWireup="true"
    CodeFile="contact.aspx.cs" Inherits="contact" Title="Contact Me" %>

<%@ Register src="../email.ascx" tagname="email" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
<%--    <p id="TBI">
        To be Implemented</p>
    <p>
        Email Form and contact Information such as email, address, phone number, etc...</p>--%>
    <p>Contact me by Email:</p>
    <uc1:email ID="email1" runat="server" />
      
</asp:Content>
