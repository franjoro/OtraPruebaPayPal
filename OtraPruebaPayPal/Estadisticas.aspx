<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estadisticas.aspx.cs" Inherits="OtraPruebaPayPal.Estadisticas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Administradores - Turismore</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" type="image/x-icon" href="img/LogoTurismore.png" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
</head>
<body class="bodyprincipal">
    <form id="form1" runat="server">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">Turismore</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="Administradores.aspx">Regresar</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="Mapa.aspx">Mapa</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="AgregarUsuarios.aspx">AgregarUsuarios</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                <h2 class="page-section-heading text-center text-uppercase text-white">Estadisticas:</h2>
                <br />
                <p class="masthead-subheading font-weight-light mb-0">Personas que han visitado la página:</p><asp:TextBox ID="pagprincipal" runat="server" Text="" ReadOnly="true" class="tamaño"></asp:TextBox>
                <br />
                <p class="masthead-subheading font-weight-light mb-0">Personas que han sacado buena nota en el TravelQuiz:</p><asp:TextBox ID="notaquiz" runat="server" Text="" ReadOnly="true" class="tamaño"></asp:TextBox>
                <br />
                <p class="masthead-subheading font-weight-light mb-0">Personas que han escogido el plan estandar:</p><asp:TextBox ID="planestandar" runat="server" Text="38" ReadOnly="true" class="tamaño"></asp:TextBox>
                <br />
                <p class="masthead-subheading font-weight-light mb-0">Personas que han escogido el plan de pareja:</p><asp:TextBox ID="planpareja" runat="server" Text="22" ReadOnly="true" class="tamaño"></asp:TextBox>
                <br />
                <p class="masthead-subheading font-weight-light mb-0">Personas que han escogido el plan familiar:</p><asp:TextBox ID="planfamiliar" runat="server" Text="10" ReadOnly="true" class="tamaño"></asp:TextBox>
            </div>
        </header>
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright &copy; Turismore 2022</small></div>
        </div>
    </form>
</body>
</html>

