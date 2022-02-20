<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Twitter.Home" %>
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
            <%--<asp:Label ID="lblID" runat="server" Text='<%#Eval("ID") %>' />--%>
            <div class="stl-nom-user">
                <p class="stl-nombre"><% = item.NombreApellido %></p>
                <p class="stl-usuario">@<% = item.Usuario %></p>
            </div>
            <p class="stl-contenido"><% = item.Contenido %></p>
            <div class="stl-interacciones">
                <div>
                    <center>                       
                        <asp:ImageButton ID="btnHearth" runat="server" ImageUrl="Img/corazon.png" CssClass="stl-hearth" OnClick="btnHearth_Click" />
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

    
    <%--<asp:ListView ID="ListView1" runat="server"></asp:ListView>--%>
    

</asp:Content>
