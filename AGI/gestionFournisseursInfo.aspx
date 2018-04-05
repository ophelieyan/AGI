<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestionFournisseursInfo.aspx.cs" Inherits="AGI.gestionFournisseursInfo" %>

<!DOCTYPE html>
<style>
#topMenu{
    width:100%;
}   

#topMenu ul {
    list-style-type: none;
    margin-left:0px;
    padding: 0;
    overflow: hidden;
    background-color: #0f4396; 
    font-family :Arial, Helvetica, sans-serif;   
}

#topMenu li {
    float: left;
}

#topMenu li:last-child {
    border-right :none;
}
 
#topMenu li.menu-element1 {
    padding-left:20px;
}

#topMenu li a, .dropbtn{
    display: inline-block;
    color: white;
    text-align: center;
    padding: 30px 4px;
    text-decoration: none;
    padding-left:20px;
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
    height: 30px;
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
    width: 200px;
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
        min-width: 160px;
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

.row {
    background-color: lightblue;
    position: absolute;
    height: auto;
    width: 80%;
    top: 115px;
    left: 310px;
    margin-right: 10px;
    font-family:Arial, Helvetica, sans-serif;
}

.row.lblInfo {
    margin-left:20px;
    }

.row .tbxInfo {
    width:320px;
    float:left;
    border-radius:6px;
}

.row .ddlInfo {
    width:320px;   
    float:left;
    border-radius:6px;
}

.mainContent {
    background-color: lightblue;
    position: absolute;
    height: auto;
    width: 100%;
    top: 115px;
    left: 310px;
    margin-right: 150px;
    font-family:Arial, Helvetica, sans-serif;
}

.mainContent .lblInfo {
    margin-left:320px;
    float:left;
}
.mainContent .tbxInfo {
   margin-right:620px;
    width:350px;
    float:right;
    border-radius:3px;
}

.mainContent .ddlInfo {
    margin-right:620px;
    width:350px;
    float:right;
    border-radius:3px;
}

#TreeViewSideMenu{
    top:80px;
    height:500px;
    bottom:100px;
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <title>Info générales des fournisseurs</title>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
   <!-- <webopt:bundlereference runat="server" path="~/Content/css" />-->
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>

<body>
<div id ="topMenu">
<ul>
      <li class ="menu">
          <asp:Image ID="MainCompanylogo" runat="server" Height="76px" Width="150px" ImageUrl="Images/logo.png"/>
      </li>
      <li class="menu-element1 ">
        <a href="gestionArticles" class="dropbtn">Gestion des Articles</a>
        <div class="submenu">
          <a href="#">Flux codification articles</a>
          <a href="#">Gammes</a>
          <a href="#">Hierarchie</a>
          <a href="#">Infos achats</a>
          <a href="#">Infos dimensionnelles</a>
          <a href="gestionArticlesInfo">Infos générales</a>
          <a href="#">Infos langues</a>
          <a href="#">Infos logsitiques</a> 
          <a href="#">Infos reglémentaires</a>
          <a href="gestionArticleRefInternational">Libellé et référencement international</a>          
          <a href="#">Nomenclature</a>
          <a href="#">Remplacement</a>
          <a href="#">Substitution</a>
        </div>
      </li>
      <li class="menu">
        <a href="gestionClients" class="dropbtn">Gestion des Clients</a>
        <div class="submenu">
          <a href="#">Flux codification Clients</a>
          <a href="gestionClientsInfo">Infos générales</a>
          <a href="gestionClientsInfo2">Infos métiers</a>
          <a href="gestionHieraClient">Hierarchie client</a>
        </div>
      </li>
      <li class="menu">
        <a href="gestionFournisseurs" class="dropbtn">Gestion des Fournisseurs</a>
        <div class="submenu">
          <a href ="#">flux codification fournisseurs</a>
          <a href="gestionFournisseursInfo">Infos générales</a>
          <a href="gestionFourInfoMetier">Infos métiers</a>
          <a href="gestionFourArtic">Fournisseur/Article</a>
        </div>
      </li>
      <li class="menu">
        <a href="gestionDonnees" class="dropbtn">Gestion des Données Systèmes</a>
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
          <a href="gestionDonnees" class="dropbtn">Dynasys</a>
      </li>
      <li class="menu">
          <a href="gestionDonnees" class="dropbtn">Ortems</a>
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
<asp:TreeView ID="TreeViewSideMenu" runat="server" BackColor ="#0f4396" Width ="295px" BorderStyle ="Solid"  border-radius="10px"
            BorderColor ="#dedede" BorderWidth ="1px" ForeColor ="#555" style="margin-top:0px;font-family:Arial, Helvetica, sans-serif" >
<HoverNodeStyle ForeColor="#555"  BackColor ="#edb93b"/>
<Nodes>
    <asp:TreeNode Text="Flux codification Fournisseur" Value="Flux codification Fournisseur"></asp:TreeNode>
    <asp:TreeNode Text="Infos générales" Value="Infos générales" NavigateUrl ="gestionFournisseursInfo"></asp:TreeNode>
    <asp:TreeNode Text="Infos métiers" Value="Infos métiers" NavigateUrl ="gestionFourInfoMetier"></asp:TreeNode>
    <asp:TreeNode Text="Fournieurs/Article" Value="Fournieurs/Article" NavigateUrl ="gestionFourArtic"></asp:TreeNode>
</Nodes> 
    <NodeStyle Font-Size="16px" ForeColor="white" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px"/>
    <ParentNodeStyle Font-Bold="False" />
    <SelectedNodeStyle Font-Underline="True" ForeColor="#555" HorizontalPadding="0px" VerticalPadding="0px" />
</asp:TreeView>
<!--<div class ="mainContent"> -->
<div class ="row">
      <div class="col">
        <br/>
        <br/>
        <asp:Label ID="lblReffour" runat="server" Text="Référence Fournisseur" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxReffour" runat="server" class="tbxInfo">Référence Fournisseur</asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblCodefour" runat="server" Text="Code Fournisseur" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxCodeFour" runat="server" class="tbxInfo">Code Fournisseur</asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblCodIRIS" runat="server" Text="Code IRIS" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxcodeIRIS" runat="server" class="tbxInfo">Code IRIS</asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblLibFour" runat="server" Text="Libellé Fournisseur" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxLibFour" runat="server" class="tbxInfo">Libellé Fournisseur</asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblSIREN" runat="server" Text="SIREN" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxSIREN" runat="server" class="tbxInfo">SIREN</asp:TextBox>
        <br/>
        <br/>
    </div>
    <div class="col">
        <br/>
        <br/>
        <asp:Label ID="lblSIRET" runat="server" Text="SIRET" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxSIRET" runat="server" class="tbxInfo">SIRET</asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblTVA" runat="server" Text="TVA Intracommunautaire" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxTVA" runat="server" class="tbxInfo">TVA Intracommunautaire</asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblDvs" runat="server" Text="Devise" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxDvs" runat="server" class="tbxInfo">Devise</asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblGrpFour" runat="server" Text="Groupe Fournisseur" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="TbxGrpFour" runat="server" class="tbxInfo">Groupe Fournisseur</asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblStatFour" runat="server" Text="Statut Fournisseur" class="lblInfo"></asp:Label>
        <br/>
        <asp:DropDownList ID="ddlStatutFournisseur" runat="server" class="ddlInfo"></asp:DropDownList> 
        <br/>
        <br/>
    </div>
    <div class="col">
        <br/>
        <br/>
        <asp:Label ID="lblAdsCh1" runat="server" Text="Adresse Champs 1" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxAdsCh1" runat="server" class="tbxInfo" TextMode ="MultiLine">Adresse Champs 1</asp:TextBox>
        <br/>
        <br/>
        <br/>
        <br/>
        <asp:Label ID="lblAdsChp2" runat="server" Text="Adresse Champs 2" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxAdsCh2" runat="server" class="tbxInfo" TextMode ="MultiLine">Adresse Champs 2</asp:TextBox>
        <br/>
        <br/>
        <br/>
        <asp:Label ID="lblCodPost" runat="server" Text="Code Postal" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxCodPost" runat="server" class="tbxInfo">Code Postal</asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="lblVille" runat="server" Text="Ville" class="lblInfo"></asp:Label>
        <br/>
        <asp:TextBox ID="tbxVille" runat="server" class="tbxInfo">Ville</asp:TextBox>
        <br/>
		<br/>
        <br/>
        <br/>
        <br/>
    </div>
    </div>
    </form>
</div>
<div class="footer">
     <p>&copy; <%: DateTime.Now.Year %> - Alès Groupe</p>
</div>
</body>
</html>
