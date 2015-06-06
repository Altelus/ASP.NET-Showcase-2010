<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SyntaxHighlighter.ascx.cs"
    Inherits="SyntaxHighlighter" %>
<asp:Panel ID="Panel1" Width="530" borderStyle="None" padding="0px"  runat="server">
    Show Markup in
    <asp:LinkButton ID="lbPMarkup" runat="server" OnClick="lbPMarkup_Click">Plain</asp:LinkButton>
    &nbsp;or
    <asp:LinkButton ID="lbMarkup" runat="server" OnClick="lbMarkup_Click">Color</asp:LinkButton>
    &nbsp;| Show C# in
    <asp:LinkButton ID="lbPCSharp" runat="server" OnClick="lbPCSharp_Click">Plain</asp:LinkButton>
    &nbsp;or
    <asp:LinkButton ID="lbCSharp" runat="server" OnClick="lbCSharp_Click">Color</asp:LinkButton>
    <br />
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    <br />
    <asp:Literal ID="Literal1" runat="server" Visible="False"></asp:Literal>
</asp:Panel>
