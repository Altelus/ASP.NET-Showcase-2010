<%@ Page Title="" Language="C#" MasterPageFile="~/templates/labs.master" AutoEventWireup="true"
    CodeFile="lab3.1.aspx.cs" Inherits="labs_lab3" %>

<%@ Register src="~/email.ascx" tagname="email" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:Panel ID="pnlGetInfo" runat="server" Height="300px">
            First Name:
            <asp:TextBox ID="tbFName" runat="server" ValidationGroup="seneca"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revFName" runat="server" ControlToValidate="tbFName"
                ErrorMessage="Must be alphabetic!" ValidationExpression="([a-zA-Z]*)" ValidationGroup="seneca"
                Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="rfFName" runat="server" ControlToValidate="tbFName"
                Display="Dynamic" ErrorMessage="Must not be blank!" ValidationGroup="seneca"></asp:RequiredFieldValidator>
            <br />
            <br />
            Last Name:
            <asp:TextBox ID="tbLName" runat="server" ValidationGroup="seneca"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revLName" runat="server" ControlToValidate="tbLName"
                ErrorMessage="Must be alphabetic!" ValidationExpression="([a-zA-Z]*)" ValidationGroup="seneca"
                Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="rfLName" runat="server" ControlToValidate="tbLName"
                Display="Dynamic" ErrorMessage="Must not be blank!" ValidationGroup="seneca"></asp:RequiredFieldValidator>
            <br />
            <br />
            Seneca ID:&nbsp;
            <asp:TextBox ID="tbSID" runat="server" ValidationGroup="seneca"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revSID" runat="server" ControlToValidate="tbSID"
                ErrorMessage="Must be alphanumeric!" ValidationExpression="([0-9a-zA-Z]*)" Display="Dynamic"
                ValidationGroup="seneca"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="rfSID" runat="server" ControlToValidate="tbSID" Display="Dynamic"
                ErrorMessage="Must not be blank!" ValidationGroup="seneca"></asp:RequiredFieldValidator>
            <br />
            <br />
            Student #:&nbsp;&nbsp;
            <asp:TextBox ID="tbSNum" runat="server" MaxLength="11" ValidationGroup="seneca"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revSNum" runat="server" ControlToValidate="tbSNum"
                ErrorMessage="Wrong format! (0nnnnnnnn or 0nn-nnn-nnn)" ValidationExpression="(0[0-9]{2}-?[0-9]{3}-?[0-9]{3})"
                ValidationGroup="seneca" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="rfSNum" runat="server" ControlToValidate="tbSNum"
                Display="Dynamic" ErrorMessage="Must not be blank!" ValidationGroup="seneca"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;Program:&nbsp;&nbsp;
            <asp:DropDownList ID="ddlCourse" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged">
                <asp:ListItem>CPD</asp:ListItem>
                <asp:ListItem>CPA</asp:ListItem>
                <asp:ListItem>DAD</asp:ListItem>
                <asp:ListItem>IFS</asp:ListItem>
                <asp:ListItem>LUX</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Semester:&nbsp;
            <asp:DropDownList ID="ddlSemester" runat="server" AutoPostBack="True" Enabled="False"
                OnSelectedIndexChanged="ddlSemester_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnContinue" runat="server" Enabled="False" OnClick="btnContinue_Click"
                Text="Continue" ValidationGroup="seneca" />
        </asp:Panel>
    </div>
    <asp:Panel ID="pnlDisplay" runat="server" Height="300px" Visible="False">
        <b>First Name:</b>
        <asp:Label ID="lblFName" runat="server"></asp:Label>
        <br />
        <b>Last Name:</b>
        <asp:Label ID="lblLName" runat="server"></asp:Label>
        <br />
        <b>S</b><b>eneca ID: </b>&nbsp;<asp:Label ID="lblSID" runat="server"></asp:Label>
        <br />
        <b>Student #:&nbsp; </b>&nbsp;<asp:Label ID="lblSNum" runat="server"></asp:Label>
        <br />
        <br />
        <b>Program of study:</b>
        <asp:Label ID="lblProgram" runat="server"></asp:Label>
        <br />
        <b>Semester:</b>
        <asp:Label ID="lblSemester" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnEmail" runat="server" OnClick="btnEmail_Click" Text="Email" />
    </asp:Panel>
    <asp:Panel ID="pnlMail" runat="server" Visible="False">
        <uc1:email ID="email1" runat="server" />
    </asp:Panel>
</asp:Content>
