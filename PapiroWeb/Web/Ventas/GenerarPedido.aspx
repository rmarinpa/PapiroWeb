<%@ Page Title="Generación de pedido" Language="C#" MasterPageFile="~/Web/Ventas/Layout.Ventas.Master" AutoEventWireup="true" CodeBehind="GenerarPedido.aspx.cs" Inherits="PapiroWeb.Web.Ventas.GenerarPedido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--AutoComplete-->
    <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#<%=txtRazonSocial.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "GenerarPedido.aspx/GetRazon",
                        data: "{'pre':'" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf=8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return { value: item }
                            }))
                        },
                        error: function (XMLHttpRequest, textStatus, erroThrown) {
                            alert(textStatus);
                        }
                    });
                }
            });
        });
    </script>


    <script type="text/javascript">
        $(function () {
            $('#<%=txtRutEmpresa.ClientID%>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "GenerarPedido.aspx/GetRut",
                        data: "{'pre':'" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf=8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return { value: item }
                            }))
                        },
                        error: function (XMLHttpRequest, textStatus, erroThrown) {
                            alert(textStatus);
                        }
                    });
                }
            });
        });
    </script>

    <!--FinAutoComplete-->

    <div class="container">

        <h2 class="text-center">Pedido de venta</h2>
        <hr />
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="lblRut">Rut Empresa</label>
                <asp:TextBox ID="txtRutEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarRut" CssClass="btn btn-primary" runat="server" Text="Buscar por rut" OnClick="btnBuscarRut_Click" />
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    Verificar estado de cliente</button>
                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group col-md-4">
                <label for="lblRazonSocial">Razón social</label>
                <asp:TextBox ID="txtRazonSocial" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarRazon" CssClass="btn btn-primary" runat="server" Text="Buscar por razón social" OnClick="btnBuscarRazon_Click" />
            </div>
            <div class="form-group col-md-4">
                <label for="lblGiro">Giro</label>
                <asp:TextBox ID="txtGiro" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">Dirección</label>
                <asp:TextBox ID="txtDireccionEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblComuna">Comuna</label>
                <asp:DropDownList ID="ddlComunaEmpresa" CssClass="form-control" runat="server" DataSourceID="EntityDataComunas" DataTextField="NombreComuna" DataValueField="IdComuna"></asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataComunas" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EntitySetName="Comunas">
                </asp:EntityDataSource>
            </div>
            <div class="form-group col-md-2">
                <label for="lblCiudad">Ciudad</label>
                <asp:DropDownList ID="ddlCiudadEmpresa" CssClass="form-control" runat="server" DataSourceID="EntityDataCiudad" DataTextField="NombreCiudad" DataValueField="IdCiudad"></asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataCiudad" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EntitySetName="Ciudades">
                </asp:EntityDataSource>
            </div>
            <div class="form-group col-md-2">
                <label for="lblTelefono">Teléfono</label>
                <asp:TextBox ID="txtTelefonoEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
            </div>



        </div>
        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Historial de pedido
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:GridView ID="gvHistorialCliente" runat="server"></asp:GridView>
                    <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                    </table>
                </div>
            </div>

            <div class="card-footer small text-muted">Actualizado: </div>
        </div>

        <!-- Fin del DataTable-->
        <hr />
        <h2 class="text-center">Información contacto comercial</h2>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="lblNombre">Nombre</label>
                <asp:TextBox ID="txtIDContacto" Visible="false" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtNombreContacto" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblCargo">Cargo</label>
                <asp:DropDownList ID="ddlTipoCargo" CssClass="form-control" runat="server" DataSourceID="EntityDataCargo" DataTextField="Cargo" DataValueField="IdTipoCargo"></asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataCargo" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EntitySetName="TiposCargos">
                </asp:EntityDataSource>
            </div>
            <div class="form-group col-md-2">
                <label for="lblTelefono">Teléfono</label>
                <asp:TextBox ID="txtTelefonoComercial" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEmail">E-Mail</label>
                <asp:TextBox ID="txtEmailContacto" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <hr />



        <h2 class="text-center">Modulo de compras</h2>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="lblCodigo">Código de producto</label>
                <asp:TextBox ID="txtCodigoProducto" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <label for="lblDescripcion">Descripción</label>
                <asp:TextBox ID="txtDescripcion" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
            <div class="form-group col-md-2">
                <label for="lblMarca">Marca</label>
                <asp:TextBox ID="txtMarca" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblAncho">Ancho</label>
                <asp:TextBox ID="txtAncho" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblLargo">Largo</label>
                <asp:TextBox ID="txtLargo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblarea">Área Calculada</label>
                <asp:TextBox ID="txtAreaCalculada" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblAncho">Familia</label>
                <asp:TextBox ID="txtFamilia" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblTipoDocumento">Tipo de documento</label>
                <asp:TextBox ID="txtTipoDocumento" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>
            </div>
        </div>

        <h2 class="text-center">Venta</h2>
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="lblCodigo">Cantidad</label>
                <asp:TextBox ID="txtCantidad" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblPreciom2">Precio M2</label>
                <asp:TextBox ID="txtPrecioM2" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
            <div class="form-group col-md-2">
                <label for="lblPrecioMax">Precio Max</label>
                <asp:TextBox ID="txtPrecioMax" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblPrecioMin">Precio Min</label>
                <asp:TextBox ID="txtPrecioMin" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblAreaTotal">Área Total</label>
                <asp:TextBox ID="txtAreaTotal" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblPrecioUni">Precio Uni</label>
                <asp:TextBox ID="txtPrecioUni" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblMontoNeto">Monto Neto</label>
                <asp:TextBox ID="txtMontoNeto" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

        </div>


        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Historial de pedido
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    </table>
                </div>
            </div>

            <div class="card-footer small text-muted">Actualizado: </div>
        </div>

        <!-- Fin del DataTable-->

        <asp:Button ID="btnGenerarNotaPedido" CssClass="btn btn-primary" runat="server" Text="Generar Nota de Pedido" />
    </div>



    <!--MODAL -->

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Estado de cuenta de cliente</h5>
                    <asp:GridView ID="gvEstadoCliente" runat="server"></asp:GridView>
                </div>
                <div class="modal-body">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary">Imprimir</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--Fin del modal -->
</asp:Content>
