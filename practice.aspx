<%@ Page Language="C#" AutoEventWireup="true" CodeFile="practice.aspx.cs" Inherits="practice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ItemID" />
                <asp:BoundField DataField="DateTimeStamp" HeaderText="DateTimeStamp" 
                    SortExpression="DateTimeStamp" />
                <asp:BoundField DataField="MIMEType" HeaderText="MIMEType" 
                    SortExpression="MIMEType" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:ImageField DataAlternateTextField="Title" 
                    DataAlternateTextFormatString="{0}" DataImageUrlField="ItemID" 
                    DataImageUrlFormatString="http://warp.senecac.on.ca/int422_101b17/practice2.aspx?itemid={0}">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetData" TypeName="examTableAdapters.examImagesTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="DateTimeStamp" Type="DateTime" />
                <asp:Parameter Name="MIMEType" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Content" Type="Object" />
            </InsertParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
