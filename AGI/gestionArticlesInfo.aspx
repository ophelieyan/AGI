<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestionArticlesInfo.aspx.cs" Inherits="AGI.gestionArticlesInfo" %>

<!DOCTYPE html>

<%--<style>
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
</style>--%>
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
                 <a href="#">Gamme Opératoire</a>
             </div>
          <a href="#">Données Achats</a>
             <div class="sousSubmenu">
                 <a href="#">Infos Article</a>
                 <a href="#">Insfos Commande</a>
             </div>
        </div>
      </li>
      <li class="menu">
        <a href="gestionClients" class="dropbtn">CLIENTS</a>
        <div class="submenu">
          <a href="#">Flux codification Clients</a>
          <a href="gestionClientsInfo">Infos générales</a>
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
    <%--BorderStyle="Solid"  BorderColor ="#dedede"  border-radius="10px"   
                        BorderWidth ="1px"--%>
    <form runat ="server" >
    <div class ="mainContent">
<%--        <div class="row">

                 <asp:Image ID="MainCompanylogo" runat="server" Height="76px" Width="150px" ImageUrl="Images/logo.png"/>

            <div class="row">
                <div class ="col-lg-3">
                    <input type="text" placeholder="Recherche" id="searchInput" onkeyup ="filterAll();" autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:300px;height:30px; border-radius:6px;margin-left:2px"/>  
                </div>
            </div>
        </div>--%>
        <div class="row">
            <div class ="col-lg-2">
                 <div class="sideBar">
                    <asp:TreeView ID="TreeViewSideMenu" runat="server"  BorderStyle="None"
                         ForeColor ="black" style="margin-top:0px;font-family :Arial, Helvetica, sans-serif;" >
                        <HoverNodeStyle ForeColor="#555"  BackColor ="#edb93b"/>
                        <Nodes>
                            <asp:TreeNode Text="Fiche Article" Value="Fiche Article">
                                <asp:TreeNode Text="Infos Générales" Value="Infos Générales"></asp:TreeNode>
                                <asp:TreeNode Text="Données Logistiques" Value="Données Logistiques"></asp:TreeNode>
                                <asp:TreeNode Text="Données Légales" Value="Données Légales"></asp:TreeNode>
                                <asp:TreeNode Text="Référencement/Pays" Value="Référencement/Pays"></asp:TreeNode>
                                <asp:TreeNode Text="Substitution/Remplacement" Value="Substitution/Remplacement"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="Données Techniques" Value="Données Techniques">
                                <asp:TreeNode Text="Infos Article" Value="Infos Article"></asp:TreeNode>
                                <asp:TreeNode Text="Nomenclature" Value="Nomenclature"></asp:TreeNode>
                                <asp:TreeNode Text="Nomenclatures Inverses" Value="Nomenclatures Inverses"></asp:TreeNode>
                                <asp:TreeNode Text="Gamme Opératoire" Value="Gamme Opératoire"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="Données Achats" Value="Données Achats">
                                <asp:TreeNode Text="Infos Article" Value="Infos Article"></asp:TreeNode>
                                <asp:TreeNode Text="Infos Commande" Value="Infos Commande"></asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes> 
                         <NodeStyle Font-Size="12px" ForeColor="white" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px"  />
                         <ParentNodeStyle Font-Bold="False" />
                         <SelectedNodeStyle Font-Underline="True" ForeColor="#555" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>   
                 </div>
            </div>
            <div class="col-lg-9">
                <div class="row"> 
                    <input type="text" placeholder="Recherche" id="searchInput" onkeyup ="filterAll();" autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:300px;height:30px; border-radius:6px;margin-left:2px"/> 
                    <br />
                </div>
                <br />
                <div>
                    <ul id="tabnav">
                       <li class="active"><a href="gestionArticlesInfo">Infos Générales</a></li>
                       <li><a href="infoLogi">Données Logistiques</a></li>
                       <li><a href="infoLegale">Données Légales</a></li>
                       <li><a href="#">Référencement/pays</a></li>
                       <li><a href="#">Substitution/Remplacement</a></li>
                    </ul>
                </div>
                <div class ="row">
                <div class="col-lg-2" >
                    <br/>
                    <asp:Label ID="lblCodAles" runat="server" Text="Code Alès" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblLibArtFr" runat="server" Text="Libellé Article Français" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblLibArtEn" runat="server" Text="Libellé Article Anglais" Class="lblInfo"></asp:Label>
                    <br/>  
                    <br/>
                    <asp:Label ID="lblClassABC" runat="server" Text="Class ABC" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblStatut" runat="server" Text="Statut" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblProdCate" runat="server" Text="Product Category" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblDateSOA" runat="server" Text="Date TTM SOA" Class="lblInfo"></asp:Label>
                    <br/>
                    <br/>
                    <asp:Label ID="lblEAN13" runat="server" Text="EAN13" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblACL" runat="server" Text="ACL" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblCNP" runat="server" Text="CNP" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblCNK" runat="server" Text="CNK" Class="lblInfo"></asp:Label>   
                </div>
                <div class="col" >
                    <br/>
                    <asp:TextBox ID="tbxCodeAles" runat="server" Class="tbxInfo">code ales</asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxLibArtFr" runat="server" Class="tbxInfo">lib FR</asp:TextBox>     
                    <br/>
                    <asp:TextBox ID="tbxLibArtEn" runat="server" Class="tbxInfo">lib EN</asp:TextBox>
                    <br/>
                    <br/>
                    <asp:TextBox ID="tbxClassABC" runat="server" Class="tbxInfo">class ABC</asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxStatut" runat="server" Class="tbxInfo">statut</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxProdCate" runat="server" Class="tbxInfo">product category</asp:TextBox>          
                    <br />
                    <asp:TextBox ID="tbxDateSOA" runat="server" Class="tbxInfo">date ttm SOA</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="tbxEAN13" runat="server" Class="tbxInfo">ean13</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxACL" runat="server" Class="tbxInfo">acl</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxCNP" runat="server" Class="tbxInfo">cnp</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxCNK" runat="server" Class="tbxInfo">cnk</asp:TextBox>
                    <br />
                </div>
                    <%--style ="background-color :#edb93b"--%>
                <div class="col-lg-2" >
                    <br />
                    <asp:Label ID="lblUnitVente" runat="server" Text="CNK" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblConteUni" runat="server" Text="Contenance/Unité" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblTypCont" runat="server" Text="Type de contenant" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblNaturProd" runat="server" Text="Nature Produit" Class="lblInfo"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblCompKit" runat="server" Text="Composant Kit(APS)" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblComposKit" runat="server" Text="Composé Kit(APS)" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblGrouRef" runat="server" Text="Groupe Référence(APS)" Class="lblInfo"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblGamme" runat="server" Text="Classification par Gamme" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblSousSeg" runat="server" Text="Classification par Sous Segment" Class="lblInfo"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblIms" runat="server" Text="IMS Level 4" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblFebea" runat="server" Text="FEBEA" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblCodeBrick" runat="server" Text="Code Brick" Class="lblInfo"></asp:Label>
                    <br />
                    <br />
                    <br />
                </div>  
                    <%--style ="background-color :mistyrose"   --%>    
                <div class="col" >
                    <br />        
                    <asp:TextBox ID="tbxUnitVente" runat="server" Class="tbxInfo">UnitVente</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxConteUni" runat="server" Class="tbxInfo">contenanceUnite</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxTypCont" runat="server" Class="tbxInfo">typeDecontenant</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxNaturProd" runat="server" Class="tbxInfo">natureProduit</asp:TextBox>        
                    <br />
                    <br />
                    <asp:TextBox ID="tbxCompKit" runat="server" Class="tbxInfo">composantKit</asp:TextBox> 
                    <br />
                    <asp:TextBox ID="tbxComposKit" runat="server" Class="tbxInfo">composekit</asp:TextBox> 
                    <br />
                    <asp:TextBox ID="tbxGrouRef" runat="server" Class="tbxInfo">groupeReference</asp:TextBox>
                    <br/>
                    <br />
                    <asp:TextBox ID="tbxGamme" runat="server" Class="tbxInfo">classificationParG</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxSousSeg" runat="server" Class="tbxInfo">classificationParSS</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="tbxIms" runat="server" Class="tbxInfo">imsLevel4</asp:TextBox>        
                    <br />                       
                    <asp:TextBox ID="tbxFebea" runat="server" Class="tbxInfo">febea</asp:TextBox> 
                    <br />
                    <asp:TextBox ID="tbxCodeBrick" runat="server" Class="tbxInfo">codeBrick</asp:TextBox> 
                    <br />
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
