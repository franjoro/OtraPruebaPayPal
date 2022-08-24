<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelQuiz.aspx.cs" Inherits="OtraPruebaPayPal.TravelQuiz" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>TravelQuiz</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
    <!-- Portfolio Section-->
    <section class="page-section portfolio" id="portfolio">
        <div class="container">
            <!-- Portfolio Section Heading-->
            <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">¡Travelquiz!</h2>
            <!-- Icon Divider-->
            <div class="divider-custom">
                <div class="divider-custom-line"></div>
                <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                <div class="divider-custom-line"></div>
            </div>
            <!-- Portfolio Grid Items-->
            <div class="row justify-content-center">
                <!-- Portfolio Item 1-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal"  data-bs-target="#portfolioModal1">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/ahuachapan.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 2-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal2">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/santana.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 3-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal3">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/chalatenango.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 4-->
                <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal4">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/cuscatlan.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 5-->
                <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal5">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/lalibertad.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 6-->
                <div class="col-md-6 col-lg-4">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal6">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/sonsonate.png" alt="..." />
                    </div>
                </div>
            </div>
        </div>
    </section>

        <!-- Portfolio Section-->
    <section class="page-section portfolio" id="portfolio">
        <div class="container">
            <!-- Portfolio Grid Items-->
            <div class="row justify-content-center">
                <!-- Portfolio Item 7-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal"  data-bs-target="#portfolioModal7">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/San Salvador.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 8-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal8">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/La Paz.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 9-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal9">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/Cabañas.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 10-->
                <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal10">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/San Vicente.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 11-->
                <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal11">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/Usulutan.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 12-->
                <div class="col-md-6 col-lg-4">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal12">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/San Miguel.png" alt="..." />
                    </div>
                </div>
            </div>
        </div>
    </section>

        <!-- Portfolio Section-->
    <section class="page-section portfolio" id="portfolio">
        <div class="container">
            <!-- Portfolio Grid Items-->
            <div class="row justify-content-center">
                <!-- Portfolio Item 7-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal"  data-bs-target="#portfolioModal13">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/Morazán.png" alt="..." />
                    </div>
                </div>
                <!-- Portfolio Item 8-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal14">
                        <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                            <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="img/portfolio/La Unión.png" alt="..." />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Portfolio Modals-->
    <!-- Portfolio Modal 1-->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Ahuachapan</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/ahuachapan.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Ahuachapán es la capital del departamento de Ahuachapán y una de las ciudades más importantes de la zona occidental de El Salvador, posee un clima agradable y templado. Su población es de 116 948 habitantes aprox, sabemos que la yuca es el platillo típico de Ahuachapán y Chalchuapa, generaciones de familias se han dedicado a elaborar este platillo, y cuenta con una antigua parroquia, esta hermosa edificación inició a construirse en el siglo XVIII en el terreno donde funcionaba el cementerio de la ciudad en tiempos de la colonia.</p>
                                <asp:Button ID="Button1" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button1_Click" />
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 2-->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Santa Ana</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/santana.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Santa Ana tiene una población estimada de 264 091 habitantes, ocupando el segundo lugar en población es la ciudad principal de la zona occidental, y segunda ciudad en importancia de El Salvador, ubicada a 64 km de la capital estatal, San Salvador., cuenta con 408.01 km² de territorio, es una ciudad con un clima muy caliente, sobrepasado hasta los 34°.</p>
                                <asp:Button ID="Button2" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 3-->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Chalatenango</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/chalatenango.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">Chalatenango es un departamento de El Salvador. Su cabecera departamental es Chalatenango, se encuentra ubicado al norte de la capital del país, San Salvador, fronterizo con Honduras, es el quinto departamento más grande de El Salvador. En este departamento se ubica el cerro El Pital con 2730 m de altitud sobre el nivel del mar, el punto más elevado del país. El clima más frío de El Salvador tiene lugar en estas alturas.</p>
                                <asp:Button ID="Button3" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button3_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 4-->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" aria-labelledby="portfolioModal4" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Cuscatlán</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/cuscatlan.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">Cuscatlán, departamento con 16 municipios, era desde la antigüedad la ciudad célebre por sus riquezas y el poderío de sus príncipes, la misma fue considerada la principal metrópoli de los aborígenes pipiles de El Salvador Precolombino. Cuenta con una población 216,446 habitantes, su municipio más grande es Suchitoto y es de lo más conocidos.</p>
                                <asp:Button ID="Button4" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 5-->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" aria-labelledby="portfolioModal5" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">La Libertad</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/lalibertad.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">La Libertad es un departamento de El Salvador. Su cabecera es la ciudad de Santa Tecla. Tiene una extensión territorial de 1653 km² y una población de 843 500 habitantes, cuenta con playas importantes como El Tunco, por su potente atracción de turistas y las playas de La Libertad cuentan con el tercer lugar en la escala mundial de los mejores puntos para surfear, y se han realizado ya alrededor de seis campeonatos a nivel mundial en las playas del departamento de La Libertad.</p>
                                <asp:Button ID="Button5" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button5_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 6-->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" aria-labelledby="portfolioModal6" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Sonsonate</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/sonsonate.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">Sonsonate con una población de 535 561 hab, es un departamento de El Salvador cuya cabecera es el municipio de Sonsonate. Se distingue a nivel nacional por la riqueza cultural, religiosa, histórica y turística; sus platillos típicos son La yuca, sopa de patas y los tamales de elote, cuenta con múltiples playas y sitios turísticos, siendo la Playa los Cóbanos el sitio más visitado de Sonsonate</p>
                                <asp:Button ID="Button6" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button6_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 7-->
    <div class="portfolio-modal modal fade" id="portfolioModal7" tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">San Salvador</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/San Salvador.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Ahuachapán es la capital del departamento de Ahuachapán y una de las ciudades más importantes de la zona occidental de El Salvador, posee un clima agradable y templado. Su población es de 116 948 habitantes aprox, sabemos que la yuca es el platillo típico de Ahuachapán y Chalchuapa, generaciones de familias se han dedicado a elaborar este platillo, y cuenta con una antigua parroquia, esta hermosa edificación inició a construirse en el siglo XVIII en el terreno donde funcionaba el cementerio de la ciudad en tiempos de la colonia.</p>
                                <asp:Button ID="Button7" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button1_Click" />
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 8-->
    <div class="portfolio-modal modal fade" id="portfolioModal8" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">La Paz</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/La Paz.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Santa Ana tiene una población estimada de 264 091 habitantes, ocupando el segundo lugar en población es la ciudad principal de la zona occidental, y segunda ciudad en importancia de El Salvador, ubicada a 64 km de la capital estatal, San Salvador., cuenta con 408.01 km² de territorio, es una ciudad con un clima muy caliente, sobrepasado hasta los 34°.</p>
                                <asp:Button ID="Button8" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 9-->
    <div class="portfolio-modal modal fade" id="portfolioModal9" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Cabañas</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/Cabañas.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Santa Ana tiene una población estimada de 264 091 habitantes, ocupando el segundo lugar en población es la ciudad principal de la zona occidental, y segunda ciudad en importancia de El Salvador, ubicada a 64 km de la capital estatal, San Salvador., cuenta con 408.01 km² de territorio, es una ciudad con un clima muy caliente, sobrepasado hasta los 34°.</p>
                                <asp:Button ID="Button9" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 10-->
    <div class="portfolio-modal modal fade" id="portfolioModal10" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">San Vicente</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/San Vicente.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Santa Ana tiene una población estimada de 264 091 habitantes, ocupando el segundo lugar en población es la ciudad principal de la zona occidental, y segunda ciudad en importancia de El Salvador, ubicada a 64 km de la capital estatal, San Salvador., cuenta con 408.01 km² de territorio, es una ciudad con un clima muy caliente, sobrepasado hasta los 34°.</p>
                                <asp:Button ID="Button10" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 11-->
    <div class="portfolio-modal modal fade" id="portfolioModal11" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Usulután</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/Usulutan.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Santa Ana tiene una población estimada de 264 091 habitantes, ocupando el segundo lugar en población es la ciudad principal de la zona occidental, y segunda ciudad en importancia de El Salvador, ubicada a 64 km de la capital estatal, San Salvador., cuenta con 408.01 km² de territorio, es una ciudad con un clima muy caliente, sobrepasado hasta los 34°.</p>
                                <asp:Button ID="Button11" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 12-->
    <div class="portfolio-modal modal fade" id="portfolioModal12" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">San Miguel</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/San Miguel.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Santa Ana tiene una población estimada de 264 091 habitantes, ocupando el segundo lugar en población es la ciudad principal de la zona occidental, y segunda ciudad en importancia de El Salvador, ubicada a 64 km de la capital estatal, San Salvador., cuenta con 408.01 km² de territorio, es una ciudad con un clima muy caliente, sobrepasado hasta los 34°.</p>
                                <asp:Button ID="Button12" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 13-->
    <div class="portfolio-modal modal fade" id="portfolioModal13" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Morazán</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/Morazán.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Santa Ana tiene una población estimada de 264 091 habitantes, ocupando el segundo lugar en población es la ciudad principal de la zona occidental, y segunda ciudad en importancia de El Salvador, ubicada a 64 km de la capital estatal, San Salvador., cuenta con 408.01 km² de territorio, es una ciudad con un clima muy caliente, sobrepasado hasta los 34°.</p>
                                <asp:Button ID="Button13" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio Modal 14-->
    <div class="portfolio-modal modal fade" id="portfolioModal14" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header border-0">
                    <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <!-- Portfolio Modal - Title-->
                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">La Unión</h2>
                                <!-- Icon Divider-->
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <!-- Portfolio Modal - Image-->
                                <img class="img-fluid rounded mb-5" src="img/portfolio/La Unión.png" alt="..." />
                                <!-- Portfolio Modal - Text-->
                                <p class="mb-4">El municipio de Santa Ana tiene una población estimada de 264 091 habitantes, ocupando el segundo lugar en población es la ciudad principal de la zona occidental, y segunda ciudad en importancia de El Salvador, ubicada a 64 km de la capital estatal, San Salvador., cuenta con 408.01 km² de territorio, es una ciudad con un clima muy caliente, sobrepasado hasta los 34°.</p>
                                <asp:Button ID="Button14" runat="server"  Text="¡Hacer el TravelQuiz!" class="btn btn-primary"  data-bs-dismiss="modal" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

        </form>
</body>
</html>
