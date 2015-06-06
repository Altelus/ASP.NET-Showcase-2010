<%@ Control Language="C#" AutoEventWireup="true" CodeFile="email.ascx.cs" Inherits="labs_email" %>
<p>
    To:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbTO" runat="server" ValidationGroup="mail" Width="280px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revTO" runat="server" ControlToValidate="tbTO"
        Display="Dynamic" EnableTheming="False" ErrorMessage="Invalid email address!"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="mail"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="rfvTO" runat="server" ControlToValidate="tbTO" Display="Dynamic"
        ErrorMessage="Must not be left blank!" ValidationGroup="mail"></asp:RequiredFieldValidator>
</p>
<p>
    From:&nbsp;&nbsp; &nbsp;     <asp:TextBox ID="tbFROM" runat="server" ValidationGroup="mail" Width="280px"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revFROM" runat="server" ControlToValidate="tbFROM"
        Display="Dynamic" EnableTheming="False" ErrorMessage="Invalid email address!"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="mail"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="rfvFROM" runat="server" ControlToValidate="tbFROM"
        Display="Dynamic" ErrorMessage="Must not be left blank!" ValidationGroup="mail"></asp:RequiredFieldValidator>
</p>
<p>
    Subject:
    <asp:TextBox ID="tbSubject" runat="server" ValidationGroup="mail" Width="280px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="tbSubject"
        Display="Dynamic" ErrorMessage="Must not be left blank!" ValidationGroup="mail"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:TextBox ID="tbMessage" runat="server" Height="226px" ValidationGroup="mail"
        Width="375px" TextMode="MultiLine"></asp:TextBox>
</p>
<p>
    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="tbMessage"
        Display="Dynamic" ErrorMessage="Must not be left blank!" ValidationGroup="mail"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="lblError" runat="server" Text="Error! Email not sent!" 
        Visible="False" ForeColor="Red"></asp:Label>
</p>
<asp:Button ID="btnSend" runat="server" Text="Send" ValidationGroup="mail" 
    onclick="btnSend_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnReturn" runat="server" CausesValidation="False" 
    Text="Return" onclick="btnReturn_Click" />
