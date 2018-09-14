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
                <asp:TextBox ID="txtRutEmpresa" runat="server"></asp:TextBox>
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
                <asp:DropDownList ID="ddlComunaEmpresa" CssClass="form-control" runat="server" DataSourceID="EntityDataComuna" DataTextField="NombreComuna" DataValueField="idComunas"></asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataComuna" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EntitySetName="Comunas">
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
                <asp:DropDownList ID="ddlTipoCargo" CssClass="form-control" runat="server" DataSourceID="EntityDataTipoCargo" DataTextField="Cargo" DataValueField="IdTipoCargo"></asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataTipoCargo" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EntitySetName="TiposCargos">
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

        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Data Table Example
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <asp:GridView ID="gvHistorialCliente" runat="server"></asp:GridView>
                    </table>
                </div>
            </div>

            <div class="card-footer small text-muted">Actualizado: </div>
        </div>

    </div>

    <asp:Button ID="btnModificar" CssClass="btn btn-primary" runat="server" Text="Modificar" />
    <asp:Button ID="btnEliminar" CssClass="btn btn-primary" runat="server" Text="Eliminar" />
    <asp:Button ID="btnLimpiar" CssClass="btn btn-primary" runat="server" Text="Limpiar" />

    </div>

    <!--MODAL -->

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Estado de cuenta de cliente</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--Fin del modal -->
</asp:Content>
