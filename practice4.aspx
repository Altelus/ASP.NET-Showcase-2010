<%@ Page Language="C#" AutoEventWireup="true" CodeFile="practice4.aspx.cs" Inherits="practice4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#FFFBD6" 
            BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            Height="270px" onactivestepchanged="Wizard1_ActiveStepChanged" 
            onfinishbuttonclick="Wizard1_FinishButtonClick" Width="448px">
            <WizardSteps>
                <asp:WizardStep ID="stepStart" runat="server" title="Start">
                    Welcome to the Wizard
                </asp:WizardStep>
                <asp:WizardStep ID="stepName" runat="server" title="Name">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;First Name<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;Last Name<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </asp:WizardStep>
                <asp:WizardStep ID="stepUser" runat="server" Title="User Name">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;User ID
                </asp:WizardStep>
                <asp:WizardStep ID="stepEmail" runat="server" Title="Email">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    Email
                </asp:WizardStep>
                <asp:WizardStep ID="stepFinish" runat="server" Title="Finish">
                    Click finish to submit
                </asp:WizardStep>
            </WizardSteps>
            <SideBarButtonStyle ForeColor="White" />
            <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#990000" />
            <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
            <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" 
                HorizontalAlign="Center" />
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
