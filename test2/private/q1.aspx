<%@ Page Language="C#" MasterPageFile="~/test2/private/test2.master" AutoEventWireup="true" CodeFile="q1.aspx.cs" Inherits="test2_private_q1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListBox ID="lbFullname" runat="server" AutoPostBack="True" 
        DataSourceID="ObjectDataSource1" DataTextField="Fullname" 
        DataValueField="u_user_id" style="margin-right: 1px"></asp:ListBox>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PracticeTableAdapters.user_fullTableAdapter">
    </asp:ObjectDataSource>
    <asp:BulletedList ID="blStageName" runat="server" 
        DataSourceID="ObjectDataSource2" DataTextField="stage_name" 
        DataValueField="stage_name">
    </asp:BulletedList>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="PracticeTableAdapters.user_artistsTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="lbFullname" DefaultValue="none" 
                Name="u_user_id" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

