<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Twitter.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <center>        
        <asp:Label ID="lblNombreApellido" runat="server" CssClass="stl-nombre-perfil" />
        <br />
        <p class="stl-usuario">@<asp:Label ID="lblUsuario" runat="server" /></p>
        <br />
        <hr class="hr"/>
        <br />
        <div>
        <%foreach (Dominio.Twit item in lista)
            {%>
        <div class="stl-twit">           
            <div class="stl-nom-user">
                <p class="stl-nombre"><% = item.NombreApellido %></p>
                <p class="stl-usuario">@<% = item.Usuario %></p>
            </div>
            <p class="stl-contenido"><% = item.Contenido %></p>
            <div class="stl-interacciones">
                <div>
                    <center>                       
                        <asp:ImageButton ID="btnHearth" runat="server" ImageUrl="Img/corazon.png" CssClass="stl-hearth" />
                    </center>
                </div>
                <div>
                    <center>
                        <asp:ImageButton ID="btnTrash" runat="server" ImageUrl="Img/trash.png" CssClass="stl-trash" />
                    </center>
                </div>
            </div>
        </div>        
        <%} %>
    </div> 

    </center>
</asp:Content>
