<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="infoGenerFourniss.aspx.cs" Inherits="AGI.infoGenerFourniss" %>

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
                       <li class="active"><a href="infoGenerFourniss">Infos Générales</a></li>
                       <li><a href="fournissDonneInterne">Données Internes</a></li>
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
                    <asp:Label ID="lblCodIris" runat="server" Text="Code Iris" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblCodAles" runat="server" Text="Code Alès" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblEnteteSoc" runat="server" Text="Entête Société" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblNomComplet" runat="server" Text="Nom Complet" Class="lblInfo"></asp:Label>
                    <br/>  
                    <br/>
                    <asp:Label ID="lblTVA" runat="server" Text="TVA intracommunautaire" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblNAF" runat="server" Text="Code NAF" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblDevise" runat="server" Text="Devise" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblLangue" runat="server" Text="Langue" Class="lblInfo"></asp:Label>
                    <br/>                 
                    <br/>
                </div>
                <div class="col-lg-4" >
                    <br/>
                    <asp:TextBox ID="tbxCodeIris" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxCodeAles" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxEnteteSoc" runat="server" Class="tbxInfo"></asp:TextBox>     
                    <br/>
                    <asp:TextBox ID="tbxNomComplet" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br/>
                    <br/>
                    <asp:TextBox ID="tbxTVA" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxNAF" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxDevise" runat="server" Class="tbxInfo"></asp:TextBox>        
                    <br />
                    <asp:TextBox ID="tbxLangue" runat="server" Class="tbxInfo"></asp:TextBox> 
                </div>
                <div class="col-lg-2" >
                    <br />
                    <asp:Label ID="lblAdresse" runat="server" Text="Adresse" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblAdrsComp" runat="server" Text="Complément Adresse" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblCodePost" runat="server" Text="Code Postal" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblVille" runat="server" Text="Ville" Class="lblInfo"></asp:Label>
                    <br/>
                    <br />
                    <asp:Label ID="lblRegion" runat="server" Text="Etat/Province/Région" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblPays" runat="server" Text="Pays" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblTel" runat="server" Text="Téléphone" Class="lblInfo"></asp:Label>
                    <br />  
                    <br />
                </div>  
                <div class="col-lg-4" >
                    <br />
                    <asp:TextBox ID="tbxAdresse" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxAdrsComp" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxCodePost" runat="server" Class="tbxInfo"></asp:TextBox>          
                    <br />
                    <asp:TextBox ID="tbxVille" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="tbxRegion" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxPays" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />        
                    <asp:TextBox ID="tbxTel" runat="server" Class="tbxInfo"></asp:TextBox>
                    <br />
                    
               </div>
              </div>
               <div class ="col-lg-1">
               </div>
                <div class ="row">
                    <div>
                     <table id="tblHeaderClient" class ="gvClient" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                                 <th style="text-align:center; width:200px; color:white; background-color:#edb93b">Nom</th>
                                 <th style="text-align:center; width:200px; color:white; background-color:#edb93b">Prénom</th>
                                 <th style="text-align:center; width:200px; color:white; background-color:#edb93b">Fonction</th>
                                 <th style="text-align:center; width:200px; color:white; background-color:#edb93b">Tel mobile</th>
                                 <th style="text-align:center; width:200px; color:white; background-color:#edb93b">Email</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                    <div style="overflow-y:scroll; overflow-x:hidden; width:1000px ; height:330px" >
                      <asp:GridView ID="gvClient" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowHeader="false" 
                            HeaderStyle-Font-Underline="false" Font-Names="Arial, Helvetica, sans-serif"
                            Font-Size ="X-Small" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White"  ForeColor="#333333" /> 
                                <Columns> 
                                    <asp:TemplateField > 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdImsL1" runat="server" Text='<%# Bind("ID_IMS_Level_1") %>' Width ="20px" style="display :none"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                        <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibImsL1Fr" runat="server" Text='<%# Bind("Lib_IMS_Level_1_FR") %>'  Width ="235px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibImsL1Fr" runat="server" Text='<%# Bind("Lib_IMS_Level_1_FR") %>' Width ="235px"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                </Columns> 
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#edb93b" ForeColor="White" Font-Bold="True" /> 
                                <PagerStyle BackColor="#edb93b" ForeColor="White" HorizontalAlign="Center" /> 
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                 </asp:GridView> 
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
        $("#searchFourniss").autocomplete({
            source: function(request, response) {  
                $.ajax({  
                    type: "POST",   
                    url: "api/getFournisseurController",
                    data :"param=" + document.getElementById('searchFourniss').value,
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
