<%@ Page Title="Upload Content to DB" Language="C#" MasterPageFile="~/templates/admin.master" AutoEventWireup="true"
    CodeFile="UploadToDB.aspx.cs" Inherits="admin_imageUploadDB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <div>
        Enter or select file to upload.<br />
        <br />
        <asp:FileUpload ID="fupPics" runat="server" />
        <br />
        <br />
        Title or Brief Description of the File.<br />
        <asp:TextBox ID="tbTitle" runat="server" Width="80%"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
        &nbsp;&nbsp;
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </div>
</asp:Content>
