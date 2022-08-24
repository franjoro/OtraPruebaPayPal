﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TravelQuiz3.aspx.cs" Inherits="OtraPruebaPayPal.TravelQuiz3" %>

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
        <h1>¡TravelQuiz! - Chalatenango</h1>
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
                </aside>
                <div class="container">
                    <section id="p0">
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large">
                            1.	¿Cuál es el cerro más popular de Chalatenango?
                        </asp:Label>
                        </label>
                        <label>
                            <asp:RadioButton ID="RB1correcto" runat="server" Text="El Pital"  GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton3" runat="server" Text="Miramundo" GroupName="grupo1" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton4" runat="server" Text="La peña" GroupName="grupo1" />
                        </label>
                    </section>
                    <section id="p1">
                        <asp:Label ID="Label3" runat="server" Font-Size="X-Large">
                            2.	¿El clima en Chalatenango es frio, templado o cálido?
                        </asp:Label>
                        <label>
                            <asp:RadioButton ID="RadioButton5" runat="server" Text="Es un departamento caliente" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB2correcto" runat="server" Text="Es un departamento templado y aveces frío" GroupName="grupo2" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton7" runat="server" Text="Es muy frío" GroupName="grupo2" />
                        </label>
                    </section>
                    <section id="p2">
                        <asp:Label ID="Label4" runat="server" Font-Size="X-Large">
                            3.	¿Es Chalatenango el departamento más grande de todo el país?
                        </asp:Label>
                        <label>
                            <asp:RadioButton ID="RadioButton8" runat="server" Text="Si" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton9" runat="server" Text="No, es el segundo más grande" GroupName="grupo3" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB3correcto" runat="server" Text="No, es el quinto más grande" GroupName="grupo3" />
                        </label>
                    </section>
                    <section id="p3">
                        <asp:Label ID="Label5" runat="server" Font-Size="X-Large">
                            4.	¿Cuántas playas tiene Chalatenango?
                        </asp:Label>
                        <label>
                            <asp:RadioButton ID="RadioButton11" runat="server" Text="5 playas" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RB4correcto" runat="server" Text="Ninguna" GroupName="grupo4" />
                        </label>
                        <label>
                            <asp:RadioButton ID="RadioButton13" runat="server" Text="8 playas" GroupName="grupo4" />
                        </label>
                    </section>
                    <div class="container text-center">
                        <!-- Button trigger modal -->
                        <asp:Button runat="server" type="button" id="pop" OnClick="pop_Click" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" Text="Comprobar" />
                    </div>
                    <p style="height: 2px"></p>
                    <div class="wrapper">
                        <asp:Label ID="LblCorrectas" runat="server" BorderStyle="Outset" ForeColor="Black" Height="50px" Width="300px" BorderColor="Black"></asp:Label>
                        <asp:Label ID="Label1" runat="server" BorderStyle="Outset" ForeColor="Black" Height="50px" Width="300px" BorderColor="Black"></asp:Label>
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
                            <asp:Label runat="server" id="respuesta2">Respuesta</asp:Label>
                        </div>
                        <div>
                            <asp:Label runat="server" id="respuesta3">Respuesta</asp:Label>
                        </div>
                        <div>
                            <asp:Label runat="server" id="respuesta4">Respuesta</asp:Label>
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
