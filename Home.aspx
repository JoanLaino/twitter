<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Twitter.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:TextBox ID="txtTwit" runat="server" MaxLength="200" CssClass="text-twit"></asp:TextBox>

    <asp:Button ID="btnTwit" runat="server" Text="Twittear" class="btn-twittear" OnClick="btnTwit_Click" />

    <%--Hacer repeater que muestre todos los twits--%>
    <div>
        <%foreach (Dominio.Twit item in lista)
            {%>
        <div class="stl-twit">
            <h5><% = item.Contenido %></h5>
        </div>
        <%} %>
    </div>

</asp:Content>
