<%@ Page Title="Cpp Portfolio" Language="C#" MasterPageFile="~/templates/admin.master" AutoEventWireup="true"
    CodeFile="cpp.aspx.cs" Inherits="portfolio_cpp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <table border="0" cellpadding="10" align="center" bgcolor="lightgrey">
        <tr bgcolor="#507CD1">
            <th colspan="2">
                <font color="white">C++ Programming</font>
            </th>
        </tr>
        <tr bgcolor="white">
            <td>
                <asp:HyperLink ID="hlIPC144" runat="server" NavigateUrl="~/portfolio/cpp/IPC144D.rar">IPC444</asp:HyperLink>
            </td>
            <td>
                Object Oriented Programming - Semester 1
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="hlOOP244" runat="server" NavigateUrl="~/portfolio/cpp/OOP244E.rar">OOP244</asp:HyperLink>
            </td>
            <td>
                Object Oriented Programming - Semester 2
            </td>
        </tr>
        <tr bgcolor="white">
            <td>
                <asp:HyperLink ID="hlOOP344" runat="server" NavigateUrl="~/portfolio/cpp/OOP344B.rar">OOP344</asp:HyperLink>
            </td>
            <td>
                Object Oriented Programming - Semester 3
            </td>
        </tr>
    </table>
</asp:Content>
