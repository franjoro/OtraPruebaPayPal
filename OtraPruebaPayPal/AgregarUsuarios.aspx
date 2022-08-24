<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarUsuarios.aspx.cs" Inherits="OtraPruebaPayPal.AgregarUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet" />
    <link href="EstilosCss/EstilosStorage.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.js"></script>
    <script src="SweetAlert/sweetalert2.all.min.js"></script>

    <title>Registro</title>
</head>
<body>

    <script type="text/javascript">
        function validar(e) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            patron = /[A-Za-z\s]/; // 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>
    <script type="text/javascript">
        function numeros(nu) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            ppatron = /\d/; // Solo acepta números// 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>

    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                regexp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 46) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false
        }
    </script>


    <form runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <a class="navbar-brand" href="#">Turismore</a>
            <asp:Button ID="btnInicio" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btnInicio_Click" />
            <asp:Button ID="btnEditar" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Editar Usuarios" OnClick="btnEditar_Click" />
            <asp:Button ID="btnEliminar" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Eliminar Usuarios" OnClick="btnEliminar_Click" />
        </nav>
        <div class="my-content">
            <div class="container">
                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Agregar</h1>
                        <div class="myform-top">
                        </div>
                        <div class="myform-bottom">
                            <form role="form" action="" method="post" class="">
                                <div class="form-group">
                                    <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre..." type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Username..." type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Contraseña..." type="text" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtCorreo" runat="server" placeholder="Correo..." type="text" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtCargo" runat="server" placeholder="Cargo..." type="text" class="form-control" />
                                </div>
                                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="mybtn" OnClick="btnAgregar_Click"></asp:Button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            
            <asp:GridView ID="gvdlista" runat="server" AutoGenerateColumns="False" Width="1004px" Height="80px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" runat="server" />
                    <asp:BoundField DataField="nombre_usuario" HeaderText="Nombre" runat="server" />
                    <asp:BoundField DataField="username" HeaderText="Username" runat="server" />
                    <asp:BoundField DataField="correo" HeaderText="Correo" runat="server" />
                    <asp:BoundField DataField="password" HeaderText="Contraseña" runat="server" />
                    <asp:BoundField DataField="cargo" HeaderText="Cargo" runat="server" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>