<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articleGamOperat.aspx.cs" Inherits="AGI.articleGamOperat" %>

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
                                <asp:TreeNode Text="Infos Article" Value="Infos Article" NavigateUrl ="~/donnTechInfoArtic.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Nomenclature" Value="Nomenclature" NavigateUrl ="~/articleNomen.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Nomenclatures Inverses" Value="Nomenclatures Inverses" NavigateUrl="~/articNomenInvers.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Gamme Opératoire" Value="Gamme Opératoire" NavigateUrl="articleGamOperat.aspx"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="Données Achats" Value="Données Achats">
                                <asp:TreeNode Text="Infos Article" Value="Infos Article" NavigateUrl ="~/articleFourniseurPrix.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Infos Commande" Value="Infos Commande" NavigateUrl ="~/articleInfoCommande.aspx"></asp:TreeNode>
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
                       <li class="active"><a href="gestionArticlesInfo">Infos Générales</a></li>
                       <li><a href="infoLogi">Données Logistiques</a></li>
                       <li><a href="infoLegale">Données Légales</a></li>
                       <li><a href="#">Référencement/pays</a></li>
                       <li><a href="#">Substitution/Remplacement</a></li>
                    </ul>
                </div>
                <br/>
                <div class="row"> 
                    <input type="text" placeholder="Recherche" id="searchInput" onkeyup ="filterAll();" autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:300px;height:30px; border-radius:6px;margin-left:2px"/> 
                    <br />
                </div>
                <div class ="row">
                  <div class="col-lg-2" >
                    <br/>
                    <asp:Label ID="lblCodAles" runat="server" Text="Code Alès" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblLibArtFr" runat="server" Text="Libellé Article Français" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblIdDigit" runat="server" Text="ID composé 11 digits" Class="lblInfo"></asp:Label>
                    <br/>  
                    <asp:Label ID="lblIdVersion" runat="server" Text="ID Composé version" Class="lblInfo"></asp:Label>
                    <br/>
                </div>
                  <div class="col" >
                    <br/>
                    <asp:TextBox ID="tbxCodeAles" runat="server" Class="tbxInfo">code ales</asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxLibArtFr" runat="server" Class="tbxInfo">lib FR</asp:TextBox>     
                    <br/>
                    <asp:TextBox ID="tbxIdDigit" runat="server" Class="tbxInfo">id composé 11 digits</asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxIdVersion" runat="server" Class="tbxInfo">id Composé version</asp:TextBox>
                    <br />
                </div>
                </div>
                <div class ="row">
                   <%--style ="background-color :#edb93b"--%>
                  <div class="col-lg-2" >
                    <br />
                    <asp:Label ID="LblGamPrincip" runat="server" Text="Gamme principale" Class="lblInfo" ForeColor ="#ff3399" Font-Underline ="true"></asp:Label>
                    <br />
                  </div>
                  <div class="col-lg-4" >
                  </div>
                  <div class="col-lg-2" >
                    <br />
                    <asp:Label ID="LblGamAltern" runat="server" Text="Gamme Alternative" Class="lblInfo" ForeColor ="#ff3399" Font-Underline ="true"></asp:Label>
                    <br />
                  </div>
                </div>
                <div class ="row">
                   <%--style ="background-color :#edb93b"--%>
                  <div class="col-lg-2" >
                    <br />
                    <asp:Label ID="lblIlot" runat="server" Text="Ilot" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblIndustrie" runat="server" Text="Industrie" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblMachine" runat="server" Text="Machine" Class="lblInfo"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblCadence" runat="server" Text="Cadence" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblTempsMachine" runat="server" Text="Temps machine" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblTempsMaisOeuvre" runat="server" Text="Temps mains d'oeuvre" Class="lblInfo"></asp:Label>
                    <br />
                    <br />
                </div>  
                    <%--style ="background-color :mistyrose"   --%>    
                  <div class="col" >
                    <br />        
                    <asp:TextBox ID="tbxIlot" runat="server" Class="tbxInfo">ilot</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxIndustrie" runat="server" Class="tbxInfo">industrie</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxMachine" runat="server" Class="tbxInfo">machine</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="tbxCadence" runat="server" Class="tbxInfo">cadence</asp:TextBox>        
                    <br />
                    <asp:TextBox ID="tbxTempsMachine" runat="server" Class="tbxInfo">tempsMachine</asp:TextBox> 
                    <br />
                    <asp:TextBox ID="tbxTempsMaisOeuvre" runat="server" Class="tbxInfo">tempsMaisOeuvre</asp:TextBox> 
                    <br />
                    <br />
                 </div>
                                      <div class="col-lg-2" >
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Ilot" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Industrie" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Machine" Class="lblInfo"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Cadence" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Temps machine" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Temps mains d'oeuvre" Class="lblInfo"></asp:Label>
                    <br />
                    <br />
                </div>  
                    <%--style ="background-color :mistyrose"   --%>    
                  <div class="col" >
                    <br />        
                    <asp:TextBox ID="TextBox1" runat="server" Class="tbxInfo">ilot</asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Class="tbxInfo">industrie</asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Class="tbxInfo">machine</asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" Class="tbxInfo">cadence</asp:TextBox>        
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" Class="tbxInfo">tempsMachine</asp:TextBox> 
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" Class="tbxInfo">tempsMaisOeuvre</asp:TextBox> 
                    <br />
                    <br />
                 </div>
               </div>
               </div>
               <div class ="col-lg-1">
               </div>
            </div>          
        </div>  
    </form>
    </div>
</div>

<div class="footer">
     <p>&copy; <%: DateTime.Now.Year %> - Alès Groupe</p>
</div>
</body>

</html>

