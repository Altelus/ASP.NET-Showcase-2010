<%@ Page Title="Document Portfolio" Language="C#" MasterPageFile="~/templates/admin.master" AutoEventWireup="true" CodeFile="docs.aspx.cs" Inherits="portfolio_docs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" Runat="Server">
    <table border="0" cellpadding="10" align="center" bgcolor="lightgrey">
        <tr bgcolor="#507CD1">
            <th colspan="2">
                <font color="white">Documents</font>
            </th>
        </tr>
        <tr bgcolor="white">
            <td>
                <asp:HyperLink ID="hlJobPackage" runat="server" NavigateUrl="~/portfolio/docs/EAC397YC_JobPackage.rar">Job Package</asp:HyperLink>
            </td>
            <td>
                EAC397- Job Package Assignment (Cover Letter + resume)
            </td>
        </tr>
<%--        <tr>
            <td>
                
            </td>
            <td>
            
            </td>
        </tr>--%>
    </table>
</asp:Content>

