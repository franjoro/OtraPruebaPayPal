<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transporte.aspx.cs" Inherits="OtraPruebaPayPal.Transporte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style3.css" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title>Renta de Autos</title>
</head>
<body>
        <form id="form1" runat="server">

    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav" style="background-color: #2c3e50!important">
        <div class="container">
            <a class="navbar-brand" href="default.aspx">Turismore</a>
            <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                    <i class="fas fa-bars"></i>
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="SeleccionDepartamento.aspx.aspx">Regresar</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <header>
        <div class="container" style="margin-top: 8rem">
            <h1 class="text-center">Renta de Autos</h1>
            <hr />
        </div>
    </header>
    <!-- START SECTION STORE -->
    <section class="store">
        <div class="container">
            <div class="items">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <div class="item shadow mb-4">
                            <h3 class="item-title">Bicicleta</h3>
                            <img class="item-image" src="./img/bicicleta.jpg" />

                            <div class="item-details">
                                <h4 class="item-price">$7.00</h4>
                                <button class="item-button btn btn-primary addToCart">RESERVAR</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="item shadow mb-4">
                            <h3 class="item-title">Cuatrimoto</h3>

                            <img class="item-image" src="./img/cuatrimoto.jpg" />

                            <div class="item-details">
                                <h4 class="item-price">$18.00</h4>
                                <button class="item-button btn btn-primary addToCart">RESERVAR</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6">
                        <div class="item shadow mb-4">
                            <h3 class="item-title">4X4</h3>

                            <img class="item-image" src="./img/4x4.jpg" />

                            <div class="item-details">
                                <h4 class="item-price">$35.00</h4>
                                <button class="item-button btn btn-primary addToCart">RESERVAR</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="item shadow mb-4">
                            <h3 class="item-title">Canoa</h3>

                            <img class="item-image" src="./img/canoa.png" />

                            <div class="item-details">
                                <h4 class="item-price">$30.00</h4>
                                <button class="item-button btn btn-primary addToCart">RESERVAR</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6">
                        <div class="item shadow mb-4">
                            <h3 class="item-title">Lancha</h3>

                            <img class="item-image" src="./img/lancha.png" />
                            <div class="item-details">
                                <h4 class="item-price">$40.00</h4>
                                <button class="item-button btn btn-primary addToCart">RESERVAR</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="item shadow mb-4">
                            <h3 class="item-title">Bus</h3>

                            <img class="item-image" src="./img/bus.png" />
                            <div class="item-details">
                                <h4 class="item-price">$60.00</h4>
                                <button class="item-button btn btn-primary addToCart">RESERVAR</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END SECTION STORE -->
    <!-- START SECTION SHOPPING CART -->
    <section class="shopping-cart">
        <div class="container">
            <h1 class="text-center">CARRITO DE VEHICULOS RENTADOS</h1>
            <hr />
            <div class="row">
                <div class="col-6">
                    <div class="shopping-cart-header">
                        <h6>Producto</h6>
                    </div>
                </div>
                <div class="col-2">
                    <div class="shopping-cart-header">
                        <h6 class="text-truncate">Precio</h6>
                    </div>
                </div>
                <div class="col-4">
                    <div class="shopping-cart-header">
                        <h6>Cantidad</h6>
                    </div>
                </div>
            </div>
            <!-- ? START SHOPPING CART ITEMS -->
            <div class="shopping-cart-items shoppingCartItemsContainer">
            </div>
            <!-- ? END SHOPPING CART ITEMS -->
            <!-- START TOTAL -->
            <div class="row">
                <div class="col-12">
                    <div class="shopping-cart-total d-flex align-items-center">
                        <p class="mb-0">Total</p>
                        <p id="Total" class="ml-4 mb-0 shoppingCartTotal">$0</p>
                        <div class="toast ml-auto bg-info" role="alert" aria-live="assertive" aria-atomic="true"
                            data-delay="2000">
                            <div class="toast-header">
                                <span>✅</span>
                                <strong class="mr-auto ml-1 text-secondary">Elemento en el carrito</strong>
                                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="toast-body text-white">
                                Se aumentó correctamente la cantidad
                            </div>
                        </div>
                        <%--<button class="btn btn-success ml-auto comprarButton" type="button" data-toggle="modal"
                            data-target="#comprarModal">RESERVAR</button>--%>
                        <%--<form runat="server">--%>
                            <asp:Button runat="server" class="btn btn-success ml-auto comprarButton" Text="Transferencia" ID="btntransferencia" OnClick="btntransferencia_Click" />
                            <asp:Button runat="server" class="btn btn-success ml-auto comprarButton" Text="PayPal" ID="btnPayPal" OnClick="btnPayPal_Click" />
                        <%--</form>--%>
                    </div>
                </div>
            </div>
            <!-- END TOTAL -->
            <!-- START MODAL COMPRA -->
            <div class="modal fade" id="comprarModal" tabindex="-1" aria-labelledby="comprarModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="comprarModalLabel">Gracias por confiar en nosotros su vehiculo sera entregado para empezar el viaje</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Pronto llegaremos con su vehiculo reservado</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MODAL COMPRA -->
        </div>
    </section>
    <!-- END SECTION SHOPPING CART -->

    <!-- START FOOTER -->
    <footer class="bg-dark p-3 mt-5">
        <p class="text-center m-0 text-muted">Renta de vehiculos</p>
    </footer>
    <!-- END FOOTER -->
    <!-- SCRIPTS -->
<%--    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
    <script src="./tienda.js"></script>--%>
        </form>
    <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
</body>
</html>
