<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Twitter.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <title>Twitter</title>

    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <!-- SweetAlert -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10/dist/sweetalert2.all.min.js"></script>

</head>
<body>
    <style>
        body {
            background-image: url("Img/fondo-2.png");
        }

    </style>
    <form id="form1" runat="server">
        <div>
            <center>
            <br />
          
            

                <div class="form-group">
                    <label for="exampleInputEmail1">Ingrese Email o Usuario</label>
                    <asp:TextBox ID="txtUser" type="text" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Email o Usuario" style="width: 200px;" />
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Contraseña</label>
                    <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" placeholder="Contraseña" style="width: 200px;" />
                </div>
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                    <label class="form-check-label" for="exampleCheck1">Recuerdame</label>
                </div>
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" class="btn btn-primary"/>                

              
            </center>
        </div>
        <asp:HiddenField ID="hfMessage" runat="server" />
    </form>
    <script>
        function ValidationPassword() {
            const hfMessage = $("[id$=hfMessage]");

            if (hfMessage.val()) {
                //Swal.fire({
                //    title: 'Contraseña',
                //    text: 'Intente nuevamente.',
                //    icon: 'error',
                //    confirmButtonText: 'Ok!'
                //})
                swal(hfMessage.val());
                hfMessage.val("");
            }            
        }

        $(() => {
            loadPage();
        })
    </script>
</body>
</html>
