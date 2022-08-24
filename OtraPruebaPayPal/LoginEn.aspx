<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginEn.aspx.cs" Inherits="OtraPruebaPayPal.LoginEn" %>

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
    <title></title>
</head>
<body>
    <form id="Login" runat="server" data-sb-form-api-token="API_TOKEN">
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">Login</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive #navbarResponsive1" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <svg class="svg-inline--fa fa-bars" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="bars" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="">
                        <path fill="currentColor" d="M0 96C0 78.33 14.33 64 32 64H416C433.7 64 448 78.33 448 96C448 113.7 433.7 128 416 128H32C14.33 128 0 113.7 0 96zM0 256C0 238.3 14.33 224 32 224H416C433.7 224 448 238.3 448 256C448 273.7 433.7 288 416 288H32C14.33 288 0 273.7 0 256zM416 448H32C14.33 448 0 433.7 0 416C0 398.3 14.33 384 32 384H416C433.7 384 448 398.3 448 416C448 433.7 433.7 448 416 448z"></path></svg><!-- <i class="fas fa-bars"></i> Font Awesome fontawesome.com -->
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-0"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="HomePage.aspx">Homepage</a></li>
                        <li class="nav-item mx-0 mx-lg-"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="register.aspx">Register</a></li>
                    </ul>
                </div>

            </div>
        </nav>
        <br />
        <br />
        <br />
        <br />
        <br />

        <div class="row justify-content-center">
            <div class="col-lg-7   col-xl-6">
                <!-- Email address input-->
                <div class="form-floating mb-3">
                    <asp:TextBox ID="Username" runat="server" class="form-control" type="text" placeholder="Enter your username" data-sb-validations="required"></asp:TextBox>
                    <label for="Username">User</label>
                    <div class="invalid-feedback" data-sb-feedback="email:required">User is required.</div>
                </div>
                <div class="form-floating mb-3">
                    <asp:TextBox ID="Password" runat="server" class="form-control" type="password" placeholder="Enter your password here..." Style="height: 10rem" data-sb-validations="required"  oncopy="return false" onpaste="return false" oncut="return false"></asp:TextBox>
                    <input type="checkbox" onclick="myFunction()" />Show Password

                    <script>
                        function myFunction() {
                            var x = document.getElementById("Password");
                            if (x.type === "password") {
                                x.type = "text";
                            } else {
                                x.type = "password";
                            }
                        }
                    </script>
                    <label for="Password">Password</label>
                    <div class="invalid-feedback" data-sb-feedback="password:required">Password is required.</div>
                </div>
                <!-- Submit success message-->
                <!---->
                <!-- This is what your users will see when the form-->
                <!-- has successfully submitted-->
                <div class="d-none" id="submitSuccessMessage">
                    <div class="text-center mb-3">
                        <div class="fw-bolder">Form submission successful!</div>
                        To activate this form, sign up at
                                    <br />
                        <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                    
                    </div>
                </div>
                <div class="row justify-content-center">

                    <asp:Button ID="lgnButton" runat="server" class="btn btn-primary btn-xl" type="submit" Text="Ingresar" OnClick="lgnButton_Click1" />
                    
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-7 col-xl-6">
                    <div "form-floating mb-3">
                        <asp:HyperLink ID="Forgot" runat="server" NavigateUrl="~/ForgotPsswrdEn.aspx">Did you forget your password? press here</asp:HyperLink>
                    </div>
                </div>
                </div>
                
            </div>
        </div>


        <!-- Submit Button-->


        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>

    </form>
</body>
</html>
