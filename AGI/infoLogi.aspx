﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="infoLogi.aspx.cs" Inherits="AGI.infoLogi" %>

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
            <div class="col-lg-7">
                <div class="row"> 
                    <input type="text" placeholder="Recherche" id="searchInput" onkeyup ="filterAll();" autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:300px;height:30px; border-radius:6px;margin-left:2px"/> 
                    <br />
                </div>
                <br />
                <div>
                    <ul id="tabnav">
                       <li class="active"><a href="gestionArticlesInfo">Infos Générales</a></li>
                       <li><a href="infoLogi">Données Logistiques</a></li>
                       <li><a href="#">Données Légales</a></li>
                       <li><a href="#">Référencement/pays</a></li>
                       <li><a href="#">Substitution/Remplacement</a></li>
                    </ul>
                </div>
                <div class ="row">
                <div class="col-lg-2">
                    <br/>
                    <asp:Label ID="lblCodAles" runat="server" Text="Code Alès" Class="lblInfo"></asp:Label>
                    <br/>
                    <asp:Label ID="lblLibArtFr" runat="server" Text="Libellé Article Français" Class="lblInfo"></asp:Label>
                    <br/>
                </div>
                <div class="col">
                    <br/>
                    <asp:TextBox ID="tbxCodeAles" runat="server" Class="tbxInfo">code ales</asp:TextBox>
                    <br/>
                    <asp:TextBox ID="tbxLibArtFr" runat="server" Class="tbxInfo">lib FR</asp:TextBox>     
                    <br/>
                </div>
                <div class="col-lg-2">
                    <br />
                    <asp:Label ID="lblNbrCartons" runat="server" Text="Nombre Cartons/Couche" Class="lblInfo"></asp:Label>
                    <br />
                    <asp:Label ID="lblNbrCouches" runat="server" Text="Nombre Couches/Palette" Class="lblInfo"></asp:Label>
                    <br />
                </div>         
                <div class="col">
                    <br />        
                    <asp:TextBox ID="tbxNbrCartons" runat="server" Class="tbxInfo">nombre Cartons/Couche</asp:TextBox>
                    <br />
                    <asp:TextBox ID="tbxNbrCouches" runat="server" Class="tbxInfo">nombre Couches/Palette</asp:TextBox>
                    <br />
               </div>
              </div>
                <br />
                <div class ="row">
                    <div>
                     <table id="tblHeaderInfoLogi" class ="gvInfoLogi" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                               <%--  <th style="text-align:center; width:0px; color:white; background-color:#edb93b; visibility:hidden ">ID</th>--%>
                                 <th style="text-align:center; width:80px; color:white; background-color:#edb93b">VL</th>
                                 <th style="text-align:center; width:80px; color:white; background-color:#edb93b">Nature</th>
                                 <th style="text-align:center; width:80px; color:white; background-color:#edb93b">Longeur cm</th>
                                 <th style="text-align:center; width:100px; color:white; background-color:#edb93b">Profondeur cm</th>
                                 <th style="text-align:center; width:80px; color:white; background-color:#edb93b">Hauteur cm</th>
                                 <th style="text-align:center; width:100px; color:white; background-color:#edb93b">Poids Brut Kg</th>
                                 <th style="text-align:center; width:100px; color:white; background-color:#edb93b">Poids Net Kg</th>
                                 <th style="text-align:center; width:100px; color:white; background-color:#edb93b">Volume cm 3</th>
                                 <th style="text-align:center; width:80px; color:white; background-color:#edb93b">Nbre SKU</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                    <div style="overflow-y:scroll; overflow-x:hidden; width:800px ; height:330px" >
                      <asp:GridView ID="imsL1" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowHeader="false" 
                            HeaderStyle-Font-Underline="false" Font-Names="Arial, Helvetica, sans-serif"
                            Font-Size ="X-Small" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White"  ForeColor="#333333" /> 
                                <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />--%>
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
            <div class="col-lg-2">
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
