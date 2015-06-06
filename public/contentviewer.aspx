<%@ Page Language="C#" MasterPageFile="~/templates/public.master" AutoEventWireup="true"
    CodeFile="contentviewer.aspx.cs" Inherits="contentviewer" Title="Content Viewer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="headerContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <p id="TBI">
        Click on an image/video to view in more detail<br />
        Please wait for images to load before continuing<br />
        Note: Audio Clips have no image</p>
    <object width="500" height="600" data="data:application/x-silverlight-2," type="application/x-silverlight-2">
        <param name="source" value="../ClientBin/ContentViewer.xap" />
    </object>
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            <p>
                Silverlight Application Source and additional info located
                <asp:HyperLink ID="hlSource" runat="server" NavigateUrl="~/portfolio/web.aspx">here</asp:HyperLink>
            </p>
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
