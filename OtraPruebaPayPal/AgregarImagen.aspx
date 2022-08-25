<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarImagen.aspx.cs" Inherits="OtraPruebaPayPal.AgregarImagen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet" />
<link href="EstilosCss/EstilosStorage.css" rel="stylesheet" />
<script src="SweetAlert/sweetalert2.js"></script>
<script src="SweetAlert/sweetalert2.all.min.js"></script>
    <title>Add image</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <a class="navbar-brand" href="#">Add Image</a>
            <asp:Button ID="btnInicio" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Volver" OnClick="btnInicio_Click"  />
        </nav>
        <div>
        </div>
        <div class="my-content">
            <div class="container">
                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Add</h1>
                        <div class="myform-top">
                        </div>
                        <div class="myform-bottom">
                            <form role="form" action="" method="post" class="">
                                <div class="form-group">
                                    <asp:TextBox ID="TextoImagen" runat="server" placeholder="Text" type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" minlength="1" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="LabelFoto" runat="server" CssClass="form-label" Text="Foto"></asp:Label>
                                    <asp:FileUpload ID="PhotoFile" CssClass="form-control" name="File" runat="server" accept=".png, .jpg, .JPG, .PNG"/>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="LabelDepartamento" runat="server" CssClass="form-label" Text="Departments"></asp:Label>
                                    <asp:DropDownList ID="DDLDepartamento" CssClass="form-control" runat="server">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem Value="1">Ahuachapán</asp:ListItem>
                                        <asp:ListItem Value="2">Cabañas</asp:ListItem>
                                        <asp:ListItem Value="5">La Libertad</asp:ListItem>
                                        <asp:ListItem Value="6">Morazán</asp:ListItem>
                                        <asp:ListItem Value="7">La Paz</asp:ListItem>
                                        <asp:ListItem Value="8">Santa Ana</asp:ListItem>
                                        <asp:ListItem Value="9">San Miguel</asp:ListItem>
                                        <asp:ListItem Value="10">San Salvador</asp:ListItem>
                                        <asp:ListItem Value="11">San Vicente</asp:ListItem>
                                        <asp:ListItem Value="12">Sonsonate</asp:ListItem>
                                        <asp:ListItem Value="13">La Unión</asp:ListItem>
                                        <asp:ListItem Value="14">Usulután</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="mybtn" OnClick="btnAgregar_Click"></asp:Button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
