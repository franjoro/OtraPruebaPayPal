<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelQuiz1En.aspx.cs" Inherits="OtraPruebaPayPal.TravelQuiz1En" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" href="css/css-2.css" />
</head>
<body>
    <header>
        <img class="imagen" src="img/portfolio/Turismore2.png">
        <h1>¡TravelQuiz! - Ahuachapán</h1>
        <p>Select the correct answer</p>
    </header>
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
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="HomePage.aspx">Regresar</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="User Mapa.aspx">Mapa</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
                <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
                <aside id="left" class="left">
                    <div class="exit">
                        <asp:Button ID="salir" runat="server" Text="Return to home page" OnClick="salir_Click" BackColor="#8E6FC4" BorderColor="Black" Height="50px" Width="250px" ForeColor="Black" CssClass="exit" />
                    </div>
                </aside>
                <div class="container">
                    <section id="p0">
                        <h3>1. What is the most visited place in Ahuachapán?</h3>
                        <label>
                            <asp:RadioButton ID="RB1correcto" runat="server" OnCheckedChanged="RBcorrecto_CheckedChanged" Text=" Los Ausoles, Laguna el Espino" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="La Parroquia de La Asunción" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="los saltos de Atehuecillas y de Malacatiupán" GroupName="grupo1" />
                        </label>
                    </section>

                    <section id="p1">
                        <h3>2. What is the typical food of Ahuachapán?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton5" runat="server" Text="Nuegados" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB2correcto" runat="server" Text="Yuca" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton7" runat="server" Text="Tamales" GroupName="grupo2" />
                        </label>
                    </section>

                    <section id="p2">
                        <h3>3. What is the weather like normally in Ahuachapán?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton8" runat="server" Text="25° - 28°" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton9" runat="server" Text="31° - 34°" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB3correcto" runat="server" Text="21° - 31°" GroupName="grupo3" />
                        </label>
                    </section>

                    <section id="p3">
                        <h3>4. What is the most important tourist place in Ahuachapán?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton11" runat="server" Text="La Alcaldía moderna" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB4correcto" runat="server" Text="La Parroquia de La Asunción" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton13" runat="server" Text="Pasaje La Concordia" GroupName="grupo4" />
                        </label>
                    </section>
                    <div class="wrapper">
                        <asp:Button ID="BtnVerificar" runat="server" Text="Comprobar" OnClick="BtnVerificar_Click" BackColor="#9966FF" BorderColor="Black" Height="50px" Width="150px" />
                    </div>
                    <p style="height: 2px"></p>
                    <%-- <button onclick="corregir()"> Comprobar</button>
            <h2> Cantidad de aciertos: <span id="resultado"></span></h2>--%>
                    <div class="wrapper">
                        <asp:Label ID="LblCorrectas" runat="server" BorderStyle="Outset" ForeColor="Black" Height="50px" Width="300px" BorderColor="Black"></asp:Label>
                    </div>

                </div>
                <%--<script src="script.js"></script>--%>
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>

</body>
</html>
