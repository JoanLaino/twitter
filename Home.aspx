﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Twitter.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:TextBox ID="txtTwit" runat="server" MaxLength="200" CssClass="text-twit"></asp:TextBox>

    <asp:Button ID="btnTwit" runat="server" Text="Twittear" class="btn-twittear" OnClick="btnTwit_Click" />

    <%--Arreglar que aparezca bien el popup.--%>
    <div class="popup-confirmar-trash" id="popupTrash" runat="server">
        <center>
            <p class="txt-trash">¿Deseas eliminar este twit?</p>
        </center>
        <div class="stl-interacciones">
            <div>
                <center>
                    <asp:Button ID="btnSiTrash" runat="server" Text="Si" class="btn-si-trash" OnClick="btnSiTrash_Click" />
                </center>
            </div>
            <div>
                <center>
                    <asp:Button ID="btnNoTrash" runat="server" Text="No" class="btn-no-trash" OnClick="btnNoTrash_Click" />
                </center>
            </div>
        </div>
    </div>
     
  
    <div>
        <%foreach (Dominio.Twit item in lista)
            {%>
        <div class="stl-twit">
            <p class="stl-contenido"><% = item.Contenido %></p>
            <div class="stl-interacciones">
                <div>
                    <center>
                        <%--Mejorar imagen de corazon.--%>
                        <asp:ImageButton ID="btnHearth" runat="server" ImageUrl="Img/corazon.png" CssClass="stl-hearth" />
                    </center>
                </div>
                <div>
                    <center>
                        <asp:ImageButton ID="btnTrash" runat="server" ImageUrl="Img/trash.png" CssClass="stl-trash" OnClick="btnTrash_Click" />
                    </center>
                </div>
            </div>
        </div>
        <%} %>
    </div>
    
   <%-- <script type="text/javascript">
        function mostrarPopup() {

            document.getElementById("popupTrash").className += "trash-visible";
        }
        
    </script--%>

</asp:Content>
