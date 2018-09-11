<%@ Page Title="Configuración de usuario" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="ConfigUsuario.aspx.cs" Inherits="PapiroWeb.Web.Administracion.ConfigUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <h2 class="text-center">Administración de usuarios</h2>
        <div class="col col-md-4">
            <asp:GridView ID="gvUsuarios" CssClass="table" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserName" DataSourceID="EntityDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="IdDepartamento" HeaderText="IdDepartamento" SortExpression="IdDepartamento" />
                </Columns>
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=PapiroWebEntities" DefaultContainerName="PapiroWebEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Usuario">
            </asp:EntityDataSource>
        </div>
    </div>
</asp:Content>
