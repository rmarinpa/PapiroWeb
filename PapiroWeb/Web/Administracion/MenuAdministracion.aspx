<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Administracion/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="MenuAdministracion.aspx.cs" Inherits="PapiroWeb.Web.Administracion.MenuAdministracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h3>Bienvenido: </h3>
    <p>
    <asp:LoginName ID="LoginName1" runat="server" />
    </p>
    <hr />
    <div class="container">
        <div class="row">
            <div class="card-deck">
                <div class="card">
                    <img class="card-img-top" src="../../img/imgAdministracion/1d32a9_01901ef141ac41d9b1ed74df5ed4fad0~mv2.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        <p class="card-text"><small class="text-muted">Ultima actualización: 2018</small></p>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="../../img/imgAdministracion/1d32a9_9a80a14487c14fd38610be9cf61766f7~mv2.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                        <p class="card-text"><small class="text-muted">Ultima actualización: 2018</small></p>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="../../img/imgAdministracion/1d32a9_1f6b8878ea6643c4bca2409f37b69369~mv2.webp.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                        <p class="card-text"><small class="text-muted">Ultima actualización: 2018</small></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
