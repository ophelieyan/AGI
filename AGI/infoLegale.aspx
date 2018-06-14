<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="infoLegale.aspx.cs" Inherits="AGI.infoLegale" %>

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
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>

<body>
<div id ="topMenu">

<%--          <asp:Image ID="MainCompanylogo" runat="server" Height="76px" Width="150px" ImageUrl="Images/logo.png"/>--%>

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
                            <asp:TreeNode Text="Fiche Article" Value="Fiche Article" NavigateUrl="~/gestionArticlesInfo.aspx">
                                <asp:TreeNode Text="Infos Générales" Value="Infos Générales" NavigateUrl="~/gestionArticlesInfo.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Infos Logistiques" Value="Infos Logistiques" NavigateUrl ="~/infoLogi.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Infos Légales" Value="Infos Légales" NavigateUrl="~/infoLegale.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Référencement/Pays" Value="Référencement/Pays" NavigateUrl="~/articleReferencePays.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Substitution/Remplacement" Value="Substitution/Remplacement" NavigateUrl="~/articSubstiRemplace.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="Données Techniques" Value="Données Techniques" NavigateUrl="~/donnTechInfoArtic.aspx">
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
                         <NodeStyle Font-Size="12px" ForeColor="white" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px"  />
                         <ParentNodeStyle Font-Bold="False" />
                         <SelectedNodeStyle Font-Underline="True" ForeColor="#555" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>   
                 </div>
            </div>
            <div class="col-lg-9">
                <div>
                    <ul id="tabnav">
                       <li><a href="gestionArticlesInfo">Infos Générales</a></li>
                       <li><a href="infoLogi">Infos Logistiques</a></li>
                       <li class="active"><a href="infoLegale">Infos Légales</a></li>
                       <li><a href="articleReferencePays">Référencement/pays</a></li>
                       <li><a href="articSubstiRemplace">Substitution/Remplacement</a></li>
                    </ul>
                </div>
                <br />
                <div class="row">
                   <input type="text" placeholder="Recherche" name ="search" id="searchInput"  autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:400px;height:30px; border-radius:6px;margin-left:2px"/> 
                   <br />
                   <asp:ImageButton ID="btnRecheArticle" runat="server" OnClick ="findArticle" Height="18px" Width="35px" />
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-2" >
                        <br/>
                        <asp:Label ID="lblCodAles" runat="server" Text="Code Alès" Class="lblInfo"></asp:Label>
                        <br/>
                        <asp:Label ID="lblLibArtFr" runat="server" Text="Libellé Article Français" Class="lblInfo"></asp:Label>
                        <br/>  
                        <br/>
                        <asp:Label ID="lblCodeTaric" runat="server" Text="Code Taric" Class="lblInfo"></asp:Label>
                        <br/>
                        <asp:Label ID="lblValDouan" runat="server" Text="Valeur Douanière" Class="lblInfo"></asp:Label>
                        <br/>
                        <asp:Label ID="lblAlcool" runat="server" Text="% Alcool" Class="lblInfo"></asp:Label>
                        <br/>
                        <asp:Label ID="lblGaz" runat="server" Text="% Gaz" Class="lblInfo"></asp:Label>
                        <br/>
                        <br/>
                        <asp:Label ID="lblClasLqdInflamm" runat="server" Text="Classe Liquides Inflammables" Class="lblInfo"></asp:Label>
                        <br/>
                        <asp:Label ID="lblPointEclair" runat="server" Text="Point Eclair" Class="lblInfo"></asp:Label>
                        <br />
                        <asp:Label ID="lblClasMatièDange" runat="server" Text="Classe Matières Dangereuses" Class="lblInfo"></asp:Label>
                        <br />
                        <br/>
                        <br/>
                    </div>
                    <div class="col-lg-3" >
                        <br/>
                        <asp:TextBox ID="tbxCodeAles" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br/>
                        <asp:TextBox ID="tbxLibArtFr" runat="server" Class="tbxInfo"></asp:TextBox>     
                        <br/>
                        <br/>
                        <asp:TextBox ID="tbxCodeTaric" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br/>
                        <asp:TextBox ID="tbxValDouan" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br/>
                        <asp:TextBox ID="tbxAlcool" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="tbxGaz" runat="server" Class="tbxInfo"></asp:TextBox>          
                        <br />
                        <br/>
                        <asp:TextBox ID="tbxClasLqdInflamm" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="tbxPointEclair" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="tbxClasMatièDange" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br />
                        <br />
                    </div>
                    <div class="col-lg-2">
                        <br />
                        <asp:Label ID="lblCodeUn" runat="server" Text="Code UN" Class="lblInfo"></asp:Label>
                        <br />
                        <asp:Label ID="lblCodeIcpe" runat="server" Text="Code ICPE" Class="lblInfo"></asp:Label>
                        <br />
                        <asp:Label ID="lblCodeCed" runat="server" Text="Code CED" Class="lblInfo"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPaysOrig" runat="server" Text="Pays Origines" Class="lblInfo"></asp:Label>
                        <br />
                        <asp:Label ID="lblLangFac" runat="server" Text="Langues on pack facing" Class="lblInfo"></asp:Label>
                        <br />
                        <asp:Label ID="lblLangAut" runat="server" Text="Langues on pack autres" Class="lblInfo"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPao" runat="server" Text="PAO" Class="lblInfo"></asp:Label>
                        <br />
                        <asp:Label ID="lblDlc" runat="server" Text="DLC" Class="lblInfo"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>         
                    <div class="col-lg-3">
                        <br />        
                        <asp:TextBox ID="tbxCodeUn" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="tbxCodeIcpe" runat="server" Class="tbxInfo"></asp:TextBox>        
                        <br />
                        <asp:TextBox ID="tbxCodeCed" runat="server" Class="tbxInfo"></asp:TextBox> 
                        <br />
                        <br />
                        <asp:TextBox ID="tbxPaysOrig" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="tbxLangFac" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="tbxLangAut" runat="server" Class="tbxInfo"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="tbxPao" runat="server" Class="tbxInfo"></asp:TextBox>        
                        <br />                       
                        <asp:TextBox ID="tbxDlc" runat="server" Class="tbxInfo"></asp:TextBox> 
                        <br />
                        <br />
                        <br />
                   </div>
        
                   <div class ="col-lg-1">
                   </div>
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
        $("#searchInput").autocomplete({
            source: function(request, response) {  
                $.ajax({  
                    type: "POST",   
                    url: "api/getArticleController",
                    data :"param=" + document.getElementById('searchInput').value,
                    success: function (data) {
                        var array = data.split(",");
                        response(array);
                    },  
                    error: function (resp, status, xhr) {
                        alert("param=" + document.getElementById('searchInput').value)  
                    }
                });  
            }  
        });  
    }  
</script>  
