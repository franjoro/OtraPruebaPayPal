<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelQuiz4En.aspx.cs" Inherits="OtraPruebaPayPal.TravelQuiz4En" %>

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
        <h1>¡TravelQuiz! - Cuscatlán</h1>
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
                        <h3>1.	¿Cuántas personas habitan en Cuscatlán? </h3>
                        <label>
                            <asp:RadioButton ID="RB1correcto" runat="server" Text="216,446 habitantes" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="124,786 habitantes" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="50,785" GroupName="grupo1" />
                        </label>
                    </section>

                    <section id="p1">
                        <h3>2.	¿Cómo es el clima en Cuscatlán?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton5" runat="server" Text="14 °C a 24 °C" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB2correcto" runat="server" Text="16 °C a 29 °C" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton7" runat="server" Text="25 °C a 34 °C" GroupName="grupo2" />
                        </label>
                    </section>

                    <section id="p2">
                        <h3>3.	¿Cuál es el municipio más grande de Cuscatlán?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton8" runat="server" Text="Cojutepeque" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton9" runat="server" Text="Tenancingo" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB3correcto" runat="server" Text="Suchitoto" GroupName="grupo3" />
                        </label>
                    </section>

                    <section id="p3">
                        <h3>4.	¿Cuántos municipios tiene Cuscatlán?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton11" runat="server" Text="7 municipios" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB4correcto" runat="server" Text="16 municipios" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton13" runat="server" Text="26 municipios" GroupName="grupo4" />
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