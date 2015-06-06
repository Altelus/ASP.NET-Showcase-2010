<%@ Page Title="Web Development" Language="C#" MasterPageFile="~/templates/admin.master" AutoEventWireup="true"
    CodeFile="web.aspx.cs" Inherits="portfolio_web" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <table border="0" cellpadding="10" align="center" bgcolor="lightgrey">
        <tr bgcolor="#507CD1">
            <th colspan="2">
                <font color="white">Web Development</font>
            </th>
        </tr>
        <tr bgcolor="white">
            <td>
                <asp:HyperLink ID="hlINT222" runat="server" NavigateUrl="~/portfolio/INT222/index.html">INT222</asp:HyperLink>
            </td>
            <td>
                One of my earlier websites, written only in HTML, CSS, and JavaScript
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="hlINT322" runat="server" NavigateUrl="http://zenit.senecac.on.ca/~int322_093b07/">INT322</asp:HyperLink>
            </td>
            <td>
                Website written in Perl.
                <br />
                Assignment 1 - Gaming Registration Form<br />
                Assignment 3 - Web Crawler hosted on a self installed apache webserver<br />
                Note: Apache webserver may be down, link to assignment 3 may not work<br />
                <br />
                CREDENTIALS<br />
                Login: int322_093b07<br />
                Password: 29709859
            </td>
        </tr>
        <tr bgcolor="white">
            <td>
                <asp:HyperLink ID="hlContentViewer" runat="server" NavigateUrl="~/public/contentviewer.aspx">ContentViewer</asp:HyperLink><br />
                <asp:HyperLink ID="hlSource" runat="server" NavigateUrl="~/portfolio/silverlight/ContentViewer.rar">Source code</asp:HyperLink>
            </td>
            <td>
                Silverlight media gallery - Database access through wcf web service<br />
                Written in Expression Blend 3 and Visual Studio 2008<br />
                <br />
                Content populated from: <br />
                <asp:HyperLink ID="hlImage1" runat="server" NavigateUrl="http://www.freeimages.co.uk/">Free Images</asp:HyperLink><br />
                <asp:HyperLink ID="hlImage2" runat="server" NavigateUrl="http://www.freefoto.com/index.jsp">Free Foto</asp:HyperLink><br />
                <asp:HyperLink ID="hlVideo" runat="server" NavigateUrl="http://www.jhepple.com/support/sample_movies1.htm">Jhepple</asp:HyperLink><br />
                <asp:HyperLink ID="hlAudio" runat="server" NavigateUrl="http://www.freeaudioclips.com/">Free Audio Clips</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
