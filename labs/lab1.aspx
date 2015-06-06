<%@ Page Title="Lab 1" Language="C#" MasterPageFile="~/templates/labs.master" AutoEventWireup="true"
    CodeFile="lab1.aspx.cs" Inherits="labs_lab1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
    <p>
        <asp:TextBox ID="tbInput" runat="server" OnTextChanged="tbInput_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    </p>
    <p>
        <asp:Label ID="lblDisplay" runat="server"></asp:Label>
    </p>
</asp:Content>
