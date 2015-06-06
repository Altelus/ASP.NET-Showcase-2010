<%@ Page Title="Java Portfolio" Language="C#" MasterPageFile="~/templates/admin.master" AutoEventWireup="true" CodeFile="java.aspx.cs" Inherits="portfolio_java" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <table border="0" cellpadding="10" align="center" bgcolor="lightgrey">
        <tr bgcolor="#507CD1">
            <th colspan="2">
                <font color="white">Java Programming</font>
            </th>
        </tr>
        <tr bgcolor="white">
            <td>
                <asp:HyperLink ID="hlLife" runat="server" NavigateUrl="~/portfolio/java/life.aspx">Life Applet</asp:HyperLink>
            </td>
            <td>
                Java applet originally programmed in 2008, has been updated to fill the requirements of JAC444
                Namely, adding a time element and help menu 
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="hlOld_java" runat="server" NavigateUrl="~/portfolio/java/java.rar">Java.rar</asp:HyperLink>
            </td>
            <td>
                Old Java programs written in High school
            </td>
        </tr>
    </table>
</asp:Content>

