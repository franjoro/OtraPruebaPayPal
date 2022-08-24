<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelQuiz1.aspx.cs" Inherits="OtraPruebaPayPal.TravelQuiz1" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css-2.css" />

    <title>¡TravelQuiz!</title>
</head>
<body class="fondocolor">
    <header>
        <img class="imagen" src="assets/img/portfolio/Turismore2.png">
        <h1>¡TravelQuiz! - Ahuachapán</h1>
        <p>Selecciona la respuesta correcta</p>
    </header>
    <form id="form1" runat="server">
        <asp:UpdatePanel ID="panel1" runat="server">
            <contenttemplate>
                <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
                <aside id="left" class="left">
                    <div class="exit">
                        <asp:Button ID="salir" runat="server" Text="Regresar a la página de inicio" OnClick="salir_Click" BackColor="#8E6FC4" BorderColor="Black" Height="50px" Width="250px" ForeColor="Black" CssClass="exit" />
                    </div>
                </aside>
                <div runat="server" id="PG1" class="container">
                    <section id="p0">
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large">
                            1. ¿Cuál es el lugar más visitado de Ahuachapán?
                        </asp:Label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC1" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC1" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RB1correcto" runat="server" Text="Los Ausoles, Laguna el Espino" OnCheckedChanged="RBcorrecto_CheckedChanged" GroupName="grupo1" />
                        </label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC2" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC2" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="La Parroquia de La Asunción" GroupName="grupo1" />
                        </label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC3" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC3" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="Los saltos de Atehuecillas y de Malacatiupán" GroupName="grupo1" />
                        </label>
                    </section>

                    <section id="p1">
                        <asp:Label ID="Label3" runat="server" Font-Size="X-Large">
                            2. ¿Cuál es la comida típica de Ahuachapán?
                        </asp:Label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC4" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC4" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RadioButton5" runat="server" Text="Nuegados" GroupName="grupo2" />
                        </label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC5" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC5" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RB2correcto" runat="server" Text="Yuca" GroupName="grupo2" />
                        </label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC6" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC6" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RadioButton7" runat="server" Text="Tamales" GroupName="grupo2" />
                        </label>
                    </section>

                    <section id="p2">
                        <asp:Label ID="Label4" runat="server" Font-Size="X-Large">
                            3. ¿Cómo es el clima normalmente en Ahuachapán?
                        </asp:Label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC7" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC7" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RadioButton8" runat="server" Text="25° - 28°" GroupName="grupo3" />
                        </label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC8" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC8" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RadioButton9" runat="server" Text="31° - 34°" GroupName="grupo3" />
                        </label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC9" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC9" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RB3correcto" runat="server" Text="21° - 31°" GroupName="grupo3" />
                        </label>
                    </section>

                    <section id="p3">
                        <asp:Label ID="Label5" runat="server" Font-Size="X-Large">
                            4. ¿Cuál es el lugar turístico más importante de Ahuachapán?
                        </asp:Label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC10" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC10" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RadioButton11" runat="server" Text="La Alcaldía moderna" GroupName="grupo4" />
                        </label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC11" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC11" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RB4correcto" runat="server" Text="La Parroquia de La Asunción" GroupName="grupo4" />
                        </label>
                        <asp:Image runat="server" src="assets/correcto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenC12" Visible="False" />
                        <asp:Image runat="server" src="assets/incorrecto.png" Height="75" Width="75" ImageAlign="Right" ID="ImagenIC12" Visible="false" />
                        <label>
                            <asp:RadioButton ID="RadioButton13" runat="server" Text="Pasaje La Concordia" GroupName="grupo4" />
                        </label>
                    </section>
                    <div class="container text-center">
                        <!-- Button trigger modal -->
                        <asp:Button runat="server" type="button" ID="pop" OnClick="pop_Click" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" Text="Comprobar" />
                    </div>
                    <p style="height: 2px"></p>
                    <div class="wrapper">
                        <asp:Label ID="LblCorrectas" runat="server" BorderStyle="Outset" ForeColor="Black" Height="50px" Width="300px" BorderColor="Black"></asp:Label>
                        <asp:Label ID="Label1" runat="server" BorderStyle="Outset" ForeColor="Black" Height="50px" Width="300px" BorderColor="Black"></asp:Label>
                    </div>
                </div>
            </contenttemplate>
        </asp:UpdatePanel>

        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle"></h5>
                    </div>
                    <div class="modal-body">
                        <div align="center">
                            <asp:Image src="assets/img/portfolio/correctas.gif" ID="fotomala" runat="server" Width="450" Height="400" />
                        </div>
                        <div>
                            <h2 style="color: #0EA2C0; padding-top: 10px; padding-right: inherit; padding-bottom: 10px; padding-left: inherit;">¿Sabías qué?</h2>
                        </div>
                        <div>
                            <h3 style="text-align: center"> Ahuachapán fue fundado en el siglo V por los mayas de la tribu pokomames, y sometida en el siglo XV por belicosos Náhuas de Kuskatan de los izalcos.</h3>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </form>

</body>
</html>