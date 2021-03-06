﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestionArticles.aspx.cs" Inherits="AGI.gestionArticle" %>

<!DOCTYPE html>

<style>

#topMenu ul {
    list-style-type: none;
    margin-left:0px;
    padding: 0;
    overflow: hidden;
    background-color: #0f4396; 
    font-family :Arial, Helvetica, sans-serif;
    width:100%;
    border-radius:10px;
}

#topMenu li {
    float: left;
}

#topMenu li:last-child {
    border-right :none;
}
 
#topMenu li.menu-element1 {
    padding-left:60px;
}

#topMenu li a, .dropbtn{
    display: inline-block;
    color: white;
    text-align: center;
    padding: 30px 4px;
    text-decoration: none;
    padding-left:40px;
    padding-right:20px;
}

#topMenu li a:hover, .menu:hover .dropbtn {
    background-color: #edb93b;
}

#topMenu li.menu {
    display: inline-block;
}

#topMenu .submenu {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

#topMenu .submenu a {
    color: black;
    padding: 7px 8px;
    text-decoration: none;
    display: block;
    text-align: left;
    border-bottom: 1px solid #c9c9c9;
    font-family :Arial, Helvetica, sans-serif;
}

#topMenu .submenu a:last-child {
    border-bottom: none;
}

#topMenu .submenu a:hover {
    background-color: lightcyan;
}

#topMenu .menu:hover .submenu {
    display: block;
}

#topMenu .menu-element1:hover .submenu {
    display: block;
}

.form-wrapper {
    width: 250px;
    padding: 5px;
    margin: 20px auto; 
    margin-right :4px;  
    overflow: hidden;
    border-width: 1px;
    border-style: solid;
    border-color: #dedede #bababa #aaa #bababa;
    box-shadow: 0 3px 3px rgba(255,255,255,.1), 0 3px 0 #bbb, 0 4px 0 #aaa, 0 5px 5px #444;
    border-radius: 10px;    
    background-color: #f6f6f6;
    background-image: linear-gradient(top, #f6f6f6, #eae8e8);
}

.form-wrapper #search {
    width: 200px;
    height: 15px;
    padding: 5px 5px;
    float: left;    
    font: 14px Arial, Helvetica, sans-serif;
    border: 1px solid #ccc;
    box-shadow: 0 1px 1px #ddd inset, 0 1px 0 #fff;
    border-radius: 3px;      
}

.form-wrapper #search:focus {
    outline: 0; 
    border-color: #aaa;
    box-shadow: 0 1px 1px #bbb inset;  
}

.form-wrapper #search::-webkit-input-placeholder {
   color: #999;
   font-weight: normal;
}

.form-wrapper #search:-moz-placeholder {
    color: #999;
    font-weight: normal;
}

.form-wrapper #search:-ms-input-placeholder {
    color: #999;
    font-weight: normal;
} 

.form-wrapper #submit {
    float: right;    
    border: 1px solid #00748f;
    height: 30px;
    width: 30px;
    padding: 5px;
    cursor: pointer;
    font: 12px Arial, Helvetica;
    color: #fff;
    text-transform: uppercase;    
    background-color: #0f4396;
    background-image: linear-gradient(top, #31b2c3, #0483a0);
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;      
    text-shadow: 0 1px 0 rgba(0, 0 ,0, .3);
    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.3) inset, 0 1px 0 #fff;
}
  
.form-wrapper #submit:hover,
.form-wrapper #submit:focus {       
    background-color: #0f4396;
    background-image: linear-gradient(top, #0483a0, #31b2c3);
}   
  
.form-wrapper #submit:active {
    outline: 0;    
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;    
}
  
.form-wrapper #submit::-moz-focus-inner {
    border: 0;
}

#leftMenu ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 170px;
    background-color: #f1f1f1;
    border: 1px solid #dedede;
    position: absolute; 
}

#leftMenu li {
    text-align: center;
    border-bottom: 1px solid #dedede;
    position:relative;
}



#leftMenu li:last-child {
    border-bottom: none;
}

#leftMenu ul li a{
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}
#leftMenu li .active {
    background-color: #4CAF50;
    color: white;
}

#leftMenu li a:hover {
    background-color: #555;
    color: white;
}

#leftMenu .niveau2 li a{
        display :none;
        background-color: #f9f9f9;
        min-width: 140px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
}

#leftMenu .niveau1 li:hover #leftMenu .niveau2 li{
        display :block;
}


                /* Dropdown container(cacher par défault)*/
                .dropdown-container {
                    display: none;
                    background-color: #262626;
                    padding-left: 8px;
                }

                /* Optional: Style the caret down icon */
                .fa-caret-down {
                    float: right;
                    padding-right: 8px;
                }

                /* On mouse-over */
                .sidenav a:hover, .dropdown-btn:hover {
                    color: #f1f1f1;
                }

        /*Pour les écrans plus petits*/
         @media screen and (max-height: 450px) {
                    .sidenav {
                        padding-top: 15px;
                    }

                        .sidenav a {
                            font-size: 18px;
                        }
                }
#content{
    display :flex;
    position: absolute;
    margin-left: 0px;
    margin-top: 0px;
}

#section {
    position: absolute;
    margin-left: 0px;
    margin-top: 0px;
}

#TreeViewSideMenu {
    top:80px;
    height:500px;
}

.mainContent {
    position:absolute;
    height:500px;
    width:100%;
    top:115px;
    left:310px;
    margin-right:150px;  
}

.footer {
    position:fixed;
    left:4px;
    bottom:0px;
    width:100%;
    background-color:#eeeeee;
    color:black;
    text-align-last:center;
}
</style>
<html>
<head runat="server">
     <title>Gestion données</title>
</head>
<body>
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
<!--<div id="leftMenu">
<ul class="niveau1">
    <li>
        <a href="#" class="active">Détail de Gestion des Données Systèmes</a>
    </li>
    <li>
        <a href="#">Flux Activity</a>
    </li>
    <li>
        <a href="#">Flux Amalgamme</a>
    </li>
    <li>
        <a href="#">Flux APV</a>
    </li>
    <li>
        <a href="#">Flux Article Codification</a>
    </li>
    <li>
        <a href="#">Flux Article Record</a>
    </li>
    <li>
        <a href="#">Flux Article Sizing</a>
    </li>
    <li>
        <a href="#">Flux BOM</a>
    </li>
    <li>
        <a href="#">Flux BUYER PURVEYOR</a>
    </li>
    <li>
        <a href="#">Flux Currency</a>
    </li>
    <li>
        <a href="#">Flux Customer Record</a>
    </li>
    <li>
        <a href="#">Flux Customer Hierarchie</a>
    </li>
    <li>
        <button class ="dropdown-btn">Flux DAS
            <i class="fa fa-caret-down"></i>
        </button>
        <ul class="dropdown-container">
            <li>
                <a href="#">DAS</a>
            </li>
            <li>
                <a href="#">Segment</a>
            </li>
            <li>
                <a href="#">Sous segment</a>
            </li>
            <li>
                <a href="#">Article</a>
            </li>
        </ul>
    </li>
   <li>
        <a href="#">Flux Dynasys</a>
    </li>
    <li>
        <a href="#">Flux Labelling</a>
    </li>
    <li>
        <a href="#">Flux Life Cycle</a>
    </li>
    <li>
        <a href="#">Flux Logistique</a>
    </li>
    <li>
        <a href="#">Flux IMS</a>
    </li>
    <li>
        <a href="#">Flux ISO639 Language ISO3166 Country</a>
    </li>
    <li>
        <a href="#">Flux OF</a>
    </li>
    <li>
        <a href="#">Flux Ortems</a>
    </li>
    <li>
        <a href="#">Flux Partner</a>
    </li>
    <li>
        <a href="#">Flux Purchase Family</a>
    </li> 
    <li>
        <a href="#">Flux Stock</a>
    </li>
    <li>
        <a href="#">Flux Supplier Prices</a>
    </li>
    <li>
        <a href="#">Flux Machine</a> 
    </li> 
</ul> 
</div>

<script>
    /* Cela permet de mettre cacher ou afficher des sous menus de sidebar */
    var dropdown = document.getElementsByClassName("dropdown-btn");
    var i;

    for (i = 0; i < dropdown.length; i++) {
      dropdown[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var dropdownContent = this.nextElementSibling;
        if (dropdownContent.style.display === "block") {
          dropdownContent.style.display = "none";
        } else {
          dropdownContent.style.display = "block";
        }
      });
    }-->
<!--</script>-->
<div class="content">
<form runat ="server" >
<asp:TreeView ID="TreeViewSideMenu" runat="server" BackColor ="#0f4396" Width ="295px" BorderStyle ="Solid" border-radius="10px"
              BorderColor ="#dedede" BorderWidth ="1px" ForeColor ="#555" style="margin-top:0px;font-family :Arial, Helvetica, sans-serif" >
    <HoverNodeStyle ForeColor="#555"  BackColor ="#edb93b"/>
    <Nodes>
        <asp:TreeNode Text="Fiche Article" Value="Fiche Article" NavigateUrl="~/gestionArticlesInfo.aspx">
            <asp:TreeNode Text="Infos Générales" Value="Infos Générales" NavigateUrl="~/gestionArticlesInfo.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Infos Logistiques" Value="Infos Logistiques" NavigateUrl="~/infoLogi.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Infos Légales" Value="Infos Légales" NavigateUrl="~/infoLegale.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Référencement/Pays" Value="Référencement/Pays" NavigateUrl="~/articleReferencePays.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Substitution/Remplacement" Value="Substitution/Remplacement" NavigateUrl="~/articSubstiRemplace.aspx"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="Données Techniques" Value="Données Techniques" NavigateUrl ="~/donnTechInfoArtic.aspx">
            <asp:TreeNode Text="Infos Article" Value="Infos Article" NavigateUrl ="~/donnTechInfoArtic.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Nomenclature" Value="Nomenclature" NavigateUrl ="~/articleNomen.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Nomenclatures Inverses" Value="Nomenclatures Inverses" NavigateUrl="~/articNomenInvers.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Gamme Opératoire" Value="Gamme Opératoire" NavigateUrl="articleGamOperat.aspx"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="Données Achats" Value="Données Achats" NavigateUrl ="~/articleFourniseurPrix.aspx">
            <asp:TreeNode Text="Infos Articles" Value="Infos Articles" NavigateUrl ="~/articleFourniseurPrix.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Infos Commandes" Value="Infos Commandes" NavigateUrl ="~/articleInfoCommande.aspx"></asp:TreeNode>
        </asp:TreeNode>
    </Nodes> 
     <NodeStyle Font-Size="16px" ForeColor="white" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px"  />
     <ParentNodeStyle Font-Bold="False" />
     <SelectedNodeStyle Font-Underline="True" ForeColor="#555" HorizontalPadding="0px" VerticalPadding="0px" />
</asp:TreeView>
<div class ="mainContent"> 
</div>
    <asp:Panel ID="Panel1" runat="server" Height="127px" Width="870px" margin-left="300px" margin-top="90px">
    </asp:Panel>
</form>
 

<!--
 <ul id="menu">
  <li><div>Flux codification articles</div></li>
  <li><div>Gammes</div></li>
  <li><div>Hierarchie</div></li> 
  <li><div>Info DAS</div>
     <ul>
      <li><div>DAS</div></li>
      <li><div>Segment</div></li>
      <li><div>Sous Segment</div></li>
     </ul>
  </li>
  <li><div>Info achats</div></li>
  <li><div>Info dimensionnelles</div></li>
  <li><div>Info générales</div></li>
  <li><div>Info langues</div></li>
  <li><div>Info logistiques</div></li>
  <li><div>Info reglémentaires</div></li>
  <li><div>Libellé et référencement international</div></li>
  <li><div>Nomenclature</div></li>
  <li><div>Remplacement</div></li>
  <li><div>Substition</div></li>
</ul>-->
</div>
    <div class="footer">
     <p>&copy; <%: DateTime.Now.Year %> - Alès Groupe</p>
</div>
</body> 
</html>
