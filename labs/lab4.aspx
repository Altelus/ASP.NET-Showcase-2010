<%@ Page Title="Lab 4" Language="C#" MasterPageFile="~/templates/labs.master" AutoEventWireup="true"
    CodeFile="lab4.aspx.cs" Inherits="labs_lab4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:FileUpload ID="FileUpload" runat="server" />
    &nbsp;<asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload"
        ValidationGroup="upload" />
    <asp:RegularExpressionValidator ID="revUpload" runat="server" ControlToValidate="FileUpload"
        Display="Dynamic" ErrorMessage="Only *.txt files may be uploaded!" ValidationExpression=".+\.txt$"
        ValidationGroup="upload"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="rfvUpload" runat="server" ControlToValidate="FileUpload"
        Display="Dynamic" ErrorMessage="Must specify file to upload!" ValidationGroup="upload"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblUpload" runat="server"></asp:Label>
    <br />
    <asp:Button ID="btnCopy" runat="server" Enabled="False" OnClick="btnCopy_Click" Text="Copy" />
    <asp:Label ID="lblCopy" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="Show List" />
    <asp:DropDownList ID="ddlFiles" runat="server" Enabled="False" AutoPostBack="True"
        OnSelectedIndexChanged="ddlFiles_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="lblView" runat="server"></asp:Label>
    <br />
    <asp:TextBox ID="tbFile" runat="server" Height="128px" TextMode="MultiLine" ReadOnly="True"
        Width="50%"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="tbSearch" runat="server" ValidationGroup="search" 
        Enabled="False"></asp:TextBox>
    &nbsp;
    <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search"
        ValidationGroup="search" Enabled="False" />
    <asp:RequiredFieldValidator ID="rfvSearch" runat="server" ControlToValidate="tbSearch"
        ErrorMessage="Field cannot be empty!" ValidationGroup="search"></asp:RequiredFieldValidator>
</asp:Content>
