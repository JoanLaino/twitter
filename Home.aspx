﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Twitter.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:TextBox ID="txtTwit" runat="server" MaxLength="200" CssClass="text-twit"></asp:TextBox>

    <asp:Button ID="btnTwit" runat="server" Text="Twittear" class="btn-twittear" OnClick="btnTwit_Click" />

    <%--Hacer repeater que muestre todos los twits--%>
    <div>
        <%foreach (Dominio.Twit item in lista)
            {%>
        <div class="stl-twit">
            <p class="stl-contenido"><% = item.Contenido %></p>
            <div class="stl-interacciones">
                <div>
                    <center>
                        <%--Mejorar imagen de corazon.--%>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="Img/corazon.png" CssClass="stl-hearth"/>                     
                    </center>
                </div>
                <div>
                    <center>                        
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="Img/trash.png" CssClass="stl-trash" />
                    </center>
                </div>
            </div>
        </div>
        <%} %>
    </div>

</asp:Content>
