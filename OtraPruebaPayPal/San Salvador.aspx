<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="San Salvador.aspx.cs" Inherits="OtraPruebaPayPal.San_Salvador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8" />
        <title>San Salvador</title>
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
            <a class="navbar-brand" href="Mapa.aspx">San Salvador</a>
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
                <img class="masthead-avatar mb-6" src="assets/LogoTurismore2.png" alt="..." />
                <!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">San Salvador</h1>
        </header>
        <section class="page-section bg-primary text-white mb-0" id="about" style="background-color:#2c3e50!important">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-white">Historia de San Salvador</h2>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ms-auto">
                        <p class="lead">A inicios del siglo XX, la capital, como el país en general, se desarrolló en función de los ingresos generados por la exportación del café. Como expresión de esa prosperidad fueron iniciadas diversas estructuras reconocidas en la urbe, tales como el Parque Dueñas, después conocido como Plaza Libertad (1900); el Teatro Nacional de San Salvador; la ex Casa Presidencial (1911) y el Hospital Rosales (inaugurado en 1902).
                        <br />
                        Todas construidas en aras de hacer la localidad más cosmopolita. Sin embargo, nuevamente los desastres naturales destrozaron muchos edificios de esos años con los terremotos de 1917 y 1919; y una inundación en 1922. Por ser la sede del gobierno, en San Salvador ocurrieron importantes acontecimientos políticos a lo largo del siglo. Justo en los primeros años acaeció el magnicidio de Manuel Enrique Araujo el 4 de febrero de 1913 en la Plaza Barrios.</p>
                    </div>
                    <div class="col-lg-4 me-auto">
                        <p class="lead">Años más tarde arribaría al poder Maximiliano Hernández Martínez a través de un golpe de estado en 1931, en medio de la crisis económica que resultó en la caída de los precios del café durante los años de la Gran Depresión. A partir de entonces iniciaría una época de agitación política con el predominio del estamento militar. En la década de los años 1970, José Napoleón Duarte, ingeniero, fue elegido alcalde; He servido desde 1964 hasta 1970. 
                        <br />
                        Las décadas de 1960 a 1980 fueron la edad de oro de San Salvador en todos los aspectos de seguridad, calidad de vida y modernización.
                        con el aumento de la violencia política, San Salvador fue el escenario de numerosas protestas populares de diversas organizaciones opositoras al régimen; la mayor de ellas, registrada en la historia del país, ocurrió el 22 de enero de 1980.</p>
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
        <br>
        <br>
        <br>
        <br>

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
