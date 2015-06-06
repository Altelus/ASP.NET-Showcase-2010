<%@ Page Title="Browse Database" Language="C#" MasterPageFile="~/templates/public.master" AutoEventWireup="true"
    CodeFile="DBBrowse.aspx.cs" Inherits="public_imageBrowse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        DataKeyNames="ItemID" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="False" ReadOnly="True"
                SortExpression="ItemID" />
            <asp:BoundField DataField="DateTimeStamp" HeaderText="DateTimeStamp" SortExpression="DateTimeStamp" />
            <asp:BoundField DataField="MIMEType" HeaderText="MIMEType" SortExpression="MIMEType" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:ImageField DataAlternateTextField="Title" DataAlternateTextFormatString="{0}"
                DataImageUrlField="ItemID" DataImageUrlFormatString="http://warp.senecac.on.ca/int422_101b17/public/returnImage.aspx?itemid={0}"
                HeaderText="Images">
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert"
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="digitalTableAdapters.DigitalContentTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="ItemID" Type="Int32" />
            <asp:Parameter Name="DateTimeStamp" Type="DateTime" />
            <asp:Parameter Name="MIMEType" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Content" Type="Object" />
        </InsertParameters>
    </asp:ObjectDataSource>
</asp:Content>
