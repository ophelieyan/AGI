<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestionArticlesInfo.aspx.cs" Inherits="AGI.gestionArticlesInfo" %>

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
.mainContent {
    position: absolute;
    height: auto;
    width: 100%;
    top: 100px;
    left: 310px;
    margin-right: 150px;
    font-family:Arial, Helvetica, sans-serif;
}

.row {
    background-color: lightblue;
    position: absolute;
    height: auto;
    width: 80%;
    top: 100px;
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

.mainContent .lblInfo {
    margin-left:320px;
    float:left;
}
.mainContent .txtboxInfo {
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
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <title>Info générales d'Articles</title>
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
          <a href="gestionFournisseurInfo">Infos générales</a>
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
    <asp:TreeView ID="TreeViewSideMenu" runat="server" BackColor ="#0f4396" Width ="295px" BorderStyle ="Solid"
                  BorderColor ="#dedede" BorderWidth ="1px" ForeColor ="#555" style="margin-top:0px;font-family:Arial, Helvetica, sans-serif" >
        <HoverNodeStyle ForeColor="#555"  BackColor ="#edb93b"/>
        <Nodes>
            <asp:TreeNode Text="Flux codification articles" Value="Flux codification articles"></asp:TreeNode>
            <asp:TreeNode Text="Gammes" Value="Gammes"></asp:TreeNode>
            <asp:TreeNode Text="Hierarchie" Value="Hierarchie"></asp:TreeNode>
            <asp:TreeNode Text="Info achats" Value="Info achats"></asp:TreeNode>
            <asp:TreeNode Text="Info dimensionnelles" Value="Info dimensionnelles"></asp:TreeNode>
            <asp:TreeNode Text="Info générales" Value="Info générales"></asp:TreeNode>
            <asp:TreeNode Text="Info langues" Value="Info langues"></asp:TreeNode>
            <asp:TreeNode Text="Info logistiques" Value="Info logistiques"></asp:TreeNode>
            <asp:TreeNode Text="Info reglémentaires" Value="Info reglémentaires"></asp:TreeNode>
            <asp:TreeNode Text="Libellé et référencement international" Value="Libellé et référencement international" NavigateUrl="gestionArticleRefInternational"></asp:TreeNode>
            <asp:TreeNode Text="Nomenclature" Value="Nomenclature"></asp:TreeNode>
            <asp:TreeNode Text="Remplacement" Value="Remplacement"></asp:TreeNode>
            <asp:TreeNode Text="Substition" Value="Substition"></asp:TreeNode>
        </Nodes> 
         <NodeStyle Font-Size="16px" ForeColor="white" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px"  />
         <ParentNodeStyle Font-Bold="False" />
         <SelectedNodeStyle Font-Underline="True" ForeColor="#555" HorizontalPadding="0px" VerticalPadding="0px" />
    </asp:TreeView>
    <!--<div class ="mainContent"> -->
            <div class ="row">
                <div class="col">
                    <br/>
                    <br/>      
                    <asp:Label ID="lblRefArt" runat="server" Text="Référence Article" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:TextBox ID="tbxRefArt" runat="server" Class="tbxInfo">référence article</asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblGencod" runat="server" Text="Gencode" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:TextBox ID="tbxGencod" runat="server" Class="tbxInfo">gencode</asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblCodAles" runat="server" Text="Code Alès" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:TextBox ID="tbxcodeAles" runat="server" Class="tbxInfo">code</asp:TextBox>
                    <br/>
                    <br />
                    <asp:Label ID="lblVA" runat="server" Text="VA" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:TextBox ID="tbxVa" runat="server" Class="tbxInfo">va</asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblVL" runat="server" Text="VL" Class="lblInfo"></asp:Label>     
                    <br />
                    <asp:TextBox ID="tbxVl" runat="server" Class="tbxInfo">vl</asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                 </div>
                <div class="col">
                    <br />
                    <br />
                    <asp:Label ID="lblStatut" runat="server" Text="Statut" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:TextBox ID="tbxStatut" runat="server" Class="tbxInfo">statut</asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblLibConten" runat="server" Text="Contenance en L" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:TextBox ID="tbxConten" runat="server" Class="tbxInfo">contenance en L</asp:TextBox>
                    <br/>
                    <br/>
                    <asp:Label ID="lblLibArtFr" runat="server" Text="Libellé Article Français" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:TextBox ID="tbxLibArtFr" runat="server" Class="tbxInfo">lib FR</asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblLibArtEn" runat="server" Text="Libellé Article Anglais" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:TextBox ID="tbxLibArtEn" runat="server" Class="tbxInfo">lib EN</asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblLibVari" runat="server" Text="Libellé Variante" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:TextBox ID="tbxLibVari" runat="server" Class="tbxInfo">lib Variante</asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div class="col">
                    <br/>
                    <br/>
                    <asp:Label ID="lblProNat" runat="server" Text="Product Nature" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlProNat" runat="server" Class="ddlInfo"></asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lblTypCont" runat="server" Text="Type de contenant" Class="lblInfo">
                    </asp:Label>
                    <br />
                     <asp:DropDownList ID="ddlTypCont" runat="server" Class="ddlInfo"></asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lblMatTyp" runat="server" Text="Material Type" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlMaterTyp" runat="server" Class="ddlInfo"></asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lblProGrou" runat="server" Text="Product Groupe" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlTypAppro" runat="server" OnLoad="ddlTypAppro_Load" Class="ddlInfo"></asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lblTypeAppro" runat="server" Text="Type Appro" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlProCateg" runat="server" Class="ddlInfo"></asp:DropDownList>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />

               </div>
       <!-- </div>-->
    </div>
    </form>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
</div>
<div class="footer">
     <p>&copy; <%: DateTime.Now.Year %> - Alès Groupe</p>
</div>
</body>

</html>
