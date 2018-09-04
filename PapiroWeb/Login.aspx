<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PapiroWeb.Web.Login" %>

<!doctype html>
<html lang="es">

<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title></title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../../Scripts/bootstrap.min.js"></script>
    <script src="../../Scripts/umd/popper.min.js"></script>
    <script src="../../Scripts/bootstrap.bundle.min.js"></script>
    <script src="../../Scripts/Reloj.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>


<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <asp:Login ID="loginUsuario" runat="server" OnAuthenticate="loginUsuario_Authenticate">
                            <LayoutTemplate>
                                <div class="card-body">
                                    <h5 class="card-title text-center">Ingreso</h5>
                                    <form class="form-signin">
                                        <div class="form-label-group">
                                            <!-- Nombre de usuario -->
                                            <label for="ingresoUsuario">Usuario</label>
                                            <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="loginUsuario">*</asp:RequiredFieldValidator>
                                        </div>
                                        <!-- Contraseña -->
                                        <div class="form-label-group">
                                            <label for="ingresoPassword">Password</label>
                                            <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="loginUsuario">*</asp:RequiredFieldValidator>
                                        </div>
                                        <div class="custom-control custom-checkbox mb-3">
                                            <!-- Checkbox-->
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." />

                                        </div>
                                        <div class="form-label-group">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </div>
                                        <!-- Boton -->
                                        <asp:Button ID="LoginButton" CssClass="btn btn-lg btn-primary btn-block text-uppercase" runat="server" CommandName="Login" Text="Inicio de sesión" ValidationGroup="loginUsuario" />
                                        <hr class="my-4" />
                                        <!-- Otros botones-->
                            </LayoutTemplate>
                        </asp:Login>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
