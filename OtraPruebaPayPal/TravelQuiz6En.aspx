<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelQuiz6En.aspx.cs" Inherits="OtraPruebaPayPal.TravelQuiz6En" %>

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
        <h1>¡TravelQuiz! - Sonsonate</h1>
        <p>Selecciona la respuesta correcta</p>
    </header>
    <form id="form1" runat="server">
        <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
                <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
                <aside id="left" class="left">
                    <div class="exit">
                        <asp:Button ID="salir" runat="server" Text="Regresar a la página de inicio" OnClick="salir_Click" BackColor="#8E6FC4" BorderColor="Black" Height="50px" Width="250px" ForeColor="Black" CssClass="exit" />
                    </div>

                </aside>

                <div class="container">

                    <section id="p0">
                        <h3>1.	¿Cuál es la comida típica de Sonsonate?</h3>
                        <label>
                            <asp:RadioButton ID="RB1correcto" runat="server" Text="La yuca y sopa de patas" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="Las pupusas de camarón" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="Los tamales de chipilín" GroupName="grupo1" />
                        </label>
                    </section>

                    <section id="p1">
                        <h3>2.	¿Cuál es el lugar más visitado de Sonsonate?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton5" runat="server" Text="Catedral de Sonsonate" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB2correcto" runat="server" Text="Playa los Cóbanos" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton7" runat="server" Text="Royal Decameron" GroupName="grupo2" />
                        </label>
                    </section>

                    <section id="p2">
                        <h3>3.	¿Cuál es la cabecera departamental de Sonsonate?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton8" runat="server" Text="Acajutla" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton9" runat="server" Text="Salcoatitlán" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB3correcto" runat="server" Text="Sonsonate" GroupName="grupo3" />
                        </label>
                    </section>

                    <section id="p3">
                        <h3>4.	¿Cuál es la población de Sonsonate?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton11" runat="server" Text="226.585 hab" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB4correcto" runat="server" Text="535 561 hab" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton13" runat="server" Text="689.128 hab" GroupName="grupo4" />
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