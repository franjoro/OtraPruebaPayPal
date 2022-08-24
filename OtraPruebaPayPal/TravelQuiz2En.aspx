<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelQuiz2En.aspx.cs" Inherits="OtraPruebaPayPal.TravelQuiz2En" %>

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
        <h1>¡TravelQuiz! - Santa Ana</h1>
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
                        <h3>1.	¿Cuánto mide la región de Santa Ana?</h3>
                        <label>
                            <asp:RadioButton ID="RB1correcto" runat="server" Text="408.01 km²" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="204.8 km²" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="18.01 km²" GroupName="grupo1" />
                        </label>
                    </section>

                    <section id="p1">
                        <h3>2.	¿Cuánta población tiene Santa Ana?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton5" runat="server" Text="841,251 hab" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB2correcto" runat="server" Text="264,091 hab" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton7" runat="server" Text="400,852 hab" GroupName="grupo2" />
                        </label>
                    </section>

                    <section id="p2">
                        <h3>3.	¿Cómo es el clima normalmente en Santa Ana?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton8" runat="server" Text="21° - 31°" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton9" runat="server" Text="31° - 34°" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB3correcto" runat="server" Text="24° - 33°" GroupName="grupo3" />
                        </label>
                    </section>

                    <section id="p3">
                        <h3>4.	¿El escudo de Santa Ana tiene franjas celestes y blancas?</h3>
                        <label>
                            <asp:RadioButton ID="RadioButton11" runat="server" Text="No, son franjas rojas" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB4correcto" runat="server" Text="Sí, las tiene" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton13" runat="server" Text="No tiene franjas" GroupName="grupo4" />
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
                <%--<script src="script.js"></script>--%>
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>

</body>
</html>
