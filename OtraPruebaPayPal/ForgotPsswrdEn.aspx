<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPsswrdEn.aspx.cs" Inherits="OtraPruebaPayPal.ForgotPsswrdEn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title></title>
</head>
<body>
    <form id="ForgotPsswrd" runat="server" data-sb-form-api-token="API_TOKEN">
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">Recuperar contraseña</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive #navbarResponsive1" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <svg class="svg-inline--fa fa-bars" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="bars" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="">
                        <path fill="currentColor" d="M0 96C0 78.33 14.33 64 32 64H416C433.7 64 448 78.33 448 96C448 113.7 433.7 128 416 128H32C14.33 128 0 113.7 0 96zM0 256C0 238.3 14.33 224 32 224H416C433.7 224 448 238.3 448 256C448 273.7 433.7 288 416 288H32C14.33 288 0 273.7 0 256zM416 448H32C14.33 448 0 433.7 0 416C0 398.3 14.33 384 32 384H416C433.7 384 448 398.3 448 416C448 433.7 433.7 448 416 448z"></path></svg><!-- <i class="fas fa-bars"></i> Font Awesome fontawesome.com -->
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-0"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="HomePage.aspx">Inicial Page</a></li>
                        <li class="nav-item mx-0 mx-lg-"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="RegisterEn.aspx">Sign Up</a></li>
                        <li class="nav-item mx-0 mx-lg-"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="LoginEn.aspx">Log In</a></li>
                    </ul>
                </div>

            </div>
        </nav>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="row justify-content-center">

            <div class="col-lg-7   col-xl-6">
                <h1>Olvidaste tu contraseña?</h1>
                <h5>Recuperala sin problema</h5>
                <div class="form-floating mb-3">
                    <asp:TextBox ID="Username" runat="server" class="form-control" type="text" placeholder="Enter your username" data-sb-validations="required"></asp:TextBox>
                    <label for="Username">Usuario</label>
                    <div class="invalid-feedback" data-sb-feedback="email:required">Se requiere el ususario</div>
                </div>


                <div class="d-none" id="submit"></div>
            </div>
            <div class="row justify-content-center">

                <asp:Button ID="frgtButton" runat="server" class="btn btn-primary btn-xl" type="submit" Text="Recuperar" OnClick="frgtButton_Click" />

            </div>
        </div>
        <!-- Submit Button-->
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
    </form>
</body>
</html>
