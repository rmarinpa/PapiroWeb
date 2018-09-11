<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PapiroWeb.Web.Index" %>

<!doctype html>
<html lang="es">

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home</title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/umd/popper.min.js"></script>
    <script src="../../Scripts/bootstrap.bundle.min.js"></script>
    <link href="../../Content/Master.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>


<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="Index">
                                <i class="fa fa-home"></i>
                                Home</a>
                        <li>
                            <i class="fa fa-sign-out-alt"></i>
                            <asp:LoginStatus ID="LoginStatus1" runat="server" />
                        </li>
                    </ul>
                </div>
            </nav>

            <br />

            <!-- Footer -->
            <footer class="page-footer font-small blue pt-4">
                <!-- Footer Links -->
                <div class="container-fluid text-center text-md-left">
                    <!-- Grid row -->
                    <div class="row">
                        <!-- Grid column -->
                        <div class="col-md-6 mt-md-0 mt-3">
                            <!-- Content -->
                            <h5 class="text-uppercase">Misión y Visión</h5>
                            <p>Entregar la más diversa gama de materiales de impresión de alta calidad, en distintos formatos ofreciendo todos los conocimientos de la empresa para ayudar a crecer e innovar a nuestros clientes.</p>
                        </div>
                        <!-- Grid column -->
                        <hr class="clearfix w-100 d-md-none pb-3">
                        <!-- Grid column -->
                        <!-- Grid column -->
                        <!-- Grid column -->
                        <div class="col-md-3 mb-md-0 mb-3">
                            <!-- Links -->
                            <h5 class="text-uppercase">Contacto</h5>
                            <ul class="list-unstyled">
                                <li>
                                    <i class="fa fa-map-marker-alt"></i>
                                    <p>Alberto Riesco 0223, B3. Huechuraba, Stgo de Chile.</p>
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i>
                                    <p>+562 22477791</p>
                                </li>
                                <li>
                                    <i class="fa fa-envelope"></i>
                                    <p>info@papirochile.cl</p>
                                </li>
                            </ul>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
                <!-- Footer Links -->
                <!-- Copyright -->
                <div class="footer-copyright text-center py-3">
                    ©                    
                    <script>
                        var f = new Date();
                        document.write(f.getFullYear());
                    </script>
                    Copyright:
      <a href="https://www.papirochile.cl/">papirochile.cl</a>
                </div>
                <!-- Copyright -->
            </footer>
            <!-- Footer -->
        </div>
    </form>
</body>
</html>
