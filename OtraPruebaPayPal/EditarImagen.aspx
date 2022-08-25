<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarImagen.aspx.cs" Inherits="OtraPruebaPayPal.EditarImagen" EnableEventValidation="false"  %>

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
                                    <asp:TextBox ID="IdImagen" runat="server" placeholder="ID imagen" type="text" class="form-control" onpaste="return false" ></asp:TextBox>
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

                                <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="mybtn" Width="30%" OnClick="btnEditar_Click"></asp:Button>
                                <asp:Button ID="btnEliminar" runat="server" CssClass="mybtn" Width="30%" Text="Eliminar" OnClick="btnEliminar_Click" />
                            <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mb-4">
            <div class="center">
                <asp:GridView ID="ListaImagenes" AutoGenerateColumns="False" runat="server" CssClass="table bg-dark table-bordered grid" RowHeaderColumn="Texto" ShowHeaderWhenEmpty="True" OnRowCommand="ListaImagenes_OnRowCommand" >
                    <Columns>
                        <asp:BoundField DataField="Texto" HeaderText="Text" />
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval ("Direccion") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="nombre_departamento" HeaderText="Department" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" CommandName="cargarDatos"
                                    Text="Editar imagen" CommandArgument='<%# Eval("id") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                  
                 
                 </asp:GridView>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(function () {
        $(".grid").DataTable(
        {
            bLengthChange: true,
            lengthMenu: [[5, 10, -1], [5, 10, "All"]],
            bFilter: true,
            bSort: true,
            bPaginate: true
        });
    });
</script>

</body>
</html>
