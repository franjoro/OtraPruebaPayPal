<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelQuiz13.aspx.cs" Inherits="OtraPruebaPayPal.TravelQuiz13" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/css-2.css" />

    <title>¡TravelQuiz!</title>
</head>
<body>
    <header>
        <img class="imagen" src="img/portfolio/Turismore2.png">
        <h1>¡TravelQuiz! - Morazán</h1>
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
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large">
                            1.	¿Morazán estuvo en conflicto en la guerra civil?
                        </asp:Label>
                        <label>
                            <asp:RadioButton ID="RB1correcto" runat="server" Text="Si, fue una zona muy peligrosa" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="No, fue de las zonas más calmadas del país" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="No hubo guerra civil" GroupName="grupo1" />
                        </label>
                    </section>

                    <section id="p1">
                        <asp:Label ID="Label3" runat="server" Font-Size="X-Large">
                            2.	¿Que impactante hecho hubo en morazán?
                        </asp:Label>
                        <label>
                            <asp:RadioButton ID="RadioButton5" runat="server" Text="La fundación de un nuevo partido político" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB2correcto" runat="server" Text="La masacre del Mozote" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton7" runat="server" Text="La muerte de Monseñor Romero" GroupName="grupo2" />
                        </label>
                    </section>

                    <section id="p2">
                        <asp:Label ID="Label4" runat="server" Font-Size="X-Large">
                            3.	¿Cuántos municipios hay en Morazán?
                        </asp:Label>
                        <label>
                            <asp:RadioButton ID="RadioButton8" runat="server" Text="35" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton9" runat="server" Text="17" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB3correcto" runat="server" Text="26" GroupName="grupo3" />
                        </label>
                    </section>

                    <section id="p3">
                        <asp:Label ID="Label5" runat="server" Font-Size="X-Large">
                            4.	¿Cómo es el clima en Morazán?
                        </asp:Label>
                        <label>
                            <asp:RadioButton ID="RadioButton11" runat="server" Text="Frío" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB4correcto" runat="server" Text="Tropical" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton13" runat="server" Text="Lluvioso" GroupName="grupo4" />
                        </label>
                    </section>
                    <div class="container text-center">
                        <!-- Button trigger modal -->
                        <asp:Button runat="server" type="button" ID="pop" OnClick="pop_Click" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" Text="Comprobar" />
                    </div>
                    <p style="height: 2px"></p>
                    <div class="wrapper">
                        <asp:Label ID="Label1" runat="server" BorderStyle="Outset" ForeColor="Black" Height="50px" Width="300px" BorderColor="Black"></asp:Label>
                        <asp:Label ID="LblCorrectas" runat="server" BorderStyle="Outset" ForeColor="Black" Height="50px" Width="300px" BorderColor="Black"></asp:Label>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalCenterTitle">Correctas</h5>
                    </div>
                    <div class="modal-body">
                        <div align="center">
                            <asp:Image src="img/portfolio/correctas.gif" ID="fotomala" runat="server" Width="450" Height="400" />
                        </div>
                        <div>
                            <asp:Label runat="server" ID="respuesta1">Respuesta</asp:Label>
                        </div>
                        <div>
                            <asp:Label runat="server" ID="respuesta2">Respuesta</asp:Label>
                        </div>
                        <div>
                            <asp:Label runat="server" ID="respuesta3">Respuesta</asp:Label>
                        </div>
                        <div>
                            <asp:Label runat="server" ID="respuesta4">Respuesta</asp:Label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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