<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="PapiroWeb.Web.Administracion.Clientes" %>


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
                        url: "Clientes.aspx/GetRazon",
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
                        url: "Clientes.aspx/GetRut",
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

        <h2 class="text-center">Información general</h2>
        <hr />
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="lblRut">Rut Empresa</label>
                <asp:TextBox ID="txtRutEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscarRut" CssClass="btn btn-primary" runat="server" Text="Buscar por rut" OnClick="btnBuscarRut_Click" />
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
            <div class="form-group">
                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">Dirección</label>
                <asp:TextBox ID="txtDireccionEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblComuna">Comuna</label>
                <asp:DropDownList ID="ddlComunaEmpresa" CssClass="form-control" runat="server" DataSourceID="EntityDataComuna" DataTextField="NombreComuna" DataValueField="IdComuna"></asp:DropDownList>
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
        <h2 class="text-center">Información contacto pago proveedores</h2>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="lblNombre">Nombre</label>
                <asp:TextBox ID="txtNombreProveedores" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-4">
                <label for="lblCargo">Cargo</label>
                <asp:TextBox ID="txtCargoProveedores" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblTelefono">Teléfono</label>
                <asp:TextBox ID="txtTelefonoProveedores" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEmail">E-Mail</label>
                <asp:TextBox ID="txtEmailProveedores" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEmail">E-Mail 2</label>
                <asp:TextBox ID="txtEmailProveedores2" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <hr />
        <h2 class="text-center">Información contacto despacho</h2>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="lblNombre">Nombre</label>
                <asp:TextBox ID="txtNombreDespacho" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblTelefono">Teléfonos</label>
                <asp:TextBox ID="txtTelefonoDespacho" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblTelefonoDespacho2">Teléfono de contacto</label>
                <asp:TextBox ID="txtTelefonoContacto" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblComuna">Comuna</label>
                <asp:DropDownList ID="ddlComuna" CssClass="form-control" runat="server" DataSourceID="EntityDataComuna" DataTextField="NombreComuna" DataValueField="IdComuna"></asp:DropDownList>
            </div>
            <div class="form-group col-md-6">
                <label for="lblDireccionDespacho">Dirección</label>
                <asp:TextBox ID="txtDireccionDespacho" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEmail">E-Mail</label>
                <asp:TextBox ID="txtEmailDespacho" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <hr />
        <h2 class="text-center">Condiciones de pago</h2>
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="lblPago">Condición de pago</label>
                <asp:TextBox ID="txtCondicionPago" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblFormaPago">Forma de pago</label>
                <asp:DropDownList ID="ddlTipoPago" CssClass="form-control" runat="server" DataSourceID="EntityDataTipoPago" DataTextField="NombreTipoPago" DataValueField="IdTipoPago"></asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataTipoPago" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EntitySetName="TiposPagos" EnableInsert="True">
                </asp:EntityDataSource>
            </div>
            <div class="form-group col-md-2">
                <label for="lblLineaCredito">Línea de credito</label>
                <asp:TextBox ID="txtLineaCredito" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblDicom">Dicom</label>
                <asp:TextBox ID="txtDicom" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblTelefono">Señal Advertencia</label>
                <asp:DropDownList ID="ddlSeñal" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group col-md-2">
                <label for="lblTelefono">Teléfono</label>
                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <hr />
        <h2 class="text-center">Ejecutivos</h2>
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="lblDigital">Ejec. Digital</label>
                <asp:DropDownList ID="ddlEjecDigital" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecMedia">Ejec. Media</label>
                <asp:DropDownList ID="ddlEjecMedia" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecLed">Ejec. Led</label>
                <asp:DropDownList ID="ddlEjecLed" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecMac">Ejec Mac</label>
                <asp:DropDownList ID="ddlEjecMac" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecNew">Ejec. New</label>
                <asp:DropDownList ID="ddlEjecNew" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecCobranza">Ejec. Cobranza</label>
                <asp:DropDownList ID="ddlEjecCobranza" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
        </div>
        <hr />
        <h2 class="text-center">Fechas y observaciones</h2>
        <div class="form-row">
            <div class="form-group col-md-12">
                <label for="lblObservaciones">Observaciones</label>
                <asp:TextBox ID="txtAreaObservacion" CssClass="form-control" Height="100" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <label for="lblFechaIngreso">Fecha de ingreso</label>
                <asp:TextBox ID="txtFechaIngreso" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <label for="lblFechaActualizacion">Fecha de actualización</label>
                <asp:TextBox ID="txtFechaActualizacion" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblReferencia">Referencia</label>
                <asp:TextBox ID="txtReferencia" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecNew">Ficha cliente</label>
                <asp:TextBox ID="txtFichaCliente" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-1">
                <label for="lblEjecCobranza">Maquinas</label>
                <asp:TextBox ID="txtMaquinas" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecCobranza">Encargado Prod</label>
                <asp:TextBox ID="txtEncargadoProd" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecCobranza">Maquinas 1,60MT</label>
                <asp:TextBox ID="txtMaquinas160" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecCobranza">Maquinas 1,80MT</label>
                <asp:TextBox ID="txtMaquinas180" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEjecCobranza">Maquinas 3,20MT</label>
                <asp:TextBox ID="txtMaquinas320" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

        </div>
        <hr />
        <asp:Button ID="btnAgregar" CssClass="btn btn-primary" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
        <asp:Button ID="btnModificar" CssClass="btn btn-primary" runat="server" Text="Modificar" />
        <asp:Button ID="btnEliminar" CssClass="btn btn-primary" runat="server" Text="Eliminar" />
        <asp:Button ID="btnLimpiar" CssClass="btn btn-primary" runat="server" Text="Limpiar" />
    </div>

</asp:Content>

