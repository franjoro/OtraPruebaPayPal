<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="OtraPruebaPayPal.CompletePurchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/styles.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
    <title>Compra completada</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row justify-content-center">
        <div class="col-lg-7 col-xl-6">
            <h2>Complete Your Purchase</h2>
            <asp:Button ID="btnConfirmPurchase" class="btn btn-primary btn-xl" runat="server" Text="Confirm" OnClick="btnConfirmPurchase_Click"/>
            <asp:Literal ID="litInformation" runat="server"></asp:Literal>
        </div>
        </div>
        <div class="row justify-content-center">

            <div class="col-lg-7   col-xl-6">
                <h2>Quieres que se te envie un comprobante de pago?</h2>
                <h5>Solo escribe tu usuario es necesario</h5>
                <div class="form-floating mb-3">
                    <asp:TextBox ID="Username" runat="server" class="form-control" type="text" placeholder="Enter your username" data-sb-validations="required"></asp:TextBox>
                    <label for="Username">Usuario</label>
                    <div class="invalid-feedback" data-sb-feedback="email:required">Se requiere el ususario</div>
                </div>


                <div class="d-none" id="submit"></div>
            </div>
            <div class="row justify-content-center">

                <asp:Button ID="ComprobanteButton" runat="server" class="btn btn-primary btn-xl" type="submit" Text="Mandar comprobante" OnClick="ComprobanteButton_Click" />

            </div>
        </div>
        <!-- Submit Button-->
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
    </form>
</body>
</html>
