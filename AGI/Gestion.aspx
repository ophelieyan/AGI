<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gestion.aspx.cs" Inherits="AGI.Gestion" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="jumbotron">
       <div class="row">
        <div class="col-md-4">
            <p>
                <a class="btn btn-gestion" href="GestionArticlesInfo">Gestion Article</a>
                <br/>
                <a class="btn btn-gestion" href="#">Gestion Clients</a>
                <br/>
                <a class="btn btn-gestion" href="#">Gestion Fournisseurs</a>
                <br/>
            </p>
        </div>
        <div class="col-md-4">
            <p>
                <a class="btn btn-gestion" href="#">Gestion Hierarchie</a>
                <br/>
                <a class="btn btn-gestion" href="#">Gestion Statiques</a>
                <br/>
            </p>
        </div>
        <div class="col-md-4">
            <p>
                <a class="btn btn-gestion" href="#">DYNASYS</a>
                <br/>
                <a class="btn btn-gestion" href="#">ORTEMS</a>
                <br/>
            <%--</p>--%>
        </div>
      </div>
    </div>
</asp:Content>
