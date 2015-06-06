<%@ Page Title="Lab 5" Language="C#" MasterPageFile="~/templates/labs.master" AutoEventWireup="true"
    CodeFile="lab5.aspx.cs" Inherits="labs_lab5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="artist_id"
        DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="artist_id" HeaderText="artist_id" ReadOnly="True" SortExpression="artist_id" />
            <asp:BoundField DataField="stage_name" HeaderText="stage_name" SortExpression="stage_name" />
            <asp:BoundField DataField="l_name" HeaderText="l_name" SortExpression="l_name" />
            <asp:BoundField DataField="f_name" HeaderText="f_name" SortExpression="f_name" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete"
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
        TypeName="PracticeTableAdapters.ArtistsTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_artist_id" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="stage_name" Type="String" />
            <asp:Parameter Name="l_name" Type="String" />
            <asp:Parameter Name="f_name" Type="String" />
            <asp:Parameter Name="Original_artist_id" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="artist_id" Type="String" />
            <asp:Parameter Name="stage_name" Type="String" />
            <asp:Parameter Name="l_name" Type="String" />
            <asp:Parameter Name="f_name" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
</asp:Content>
