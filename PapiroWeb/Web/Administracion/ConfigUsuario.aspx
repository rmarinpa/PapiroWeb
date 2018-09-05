<%@ Page Title="Configuración de usuario" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="ConfigUsuario.aspx.cs" Inherits="PapiroWeb.Web.Administracion.ConfigUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <h2 class="text-center">Administración de usuarios</h2>
        <div class="col-lg-4 col-lg-offset-4">
            <asp:GridView ID="gvUsuarios" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>
