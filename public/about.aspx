<%@ Page Language="C#" MasterPageFile="~/templates/public.master" AutoEventWireup="true"
    CodeFile="about.aspx.cs" Inherits="public_about" Title="About Me" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    <div>
        <h1>
            Geoffrey Mok</h1>
        <p>
            One of the most interesting experiences I had in Seneca College would be the open
            source environment in OOP344.</p>
        <p>
            In this course I expect to achieve an understanding of programming with ASP.NET
            and C#
        </p>
        <asp:Image ID="imgSelf" runat="server" Height="200px" Width="200px" AlternateText="My Picture"
            ImageUrl="~/assets/images/mypicture.jpg" BorderStyle="Solid" BorderWidth="2px" />
        <asp:RadioButtonList ID="rblCourses" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblCourses_SelectedIndexChanged">
            <asp:ListItem Value="Petri">DCN455 - Data Communications Networks </asp:ListItem>
            <asp:ListItem Value="Czegel">SYS466 - Analysis and Design using OO Models</asp:ListItem>
            <asp:ListItem Value="Liu">JAC444 - Introduction to Java for C++ Programmers</asp:ListItem>
            <asp:ListItem Value="Potter">EAC397 - Business Report Writing</asp:ListItem>
            <asp:ListItem Value="Tipson">INT422 - Internet III - Web Programming 
            on Windows </asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="lblCourses" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
    </div>
</asp:Content>
