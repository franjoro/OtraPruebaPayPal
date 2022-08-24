<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarImagenPaginacion.aspx.cs" Inherits="OtraPruebaPayPal.AgregarImagenPaginacion" %>

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
    <title>Manage Image</title>
    <style>
        .center{
            width: 80vw;
            height: 60vh;
            margin:auto;
            overflow-y: auto;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <a class="navbar-brand" href="#">Manage and Edit Image</a>
            <asp:Button ID="btnInicio" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Volver" OnClick="btnInicio_Click"/>
        </nav>

        <div class="my-content">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Edit</h1>
                        <div class="myform-top">
                            <asp:Image ID="ImagePreview" Width="90%" CssClass="py-3" runat="server" />
                            
                        </div>
                        <div class="myform-bottom">
                                <div class="form-group">
                                    <asp:TextBox ID="IdImagen" runat="server" placeholder="ID imagen" type="text" class="form-control" onpaste="return false" onkeypress="return NumCheck(event, this)"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="Texto" runat="server" placeholder="Texto" type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" minlength="1" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="LabelFoto" runat="server" CssClass="form-label" Text="Foto"></asp:Label>
                                    <asp:FileUpload ID="PhotoFile" CssClass="form-control" name="File" runat="server" accept=".png, .jpg, .JPG, .PNG"/>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="LabelDepartamento" runat="server" CssClass="form-label" Text="Departments"></asp:Label>
                                    <asp:DropDownList ID="DDLDepartamento" CssClass="form-control" runat="server" OnTextChanged="DDLDepartamento_TextChanged">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem Value="Ahuachapán">Ahuachapán</asp:ListItem>
                                        <asp:ListItem Value="Cabañas">Cabañas</asp:ListItem>
                                        <asp:ListItem Value="La Libertad">La Libertad</asp:ListItem>
                                        <asp:ListItem Value="Morazán">Morazán</asp:ListItem>
                                        <asp:ListItem Value="La Paz">La Paz</asp:ListItem>
                                        <asp:ListItem Value="Santa Ana">Santa Ana</asp:ListItem>
                                        <asp:ListItem Value="San Miguel">San Miguel</asp:ListItem>
                                        <asp:ListItem Value="San Salvador">San Salvador</asp:ListItem>
                                        <asp:ListItem Value="San Vicente">San Vicente</asp:ListItem>
                                        <asp:ListItem Value="Sonsonate">Sonsonate</asp:ListItem>
                                        <asp:ListItem Value="La Unión">La Unión</asp:ListItem>
                                        <asp:ListItem Value="Usulután">Usulután</asp:ListItem>
                                    </asp:DropDownList>
                                </div>               
                                <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CssClass="mybtn" Width="30%" OnClick="btnSeleccionar_Click"></asp:Button>
                                <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="mybtn" Width="30%" OnClick="btnEditar_Click"></asp:Button>
                                <asp:Button ID="btnEliminar" runat="server" CssClass="mybtn" Width="30%" Text="Eliminar" OnClick="btnEliminar_Click" />
                                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                        </div>
                    </div>
                </div>
            </div>
         </div>
        <center><asp:Label ID="LBuscar" runat="server" CssClass="form-label" Text="Buscar:"></asp:Label>
                                    <asp:TextBox ID="txtBuscar" runat="server" type="" class="form-control" Width="30%" onpaste="return false"></asp:TextBox>
                                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="mybtn" Width="30%" OnClick="btnBuscar_Click"></asp:Button></center>
        <div class="mb-4">
            <div class="center">                                
                 <asp:GridView ID="ListaImagenes" AutoGenerateColumns="False" runat="server" class="display" CssClass="table table-dark table-striped table-bordered" AllowPaging="true" OnPageIndexChanging="ListaImagenes_PageIndexChanging">
                     <Columns>
                         <asp:TemplateField HeaderText="Id">
                            <ItemTemplate>
                               <%# Eval ("Id") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Text">
                            <ItemTemplate>
                               <%# Eval ("Texto") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                          <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Literal id="Literal1" runat="server" text='<%# Eval ("Direccion") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Departments">
                             <ItemTemplate>
                                 <%# Eval ("Departamento") %>
                             </ItemTemplate>
                         </asp:TemplateField>
                     </Columns>
                 
                     <EditRowStyle ForeColor="White" />
                 
                 </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
