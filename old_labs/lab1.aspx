﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lab1.aspx.cs" Inherits="labs_lab1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
    <p>
        <asp:TextBox ID="tbInput" runat="server" ontextchanged="tbInput_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
            Text="Submit" />
    </p>
    <p>
        <asp:Label ID="lblDisplay" runat="server"></asp:Label>
    </p>
    </form>
</body>
</html>
