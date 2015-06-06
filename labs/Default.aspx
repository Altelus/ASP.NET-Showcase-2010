<%@ Page Title="Labs" Language="C#" MasterPageFile="~/templates/public.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="labs_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <table style="width: 482px; margin-right: 0px;" cellspacing="10">
        <tr>
            <th class="style1">
                Labs
            </th>
            <th>
                Description
            </th>
        </tr>
        <tr>
            <td class="style1">
                <asp:HyperLink ID="hlLab1" runat="server" NavigateUrl="~/labs/lab1.aspx">Lab 1</asp:HyperLink>
            </td>
            <td>
                Basic demontration of Web Server Controls (hyperlink, textbox, button, label)
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:HyperLink ID="hlLab2" runat="server" NavigateUrl="~/labs/lab2.aspx">Lab 2</asp:HyperLink>
            </td>
            <td>
                Demonstration of web server controls (list, validator) for Red Dog Bus Company
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:HyperLink ID="hlLab3" runat="server" NavigateUrl="~/labs/lab3.aspx">Lab 3</asp:HyperLink>
            </td>
            <td>
                Demontration of master pages, classes, email, and web user controls
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:HyperLink ID="hlLab4" runat="server" NavigateUrl="~/labs/lab4.aspx">Lab 4</asp:HyperLink>
            </td>
            <td>
                Demontration of file manipulation
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:HyperLink ID="hlLab5" runat="server" NavigateUrl="~/labs/lab5.aspx">Lab 5</asp:HyperLink>
            </td>
            <td>
                Demontration of OO data access
            </td>
        </tr>
    </table>
</asp:Content>
