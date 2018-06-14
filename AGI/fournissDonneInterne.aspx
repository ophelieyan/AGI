﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fournissDonneInterne.aspx.cs" Inherits="AGI.fournissDonneInterne" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link href="Css/articleInfo.css" type='text/css' rel='stylesheet' /> 

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="jquery-ui.css" rel="stylesheet" type="text/css" />  
    <script src="jquery.min.js" type="text/javascript"></script>  
    <script src="jquery-ui.min.js" type="text/javascript"></script> 
    <script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.8.0.js"></script>  
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.22/jquery-ui.js"></script>   
    <title>Info générales d'Articles</title>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
   <!-- <webopt:bundlereference runat="server" path="~/Content/css" />-->
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>

<body>
<%--<div class ="menu">
    <asp:Image ID="MainCompanylogo" runat="server" Height="76px" Width="150px" ImageUrl="Images/logo.png"/>
</div>--%>
<div id ="topMenu">
<ul>
     <li class ="menu">
         <asp:Image ID="MainCompanylogo" runat="server" Height="76px" Width="150px" ImageUrl="Images/logo.png"/>
     </li>
      <li class="menu-element1 ">
        <a href="gestionArticles" class="dropbtn">ARTICLES</a>
        <div class="submenu">
          <a href="#">Fiche Article</a>
             <div class="sousSubmenu">
                 <a href="#">Infos Générales</a>
                 <a href="#">Données Logistiques</a>
                 <a href="#">Données Légales</a>
                 <a href="#">Référencement/Pays</a>
                 <a href="#">Substitution/Remplacemeent</a>
             </div>
          <a href="#">Données Techniques</a>
             <div class="sousSubmenu">
                 <a href="#">Infos Articles</a>
                 <a href="#">Nomenclature</a>
                 <a href="#">Nomenclature Inverses</a>
                 <a href="articleGamOperat">Gamme Opératoire</a>
             </div>
          <a href="#">Données Achats</a>
             <div class="sousSubmenu">
                 <a href="#">Infos Article</a>
                 <a href="#">Insfos Commande</a>
             </div>
        </div>
      </li>
      <li class="menu">
        <a href="InfoGenerClients" class="dropbtn">CLIENTS</a>
        <div class="submenu">
          <a href="#">Flux codification Clients</a>
          <a href="InfoGenerClients">Infos générales</a>
          <a href="gestionClientsInfo2">Infos métiers</a>
          <a href="gestionHieraClient">Hierarchie client</a>
        </div>
      </li>
      <li class="menu">
        <a href="gestionFournisseurs" class="dropbtn">FOURNISSEURS</a>
        <div class="submenu">
          <a href ="#">flux codification fournisseurs</a>
          <a href="gestionFournisseursInfo">Infos générales</a>
          <a href="gestionFourInfoMetier">Infos métiers</a>
          <a href="gestionFourArtic">Fournisseur/Article</a>
        </div>
      </li>
      <li class="menu">
        <a href="gestionData" class="dropbtn">DATA</a>
        <div class="submenu">       
          <a href="#">Flux Activity</a>
          <a href="#">Flux Amalgamme</a>
          <a href="#">Flux APV</a>
          <a href="#">Flux Article Codification</a>
          <a href="#">Flux Article Record</a>
          <a href="#">Flux Article Sizing</a>
          <a href="#">Flux BOM</a>
          <a href="#">Flux BUYER PURVEYOR</a>
          <a href="#">Flux Currency</a>
          <a href="#">Flux Customer Record</a>
          <a href="#">Flux Customer Hierarchie</a>
          <a href="#">FLux DAS</a>
          <a href="#">Flux Dynasys</a>
          <a href="#">Flux Labelling</a>
          <a href="#">Flux Life Cycle</a>
          <a href="#">Flux Logistique</a>
          <a href="fluxIMS">Flux IMS</a>
          <a href="#">Flux ISO639 Language ISO3166 Country</a>
          <a href="#">Flux OF</a>
          <a href="#">Flux Ortems</a>
          <a href="#">Flux Partner</a>
          <a href="#">Flux Purchase Family</a>
          <a href="#">Flux Stock</a>
          <a href="#">Flux Supplier Prices</a>
          <a href="#">Flux Machine</a>         
        </div>
      </li>
      <li class="menu">
          <a href="gestionDonTech" class="dropbtn">DONNEES TECHNIQUES</a>
      </li>

      <li style="float:right"> 
          <form class="form-wrapper">
              <input type="text" id="search" placeholder="Recherche" required>
              <input type="submit" value="OK" id="submit">
          </form>
      </li>
</ul>
</div>
<div>
    <form runat ="server" >
    <div class ="mainContent">
        <div class="row">
            <div class ="col-lg-2">
                 <div class="sideBar">
                    <asp:TreeView ID="TreeViewSideMenu" runat="server"  BorderStyle="None"
                         ForeColor ="black" style="margin-top:0px;font-family :Arial, Helvetica, sans-serif;" >
                        <HoverNodeStyle ForeColor="#555"  BackColor ="#edb93b"/>
                        <Nodes>
                            <asp:TreeNode Text="Fiche Fournisseurs" Value="Fiche Fournisseurs" NavigateUrl="~/infoGenerFourniss.aspx">
                                <asp:TreeNode Text="Infos Générales" Value="Infos Générales" NavigateUrl="~/infoGenerFourniss.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Données Internes" Value="Données Internes" NavigateUrl="~/fournissDonneInterne.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes> 
                        <Nodes>
                            <asp:TreeNode Text="Fiche Articles" Value="Fiche Articles" NavigateUrl="~/fournissArticle.aspx">
                            </asp:TreeNode>
                        </Nodes> 
                         <NodeStyle Font-Size="12px" ForeColor="white" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px"  />
                         <ParentNodeStyle Font-Bold="False" />
                         <SelectedNodeStyle Font-Underline="True" ForeColor="#555" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>   
                 </div>
            </div>
            <div class="col-lg-9">
               <div>
                    <ul id="tabnav">
                       <li><a href="infoGenerFourniss">Infos Générales</a></li>
                       <li class="active"><a href="fournissDonneInterne">Données Internes</a></li>
                    </ul>
                </div>
                <br />
                <div class="row">
                    <input type="text" placeholder="Recherche" name ="search" id="searchFourniss"  autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:400px;height:30px; border-radius:6px;margin-left:2px"/> 
                    <br />
                    <asp:ImageButton ID="btnRecheFourniss" runat="server" OnClick ="findFourniss" Height="18px" Width="35px" />
                </div>
                <br />
                <div class ="row">
                <div class="col-lg-2" >
                    <br/>
                    <asp:Label ID="lblStatFourniss" runat="server" Text="Statut Fournisseur" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblGroupFourniss" runat="server" Text="Groupe Fournisseur" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblContrat" runat="server" Text="Contrat" Class="lblInfo"></asp:Label>
                    <br/>
                    <br/>
                    <asp:Label ID="lblAcheteur" runat="server" Text="Acheteur" Class="lblInfo"></asp:Label>
                    <br/>                     
                    <asp:Label ID="lblApprovs" runat="server" Text="Approvisionneur" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblAmalg" runat="server" Text="Amalgamme" Class="lblInfo"></asp:Label>
                    <br/>
                    <br/>
                </div>
                <div class="col-lg-4" >
                    <br/>
                    <asp:TextBox ID="tbxStatFourniss" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxGroupFourniss" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxContrat" runat="server" Class="tbxInfo"></asp:TextBox>     
                    <br/>
                    <br/>
                    <asp:TextBox ID="tbxAcheteur" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxApprovs" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxAmalg" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />
                </div>
              </div>
               <div class ="col-lg-1">
               </div>
            </div>          
        </div>
    </div>
    </form>
</div>

<div class="footer">
     <p>&copy; <%: DateTime.Now.Year %> - Alès Groupe</p>
</div>
</body>

</html>

<script type="text/javascript">  
    $(document).ready(function () {
        SearchText();  
    });  
    function SearchText() {  
        $("#searchFourniss").autocomplete({
            source: function(request, response) {  
                $.ajax({  
                    type: "POST",   
                    url: "api/getFournisseurController",
                    data: "param=" + document.getElementById('searchFourniss').value,
                    success: function (data) {
                        var array = data.split(",");
                        response(array);
                    },  
                    error: function (resp, status, xhr) {
                        alert("param=" + document.getElementById('searchFourniss').value)
                    }
                });  
            }  
        });  
    }  
</script>  
