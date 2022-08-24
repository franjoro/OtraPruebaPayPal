<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ahuachapán.aspx.cs" Inherits="OtraPruebaPayPal.Ahuachapán" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
        <title>Ahuachapán</title>
    <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/LogoTurismore2.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css2/styles.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="styles/css.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="EstilosCss/EstiloInicio.css" rel="stylesheet" />
</head>
<body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <form id="form1" runat="server">
            <a class="navbar-brand" href="Mapa.aspx">Ahuachapán</a>
                <%--<asp:Button ID="btningresar" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Agregar" OnClick="btningresar_Click" />
                <asp:Button ID="btneliminar" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Eliminar" OnClick="btneliminar_Click" />
                <asp:Button ID="btneditar" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Editar" OnClick="btneditar_Click" />--%>
                <asp:Button ID="btnAgregarImagen" class="btn btn-outline-success my-2 my-sm-0" Text="Agregar imagen" runat="server" OnClick="btnAgregarImagen_Click"/>
                <asp:Button ID="btnEditarImagen" class="btn btn-outline-success my-2 my-sm-0" runat="server" Text="Administrar imágenes" OnClick="btnEditarImagen_Click" />
<%--                <asp:Button ID="btncerrar" class="btn btn-outline-warning my-2 my-sm-0" type="submit" runat="server" Text="Cerrar sesion" OnClick="btncerrar_Click" />--%>
        </form>

    </nav>
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center" style="background-color:#FFA07A!important">
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Avatar Image-->
                <img class="masthead-avatar mb-80" src="assets/LogoTurismore2.png" alt="..." />
                <!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">Ahuachapán</h1>
        </header>
        <section class="page-section bg-primary text-white mb-0" id="about" style="background-color:#2c3e50!important">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-white">Historia de Ahuachapán</h2>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ms-auto">
                        <p class="lead">Fue creado por el Decreto Legislativo del 9 de febrero de 1869 durante la administración de Francisco Dueñas.
                        <br />
                        En el 9 de febrero, la Cámara de Diputados, considerando que los Distritos de Ahuachapán y Atiquizaya tenían el suficiente número de habitantes para formar un Departamento y que su separación del Departamento de Santa Ana "refluye en beneficio de la más eficaz administración", dio el decreto que erige en Departamento los distritos. El decreto fue dado en la Cámara de Senadores en el 12 de febrero y ejecutado por el presidente Francisco Dueñas en el 13 de febrero de 1869.</p>
                    </div>
                    <div class="col-lg-4 me-auto">
                        <p class="lead">En el 18 de febrero, la Municipalidad de Ahuachapán propuso al gobierno el nombramiento de su Diputado Don Fabio Morán para el puesto de Gobernador departamental. En el 14 de marzo se verificó la inauguración del nuevo Departamento y el acto de la toma posesión de la Gobernación por el señor Fabio Morán en Ahuachapán.
                        <br />
                        Su cabecera es la ciudad de Ahuachapán y consta de dos distritos o partidos: el de Ahuachapán y el de Atiquizaya, instituidos por las leyes de 4 de julio de 1832 y 26 de febrero de 1869, respectivamente.</p>
                    </div>
                </div>
            </div>
        </section>
    <!-- Carousel o Slider -->
        <style>
        /* Make the image fully responsive */
        .container-fluid{
            height: 90%;
            width: 100%;
        }

        .carousel-inner img {
            height: 600px;
        }
    </style>


    <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
            <asp:Literal ID="IndicatorsLiteral" Text="" runat="server"></asp:Literal>
          
        </ul>
        <br />
        <br />
        <br />
        <br />

        <!-- The slideshow -->
        <div class="carousel-inner">
            <asp:Literal ID="ImagesLiteral" Text="" runat="server"></asp:Literal>
           
        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    <asp:Label ID="label1" runat="server" Text=""></asp:Label>
    <asp:Label ID="label2" runat="server" Text=""></asp:Label>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
</body>
</html>
