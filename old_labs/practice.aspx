﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="practice.aspx.cs" Inherits="practice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="lblPractice" runat="server" ForeColor="Red"></asp:Label>
    <p>
        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
            Text="Submit" />
    </p>
    </form>
</body>
</html>
