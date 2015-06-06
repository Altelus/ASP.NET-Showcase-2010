<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lab2.aspx.cs" Inherits="labs_lab2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
      <h1 style="font-family: 'Lucida Sans'; font-weight: bold; color: #CC0000;">Red Dog Bus Company</h1>
      <hr />
      <h3 style="color: #0000FF">Ticket Purchase Transaction</h3>
    </div>
    <table style="width:50%;">
        <tr align = left>
            <th><font style="text-decoration: underline;">Bus Route</font></th>
            <th><font style="text-decoration: underline;">Ticket Cost</font></th>
            <th><font style="text-decoration: underline;">Available Seats</font></th>
        </tr>
        <tr>
            <td>Route A - Toronto to Barrie</td>
            <td>$ <asp:Label ID="lblACost" runat="server" Text="21.65"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblASeat" runat="server" Text="42"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Route B - Toronto to London</td>
            <td>$ <asp:Label ID="lblBCost" runat="server" Text="34.20"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblBSeat" runat="server" Text="42"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Route C - Toronto to Montreal</td>
            <td>$ <asp:Label ID="lblCCost" runat="server" Text="90.70"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblCSeat" runat="server" Text="42"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Route D - Toronto to Halifax</td>
            <td>$ <asp:Label ID="lblDCost" runat="server" Text="153.00"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDSeat" runat="server" Text="42"></asp:Label>
            </td>
        </tr>
    </table>
    <h4>Step 1: Select the desired bus route
            </h4>
    <p>
         <asp:DropDownList ID="ddlRoute" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="a">Route A - Toronto to Barrie</asp:ListItem>
        <asp:ListItem Value="b">Route B - Toronto to London</asp:ListItem>
        <asp:ListItem Value="c">Route C - Toronto to Montreal</asp:ListItem>
        <asp:ListItem Value="d">Route D - Toronto to Halifax</asp:ListItem>
    </asp:DropDownList>
            </p>
    <h4>Step 2: Enter number of tickets</h4>
    <p>
        <asp:TextBox ID="tbTicket" runat="server" ValidationGroup="ticket" 
            MaxLength="2"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvTicket" runat="server" 
            ControlToValidate="tbTicket" Display="Dynamic" 
            ErrorMessage="Field cannot be blank!" ValidationGroup="ticket"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvTicketMin" runat="server" ControlToValidate="tbTicket" 
            Display="Dynamic" ErrorMessage="Must be greater than 0!" MinimumValue="1" 
            ValidationGroup="ticket" MaximumValue="99" Type="Integer"></asp:RangeValidator>
            
        &nbsp;<asp:RangeValidator ID="rvTicketMax" runat="server" 
            ErrorMessage="Value must be in range of available seats!" 
            ControlToValidate="tbTicket" Display="Dynamic" MinimumValue="0" Type="Integer" 
            ValidationGroup="ticket"></asp:RangeValidator>
    </p>
    <h4>
        Step 3: Confirm Purchase</h4>
        &nbsp;<asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        style="height: 26px" Text="Submit" ValidationGroup="ticket" />
    
    <h4 style="color: #0000FF">Transaction Results</h4>
        <asp:Label ID="lblResult" runat="server" ForeColor="#00CC00"></asp:Label>
        <h4 style="color: #0000FF">List of Transactions</h4>
        <asp:Label ID="lblHistory" runat="server" Font-Italic="False" 
            ForeColor="#0033CC"></asp:Label>
    </form>
    
    </body>
</html>
