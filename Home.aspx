<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Twitter.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:TextBox ID="txtTwit" runat="server" MaxLength="200" CssClass="text-twit"></asp:TextBox>

    <asp:Button ID="btnTwit" runat="server" Text="Twittear" class="btn-twittear" OnClick="btnTwit_Click" />

</asp:Content>
