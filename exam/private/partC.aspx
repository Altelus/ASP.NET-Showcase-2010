<%@ Page Title="" Language="C#" MasterPageFile="~/exam/private/exam.master" AutoEventWireup="true" CodeFile="partC.aspx.cs" Inherits="exam_private_partC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="4" BackColor="#EFF3FB" 
        BorderColor="#B5C7DE" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
        Height="327px" onfinishbuttonclick="Wizard1_FinishButtonClick" Width="533px">
        <StepStyle Font-Size="0.8em" ForeColor="#333333" />
        <WizardSteps>
            <asp:WizardStep ID="step1" runat="server" title="Step 1">
                Welcome to the INT422 Registration Wizard
            </asp:WizardStep>
            <asp:WizardStep ID="step2" runat="server" title="Step 2">
                <asp:Label ID="lblPolicy" runat="server" Text="Policy Holders"></asp:Label>
                <br />
                <asp:ListBox ID="lbPolicy" runat="server" DataSourceID="ObjectDataSource1" 
                    DataTextField="u_user_id" DataValueField="u_user_id"></asp:ListBox>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    DeleteMethod="Delete" InsertMethod="Insert" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="examTableAdapters.All_UsersTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_u_user_id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="u_user_id" Type="String" />
                        <asp:Parameter Name="u_password" Type="String" />
                        <asp:Parameter Name="l_name" Type="String" />
                        <asp:Parameter Name="f_name" Type="String" />
                        <asp:Parameter Name="licence_type" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="u_password" Type="String" />
                        <asp:Parameter Name="l_name" Type="String" />
                        <asp:Parameter Name="f_name" Type="String" />
                        <asp:Parameter Name="licence_type" Type="String" />
                        <asp:Parameter Name="Original_u_user_id" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
                <asp:Label ID="lblError1" runat="server" ForeColor="Red" 
                    Text="Error! A user must be selected." Visible="False"></asp:Label>
            </asp:WizardStep>
            <asp:WizardStep ID="step3" runat="server" Title="Step 3">
                <asp:Label ID="lblAuto" runat="server" Text="Automobile"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlAuto" runat="server" DataSourceID="ObjectDataSource2" 
                    DataTextField="model_id" DataValueField="model_id">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    DeleteMethod="Delete" InsertMethod="Insert" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="examTableAdapters.Vehicle_ModelTableAdapter" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_model_id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="model_id" Type="String" />
                        <asp:Parameter Name="vehicle_type" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="vehicle_type" Type="String" />
                        <asp:Parameter Name="Original_model_id" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
                <asp:Label ID="lblError2" runat="server" ForeColor="Red" Visible="False">Error! Automobile must be selected.</asp:Label>
            </asp:WizardStep>
            <asp:WizardStep ID="step4" runat="server" Title="Step 4">
                <asp:Label ID="lblColor" runat="server" Text="Color: "></asp:Label>
                <asp:TextBox ID="tbColor" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblError3" runat="server" ForeColor="Red" Visible="False">Error! You must enter a color.</asp:Label>
                <br />
                <br />
                <asp:Label ID="lblTrans" runat="server" Text="Transmission"></asp:Label>
                <asp:RadioButtonList ID="rblTrans" runat="server">
                    <asp:ListItem Selected="True" Value="auto">Automatic</asp:ListItem>
                    <asp:ListItem>Manual</asp:ListItem>
                </asp:RadioButtonList>
            </asp:WizardStep>
            <asp:WizardStep ID="stepFinal" runat="server" Title="Final Step">
                Click Finish to Complete<br />
                <br />
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </asp:WizardStep>
        </WizardSteps>
        <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
            ForeColor="White" />
        <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284E98" />
        <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
        <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
            HorizontalAlign="Center" />
    </asp:Wizard>
</asp:Content>

