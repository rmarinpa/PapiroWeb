<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="PapiroWeb.Web.Administracion.Clientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">Dirección</label>
                <asp:TextBox ID="txtDireccionEmpresa" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblComuna">Comuna</label>
                <asp:DropDownList ID="ddlComunaEmpresa" CssClass="form-control" runat="server" DataSourceID="EntityDataSource1" DataTextField="NombreComuna" DataValueField="idComunas"></asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EntitySetName="Comunas">
                </asp:EntityDataSource>
            </div>
            <div class="form-group col-md-2">
                <label for="lblCiudad">Ciudad</label>
                <asp:DropDownList ID="ddlCiudadEmpresa" CssClass="form-control" runat="server" DataSourceID="EntityDataSourceCiudad" DataTextField="NombreCiudad" DataValueField="IdCiudad"></asp:DropDownList>
                <asp:EntityDataSource ID="EntityDataSourceCiudad" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableFlattening="False" EntitySetName="Ciudades">
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
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblCargo">Cargo</label>
                <asp:TextBox ID="ddlCargo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblTelefono">Teléfono</label>
                <asp:TextBox ID="txtTelefonoComercial" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-2">
                <label for="lblEmail">E-Mail</label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
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
                <asp:DropDownList ID="ddlComuna" CssClass="form-control" runat="server"></asp:DropDownList>
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
                <asp:DropDownList ID="ddlFormaPago" CssClass="form-control" runat="server"></asp:DropDownList>
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
                <textarea id="txtAreaObservacion" class="form-control" rows="5"></textarea>
            </div>
            <div class="form-group col-md-6">
                <label for="lblFechaIngreso">Fecha de ingreso</label>
                <asp:Calendar ID="cldIngreso" runat="server"></asp:Calendar>
                <asp:TextBox ID="txtFechaIngreso" runat="server" Visible="false"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <label for="lblFechaActualizacion">Fecha de actualización</label>
                <asp:Calendar ID="cldActualizacion" runat="server"></asp:Calendar>
                <asp:TextBox ID="txtFechaActualizacion" runat="server" Visible="false"></asp:TextBox>
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
            <div class="form-group">
                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <hr />
        <asp:Button ID="btnAgregar" CssClass="btn btn-primary" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
        <asp:Button ID="btnModificar" CssClass="btn btn-primary" runat="server" Text="Modificar" />
        <asp:Button ID="btnEliminar" CssClass="btn btn-primary" runat="server" Text="Eliminar" />
        <asp:Button ID="btnLimpiar" CssClass="btn btn-primary" runat="server" Text="Limpiar" />
    </div>
</asp:Content>
