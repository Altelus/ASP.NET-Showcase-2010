<%@ Page Language="C#" MasterPageFile="~/templates/admin.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="portfolio_Default" Title="Work Portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <p>
        Link to my 
        <asp:HyperLink ID="hlResume" runat="server" NavigateUrl="~/portfolio/resume.pdf">Resume</asp:HyperLink>
       <br />
       note: This resume was submitted for EAC397 Job Package Assignment
    </p>
    <table border="0" cellpadding="10" align="center" bgcolor="lightgrey">
        <tr bgcolor="#507CD1">
            <th colspan="2">
                <font color="white">Work Portfolio</font>
            </th>
        </tr>
        <tr bgcolor="white">
            <td>
                <asp:HyperLink ID="hlJava" runat="server" NavigateUrl="~/portfolio/java.aspx">Java Programming</asp:HyperLink>
            </td>
            <td>
                A listing of all my past java programming projects from 2008 to present
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="hlWeb" runat="server" NavigateUrl="~/portfolio/web.aspx">Web Development</asp:HyperLink>
            </td>
            <td>
                Links to past web development projects. From standard html, CSS $ JavaScript to
                Perl
            </td>
        </tr>
        <tr bgcolor="white">
            <td>
                <asp:HyperLink ID="hlCpp" runat="server" NavigateUrl="~/portfolio/cpp.aspx">C++ Programming</asp:HyperLink>
            </td>
            <td>
                A listing of all my past java programming projects from 2008 to present
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="hlDocs" runat="server" NavigateUrl="~/portfolio/docs.aspx">Documents</asp:HyperLink>
            </td>
            <td>
                Links to past web development projects. From standard html, CSS $ JavaScript to
                Perl
            </td>
        </tr>
    </table>
</asp:Content>
