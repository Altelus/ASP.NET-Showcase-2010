<%@ Page Language="C#" AutoEventWireup="true" CodeFile="practice3.aspx.cs" Inherits="practice3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="artist_id"
            DataSourceID="ObjectDataSource1">
            <EditItemTemplate>
                artist_id:
                <asp:Label ID="artist_idLabel1" runat="server" Text='<%# Eval("artist_id") %>' />
                <br />
                stage_name:
                <asp:TextBox ID="stage_nameTextBox" runat="server" Text='<%# Bind("stage_name") %>' />
                <br />
                l_name:
                <asp:TextBox ID="l_nameTextBox" runat="server" Text='<%# Bind("l_name") %>' />
                <br />
                f_name:
                <asp:TextBox ID="f_nameTextBox" runat="server" Text='<%# Bind("f_name") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                    CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                artist_id:
                <asp:TextBox ID="artist_idTextBox" runat="server" Text='<%# Bind("artist_id") %>'
                    ValidationGroup="artist id" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="artist_idTextBox"
                    Display="Dynamic" ErrorMessage="Artist ID must be Unique!" OnServerValidate="CustomValidator1_ServerValidate"
                    ValidationGroup="artist id"></asp:CustomValidator>
                <br />
                stage_name:
                <asp:TextBox ID="stage_nameTextBox" runat="server" Text='<%# Bind("stage_name") %>' />
                <br />
                l_name:
                <asp:TextBox ID="l_nameTextBox" runat="server" Text='<%# Bind("l_name") %>' />
                <br />
                f_name:
                <asp:TextBox ID="f_nameTextBox" runat="server" Text='<%# Bind("f_name") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert" ValidationGroup="artist id" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                    CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Artist ID:
                <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                <br />
                Stage Name:
                <asp:Label ID="stage_nameLabel" runat="server" Text='<%# Bind("stage_name") %>' />
                <br />
                Last Name:
                <asp:Label ID="l_nameLabel" runat="server" Text='<%# Bind("l_name") %>' />
                <br />
                First Name:
                <asp:Label ID="f_nameLabel" runat="server" Text='<%# Bind("f_name") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New" />
            </ItemTemplate>
        </asp:FormView>
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
    </div>
    </form>
</body>
</html>
