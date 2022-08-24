<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravPlans.aspx.cs" Inherits="OtraPruebaPayPal.TravPlans" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Turismore - Planes</title>
    <link href="css/style4.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:700,300' rel='stylesheet' type='text/css' />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
</head>
<body style="background-color: white!important">
    <%--<script language="JavaScript">
        function incrementar1() {
            document.contcart.totalcart.value = 35;
            alert('Usted a elegido el plan estandar con un valor de $35.');
        }
        function incrementar2() {
            document.contcart.totalcart.value = 40;
            alert('Usted a elegido el plan pareja con un valor de $40.');
        }
        function incrementar3() {
            document.contcart.totalcart.value = 60;
            alert('Usted a elegido el plan familiar con un valor de $60.');
        }
        function incrementar4() {
            document.contcart.totalcart.value = 80;
            alert('Usted a elegido el plan grupal con un valor de $80.');
        }
    </script>--%>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="HomePage.aspx">Turismore</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="HomePage.aspx">Return</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="User MapaEn.aspx">Map</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <section>
            <div id="mainCont">
                <div class="center">
                    <div class="izquierda">
                        <div class="planCont plan-1">
                            <div class="priceAndSignupCont">
                                <sup class="currencySymbol">$</sup>
                                <span class="priceNumb" id="price1">45</span>
                                <span class="priceDuration">/plan</span>
                                <asp:Button runat="server" ID="Compra1" class="custom-btn btn-5" OnClick="Compra1_Click" Text="Buy" />
                                <%--<button id="compra1" class="custom-btn btn-5" onclick="incrementar1()"><span>Comprar</span></button>--%>
                            </div>
                            <ul class="specsCont">
                                <li class="propValue">5:
					
                            <span class="propName">Vehicles</span>
                                </li>
                                <li class="propValue">5: 
					
                            <span class="propName">Departments</span>
                                </li>
                                <li class="propValue">Yes:
					
                            <span class="propName">Stay</span>
                                </li>
                                <li class="propValue">Yes:
					
                            <span class="propName">Food</span>
                                </li>
                            </ul>
                        </div>
                        <div class="planCont plan-3">
                            <div class="priceAndSignupCont">
                                <sup class="currencySymbol">$</sup>
                                <span class="priceNumb">90</span>
                                <span class="priceDuration">/plan</span>
                                <asp:Button runat="server" ID="Compra2" class="custom-btn btn-5" OnClick="Compra2_Click" Text="Buy" />
                                <%--<button class="custom-btn btn-5" id="comprar2" onclick="incrementar2()">Comprar</button>--%>
                            </div>
                            <ul class="specsCont">
                                <li class="propValue">10:
					
                            <span class="propName">Vehicles</span>
                                </li>
                                <li class="propValue">5: 
					
                            <span class="propName">Departments</span>
                                </li>
                                <li class="propValue">Yes:
					
                            <span class="propName">Stay</span>
                                </li>
                                <li class="propValue">Yes:
					
                            <span class="propName">Food</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="derecha">
                        <div class="planCont plan-2">
                            <div class="priceAndSignupCont">
                                <sup class="currencySymbol">$</sup>
                                <span class="priceNumb">70</span>
                                <span class="priceDuration">/plan</span>
                                <asp:Button runat="server" ID="Compra3" class="custom-btn btn-5" OnClick="Compra3_Click" Text="Buy" />
                                <%--<button class="custom-btn btn-5" onclick="incrementar3()">Comprar</button>--%>
                            </div>
                            <ul class="specsCont">
                                <li class="propValue">7:
					
                            <span class="propName">Vehicles</span>
                                </li>
                                <li class="propValue">5: 
					
                            <span class="propName">Departments</span>
                                </li>
                                <li class="propValue">Yes:
					
                            <span class="propName">Stay</span>
                                </li>
                                <li class="propValue">Yes:
					
                            <span class="propName">Food</span>
                                </li>
                            </ul>
                        </div>
                        <div class="planCont plan-4">
                            <div class="priceAndSignupCont">
                                <sup class="currencySymbol">$</sup>
                                <span class="priceNumb">110</span>
                                <span class="priceDuration">/plan</span>
                                <asp:Button runat="server" ID="Compra4" class="custom-btn btn-5" OnClick="Compra4_Click" Text="Buy" />
                                <%--<button class="custom-btn btn-5" onclick="incrementar4()">Comprar</button>--%>
                            </div>
                            <ul class="specsCont">
                                <li class="propValue">13:
					
                            <span class="propName">Vehicles</span>
                                </li>
                                <li class="propValue">5: 
					
                            <span class="propName">Departments</span>
                                </li>
                                <li class="propValue">Yes:
					
                            <span class="propName">Stay</span>
                                </li>
                                <li class="propValue">Yes:
					
                            <span class="propName">Food</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
    </form>
</body>
</html>


