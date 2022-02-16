<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Twitter.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <br />
            <label>User</label>
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <br />
            <label>Contraseña</label>
            <asp:TextBox ID="txtPassword" runat="server" type="password" placeholder="*******"></asp:TextBox>
            <br />
            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />

              <%--Segundo 29:36--%>
            </center>
        </div>
    </form>
</body>
</html>
