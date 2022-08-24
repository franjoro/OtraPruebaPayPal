<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionDepartamentoEn.aspx.cs" Inherits="OtraPruebaPayPal.SeleccionDepartamentoEn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style3.css" />
    <title>TurismoreSv</title>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav" style="background-color: #2c3e50!important">
            <div class="container">
                <a class="navbar-brand" href="HomePage.aspx">Turismore</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="User Mapa.aspx">Return</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <header>
            <div class="container" style="margin-top:8rem">
                <h1 class="text-center">Select a department</h1>
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
                                <h3 class="item-title">Ahuachapán</h3>
                                <img class="item-image" src="./img/portfolio/ahuachapan.png" />

                                <div class="item-details">
                                    <h4 class="item-price">1</h4>
                                    <%--<button id="Ahuachapán" class="item-button btn btn-primary addToCart" runat="server" onserverclick="Ahuachapán_ServerClick">SELECCIONAR</button>--%>
                                    <asp:Button runat="server" ID="Ahuachapan" class="item-button btn btn-primary addToCart" OnClick="Ahuachapan_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">Cabañas</h3>

                                <img class="item-image" src="./img/portfolio/Cabañas.png" />

                                <div class="item-details">
                                    <h4 class="item-price">2</h4>
                                    <asp:Button runat="server" ID="Cabañas" class="item-button btn btn-primary addToCart" OnClick="Cabañas_Click" Text="SELECT" />
                                    <%--<button id="Cabañas" class="item-button btn btn-primary addToCart">SELECCIONAR</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">Chalatenango</h3>

                                <img class="item-image" src="./img/portfolio/chalatenango.png" />

                                <div class="item-details">
                                    <h4 class="item-price">3</h4>
                                    <asp:Button runat="server" ID="Chalatenango" class="item-button btn btn-primary addToCart" OnClick="Chalatenango_Click" Text="SELECT" />
                                    <%--<button id="Chalatenango" class="item-button btn btn-primary addToCart">SELECCIONAR</button>--%>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">Cuscatlán</h3>

                                <img class="item-image" src="./img/portfolio/cuscatlan.png" />

                                <div class="item-details">
                                    <h4 class="item-price">4</h4>
                                    <asp:Button runat="server" ID="Cuscatlan" class="item-button btn btn-primary addToCart" OnClick="Cuscatlan_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">La Libertad</h3>

                                <img class="item-image" src="./img/portfolio/lalibertad.png" />
                                <div class="item-details">
                                    <h4 class="item-price">5</h4>
                                    <asp:Button runat="server" ID="LaLibertad" class="item-button btn btn-primary addToCart" OnClick="LaLibertad_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">Morazán</h3>

                                <img class="item-image" src="./img/portfolio/Morazán.png" />
                                <div class="item-details">
                                    <h4 class="item-price">6</h4>
                                    <asp:Button runat="server" ID="Morazan" class="item-button btn btn-primary addToCart" OnClick="Morazan_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">La Paz</h3>
                                <img class="item-image" src="./img/portfolio/La Paz.png" />

                                <div class="item-details">
                                    <h4 class="item-price">7</h4>
                                    <asp:Button runat="server" ID="LaPaz" class="item-button btn btn-primary addToCart" OnClick="LaPaz_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">Santa Ana</h3>

                                <img class="item-image" src="./img/portfolio/santana.png" />

                                <div class="item-details">
                                    <h4 class="item-price">8</h4>
                                    <asp:Button runat="server" ID="SantaAna" class="item-button btn btn-primary addToCart" OnClick="SantaAna_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">San Miguel</h3>
                                <img class="item-image" src="./img/portfolio/San Miguel.png" />

                                <div class="item-details">
                                    <h4 class="item-price">9</h4>
                                    <asp:Button runat="server" ID="SanMiguel" class="item-button btn btn-primary addToCart" OnClick="SanMiguel_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">San Salvador</h3>

                                <img class="item-image" src="./img/portfolio/San Salvador.png" />

                                <div class="item-details">
                                    <h4 class="item-price">10</h4>
                                    <asp:Button runat="server" ID="SanSalvador" class="item-button btn btn-primary addToCart" OnClick="SanSalvador_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">San Vicente</h3>
                                <img class="item-image" src="./img/portfolio/San Vicente.png" />

                                <div class="item-details">
                                    <h4 class="item-price">11</h4>
                                    <asp:Button runat="server" ID="SanVicente" class="item-button btn btn-primary addToCart" OnClick="SanVicente_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">Sonsonate</h3>

                                <img class="item-image" src="./img/portfolio/sonsonate.png" />

                                <div class="item-details">
                                    <h4 class="item-price">12</h4>
                                    <asp:Button runat="server" ID="Sonsonate" class="item-button btn btn-primary addToCart" OnClick="Sonsonate_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">La Unión</h3>
                                <img class="item-image" src="./img/portfolio/La Unión.png" />

                                <div class="item-details">
                                    <h4 class="item-price">13</h4>
                                    <asp:Button runat="server" ID="LaUnión" class="item-button btn btn-primary addToCart" OnClick="LaUnión_Click" Text="SELECT" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6">
                            <div class="item shadow mb-4">
                                <h3 class="item-title">Usulután</h3>

                                <img class="item-image" src="./img/portfolio/Usulutan.png" />

                                <div class="item-details">
                                    <h4 class="item-price">14</h4>
                                    <asp:Button runat="server" ID="Usulutan" class="item-button btn btn-primary addToCart" OnClick="Usulutan_Click" Text="SELECT" />
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
                <h1 class="text-center">THE PLAN YOU CHOSE</h1>
                <hr />
                <div class="row">
                    <div class="col-6">
                        <div class="shopping-cart-header">
                            <h6>Plan</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-header">
                            <h6 class="text-truncate">Price</h6>
                        </div>
                    </div>
                </div>
                <%--******************************* Plan Estandar****************************** --%>
                <div id="plan1" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Standard Plan</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">$45</p>
                        </div>
                    </div>
                </div>
                <%--******************************* Plan de Pareja****************************** --%>
                <div id="plan2" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Couple Plan</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">$70</p>
                        </div>
                    </div>
                </div>
                <%--******************************* Plan Familiar****************************** --%>
                <div id="plan3" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Family Plan</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">$90</p>
                        </div>
                    </div>
                </div>
                <%--******************************* Plan Grupal****************************** --%>
                <div id="plan4" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Group Plan</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">$110</p>
                        </div>
                    </div>
                </div>
                <%-- ****************Departamentos**************************** --%>
                <h1 class="text-center">SELECT THE DEPARTMENTS YOU WILL VISIT:</h1>
                <hr />
                <div class="row">
                    <div class="col-6">
                        <div class="shopping-cart-header">
                            <h6>Department</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-header">
                            <h6 class="text-truncate">N° Department</h6>
                        </div>
                    </div>
                    <div class="col-4">
                        <div class="shopping-cart-header">
                            <h6>Day</h6>
                        </div>
                    </div>
                </div>
                <%--************************************Ahuchapán Carrito******************************--%>
                <div id="especial1" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/ahuachapan.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Ahuachpán</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">1</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="AhuachapanInput" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" onkeypress="return (event.charCode < 1 && event.charCode > 2)"/>
                            <button id="Elminar1" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Elminar1_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial2" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/Cabañas.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Cabañas</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">2</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number1" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar2" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar2_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial3" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/chalatenango.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Chalatenango</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">3</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number2" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar3" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar3_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial4" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/cuscatlan.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Cuscatlan</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">4</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number3" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar4" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar4_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial5" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/La Paz.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">La Paz</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">5</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number4" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar5" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar5_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial6" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/La Unión.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">La Unión</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">6</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number5" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar6" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar6_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial7" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/lalibertad.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">La Libertad</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">7</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number6" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar7" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar7_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial8" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/Morazán.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Morazán</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">8</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number7" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar8" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar8_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial9" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/San Miguel.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">San Miguel</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">9</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number8" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar9" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar9_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial10" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/San Salvador.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">San Salvador</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">10</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number9" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar10" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar10_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial11" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/San Vicente.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">San Vicente</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">11</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number10" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar11" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar11_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial12" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/santana.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Santa Ana</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">12</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number11" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar12" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar12_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial13" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/sonsonate.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Sonsonate</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">13</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number12" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar13" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar13_ServerClick">X</button>
                        </div>
                    </div>
                </div>
                <%--************************************Cabañas Carrito******************************--%>
                <div id="especial14" class="row shoppingCartItem" style="display: none" runat="server">
                    <div class="col-6">
                        <div class="shopping-cart-item d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <img src="img/portfolio/Usulutan.png" class="shopping-cart-image" />
                            <h6 class="shopping-cart-item-title shoppingCartItemTitle text-truncate ml-3 mb-0">Usulután</h6>
                        </div>
                    </div>
                    <div class="col-2">
                        <div class="shopping-cart-price d-flex align-items-center h-100 border-bottom pb-2 pt-3">
                            <p class="item-price mb-0 shoppingCartItemPrice">14</p>
                        </div>
                    </div>
                    <div class="col-4">
                        <div
                            class="shopping-cart-quantity d-flex justify-content-between align-items-center h-100 border-bottom pb-2 pt-3">
                            <input id="Number13" class="shopping-cart-quantity-input shoppingCartItemQuantity" type="number" value="1" min="1" max="2" runat="server" />
                            <button id="Eliminar14" class="btn btn-danger buttonDelete" type="button" runat="server" onserverclick="Eliminar14_ServerClick">X</button>
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

                            <div class="toast ml-auto bg-info" role="alert" aria-live="assertive" aria-atomic="true"
                                data-delay="2000">
                                <div class="toast-header">
                                    <span>✅</span>
                                    <strong class="mr-auto ml-1 text-secondary">Selected department</strong>
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
                            <asp:Button runat="server" class="btn btn-success ml-auto comprarButton" Text="Go to vehicles" ID="btnTransporte" OnClick="btnTransporte_Click" />
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
            <p class="text-center m-0 text-muted">Selection of departments</p>
        </footer>
        <!-- END FOOTER -->
        <!-- SCRIPTS -->
        <%--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
    <script src="./seleccion.js"></script>--%>
    </form>
</body>
</html>