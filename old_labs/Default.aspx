<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <style type="text/css">
        .style1
        {
            width: 348px;
        }
        .style2
        {
            width: 59px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Geoffrey Mok</h1>
        <asp:HyperLink ID="hlAboutme" runat="server" NavigateUrl="~/labs/aboutme.aspx">About me</asp:HyperLink>
        <br />
        <br />
        
        <table style="width: 438px; margin-right: 0px;" cellspacing="10">
            <tr>
                <th class="style2">
                    Labs</th>
                <th class="style1">
                    Description</th>
            </tr>
            <tr>
                <td class="style2">
                    <asp:HyperLink ID="hlLab1" runat="server" NavigateUrl="~/labs/lab1.aspx">Lab 1</asp:HyperLink>
                </td>
                <td class="style1">
                    Basic demontration of Web Server Controls (hyperlink, textbox, button, label)</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:HyperLink ID="hlLab2" runat="server" NavigateUrl="~/labs/lab2.aspx">Lab 2</asp:HyperLink>
                </td>
                <td class="style1">
                    Demonstration of web server controls (list, validator) for Red Dog Bus Company</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:HyperLink ID="hlLab3" runat="server" NavigateUrl="~/labs/lab3.aspx">Lab 3</asp:HyperLink>
                </td>
                <td class="style1">
                    Demontration of master pages, classes, email, and web user controls</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:HyperLink ID="hlLab4" runat="server" NavigateUrl="~/labs/lab4.aspx">Lab 4</asp:HyperLink>
                </td>
                <td class="style1">
                    Demontration of file manipulation</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:HyperLink ID="hlLab5" runat="server" NavigateUrl="~/labs/lab5.aspx">Lab 5</asp:HyperLink>
                </td>
                <td class="style1">
                    Demontration of OO data access</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
