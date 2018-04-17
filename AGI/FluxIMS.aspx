<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FluxIMS.aspx.cs" Inherits="AGI.FluxIMS" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <%-- <script src="Js/fDas.js" type="text/javascript"></script>--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>   
    <link href="Css/fIMS.css" type='text/css' rel='stylesheet' /> 
    <title>Flux IMS</title>
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
          <a href="#">Flux codification articles</a>
          <a href="#">Gammes</a>
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
        <a href="gestionHierar" class="dropbtn">HIERARCHIE</a>
        <div class="submenu">
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
        <a href="gestionDonnees" class="dropbtn">DONNEES TECHNIQUES</a>
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
          <a href="fluxDAS">FLux DAS</a>
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
          <a href="gestionDonnees" class="dropbtn">DYNASYS</a>
      </li>
      <li class="menu">
          <a href="gestionDonnees" class="dropbtn">ORTEMS</a>
      </li>
      <li style="float:right"> 
          <form class="form-wrapper">
              <input type="text" id="search" placeholder="Recherche" />
              <input type="submit" value="OK" id="submit"/>
          </form>
      </li>
</ul>
</div>


<form runat ="server" >
<div class ="mainContent">
<div class="row">
    <div class ="col-lg-2">

    <asp:TreeView ID="TreeViewSideMenu" runat="server" BackColor ="#0f4396" BorderStyle ="Solid" border-radius="10px" 
                  BorderColor ="#dedede" BorderWidth ="1px" ForeColor ="#555" style="margin-left:0px;font-family:Arial, Helvetica, sans-serif" >
        <HoverNodeStyle ForeColor="#555"  BackColor ="#edb93b"/>
        <Nodes>
            <asp:TreeNode Text="Flux Activity" Value="Flux Activity">
                <asp:TreeNode Text="Organic" Value="Organic"></asp:TreeNode>
                <asp:TreeNode Text="Primary Brand" Value="Primary Brand"></asp:TreeNode>
                <asp:TreeNode Text="Secondary Brand" Value="Secondary Brand"></asp:TreeNode>
                <asp:TreeNode Text="Range" Value="Ranger"></asp:TreeNode>
            </asp:TreeNode> 
            <asp:TreeNode Text="Flux Article" Value="Flux Article"></asp:TreeNode>
            <asp:TreeNode Text="Flux BOM" Value="Flux BOM"></asp:TreeNode>
            <asp:TreeNode Text="Flux BUYER PURVEYOR" Value="Flux BUYER PURVEYOR"></asp:TreeNode>
            <asp:TreeNode Text="Flux Currency" Value="Flux Currency"></asp:TreeNode>
            <asp:TreeNode Text="Flux Costum Record" Value="Flux Costum Record"></asp:TreeNode>
            <asp:TreeNode Text="Flux Customer" Value="Flux Customer"></asp:TreeNode>
            <asp:TreeNode Target="new" Text="Flux DAS" Value="Flux DAS">
                <asp:TreeNode Text="DAS" Value="DAS" NavigateUrl ="~/ConsulDAS.aspx"></asp:TreeNode>
                <asp:TreeNode Text="Segment" Value="Segment" NavigateUrl ="~/ConsulSegment.aspx"></asp:TreeNode>
                <asp:TreeNode Text="Sous Segment" Value="Sous Segment" NavigateUrl ="~/ConsulSousSeg.aspx"></asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="Flux Logistique" Value="Flux Logistique"></asp:TreeNode>
            <asp:TreeNode Text="Flux IMS" Value="Flux IMS" NavigateUrl ="~/fluxIMS.aspx"></asp:TreeNode>
            <%--<asp:TreeNode Text="Flux ISO639 Language ISO3166 Country" Value="Flux ISO639 Language ISO3166 Country"></asp:TreeNode>--%>
            <asp:TreeNode Text="Flux Purchase" Value="Flux Purchase"></asp:TreeNode>
            <asp:TreeNode Text="Flux Supplier" Value="Flux Supplier"></asp:TreeNode>
        </Nodes> 
         <NodeStyle Font-Size="14px" ForeColor="white" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px"  />
         <ParentNodeStyle Font-Bold="False" />
         <SelectedNodeStyle Font-Underline="True" ForeColor="#555" HorizontalPadding="0px" VerticalPadding="0px" />
    </asp:TreeView>
    </div>

    <div class="col-lg-10">
        <div class="row"> 
           <input type="text" placeholder="Recherche" id="searchInput" onkeyup ="filterAll();" autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:300px;height:30px; border-radius:6px;margin-left:2px"/> 
           <br />
           <br />
        </div>
        <br />
        <div class="row">         
             <div class ="col">
                 <a class="entete">IMS Level 1</a>
                 <br />
                 <div>
                     <table id="tblHeaderImsL1" class ="gvImsL1" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                             <%--    <th style="text-align:center; width:10px; color:white; background-color:#edb93b; visibility:hidden ">ID 1</th>--%>
                                 <th style="text-align:center; width:235px; color:white; background-color:#edb93b">Désignation IMS Level 1</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:235px ; height:330px" >
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
                 <button id="btnAddImsL1" class="btnAdd" type="button">Créer</button>
                 <button id="btnEditImsL1" class="btnEdit" type="button">Modifier</button>
            <%--     <button ID="btnDisablePBrand" class="btnDeac" type="button">Désactiver</button>--%>
             </div>
    
             <div class="col">
                 <a class="entete">IMS Level 2</a>
                 <br />
                 <div>
                     <table id="tblHeaderImsL2" class ="gvImsL2" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                                 <th style="text-align :center ;width:235px; color:white;background-color:#edb93b">Désignation IMS Level 2</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:235px ; height:330px" >
                 <asp:GridView ID="imsL2" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                            HeaderStyle-Font-Underline="false" ShowHeader="false" Font-Size ="X-Small"
                            Font-Names="Arial, Helvetica, sans-serif" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White" ForeColor="#333333" Width ="140px" /> 
                                 <Columns>
                                    <asp:TemplateField > 
                                         <ItemTemplate> 
                                            <asp:Label ID="lblIdImsL2" runat="server" Text='<%# Bind("ID_IMS_Level_2") %>' Width ="235px" style="display :none"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                         <ItemTemplate> 
                                            <asp:Label ID="lblIdImsL1InL2" runat="server" Text='<%# Bind("ID_IMS_Level_1") %>' Width ="235px" style="display :none"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                        <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibImsL2Fr" runat="server" Text='<%# Bind("Lib_IMS_Level_2_FR") %>' Width ="200px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibImsL2Fr" runat="server" Text='<%# Bind("Lib_IMS_Level_2_FR") %>' Width ="200px"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                </Columns> 
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#edb93b" ForeColor="black" Font-Bold="True" /> 
                                <PagerStyle BackColor="#edb93b" ForeColor="White" HorizontalAlign="Center" /> 
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" /> 
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
             </asp:GridView> 
             </div>
                 <button id="btnAddImsL2" class="btnAdd" type="button">Créer</button>
                 <button id="btnEditImsL2" class="btnEdit" type="button">Modifier</button>
               <%--  <button ID="btnDisableImsL2" class="btnDeac" type="button">Désactiver</button>--%>
             </div>
        
             <div class="col">
                 <a class="entete">IMS Level 3</a>
                 <br />
               <div>
                    <table id="tblHeaderImsL3" class ="gvImsL3" border="1" style ="font-size:small">
                        <tbody>
                            <tr>
<%--                                <th style="text-align :center ;width:90px; color:white;background-color:#edb93b">Code Gamme</th>--%>
                                <th style="text-align :center ;width:235px; color:white;background-color:#edb93b">Désignation IMS Level 3</th>
                            </tr>
                        </tbody>
                    </table>   
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:235px; height:330px" >
                 <asp:GridView ID="imsL3" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                            HeaderStyle-Font-Underline="false" ShowHeader="false" Font-Size ="X-Small"
                            Font-Names="Arial, Helvetica, sans-serif" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White" ForeColor="#333333" /> 
                                <Columns>
                                   <asp:TemplateField > 
                                         <ItemTemplate> 
                                            <asp:Label ID="lblIdImsL3" runat="server" Text='<%# Bind("ID_IMS_Level_3") %>' Width ="235px" style="display :none"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                         <ItemTemplate> 
                                            <asp:Label ID="lblIdImsL2InL3" runat="server" Text='<%# Bind("ID_IMS_Level_2") %>' Width ="235px" style="display :none"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                        <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibImsL3" runat="server" Text='<%# Bind("Lib_IMS_Level_3_FR") %>'></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibImsL3" runat="server" Text='<%# Bind("Lib_IMS_Level_3_FR") %>' Width="230px"></asp:Label> 
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
                 <button id="btnAddImsL3" class="btnAdd" type="button">Créer</button>
                 <button id="btnEditImsL3" class="btnEdit" type="button">Modifier</button>
           <%--      <button id="btnDisableImsL3" class="btnDeac" type="button">Désactiver</button>--%>
             </div> 
       
             <div class="col">
                 <a class="entete">IMS Level 4</a>
                 <br />
               <div>
                    <table id="tblHeaderImsL4" class ="gvImsL4" border="1" style ="font-size:small">
                        <tbody>
                            <tr>
<%--                                <th style="text-align :center ;width:90px; color:white;background-color:#edb93b">Code Gamme</th>--%>
                                <th style="text-align :center ;width:235px; color:white;background-color:#edb93b">Désignation IMS Level 4</th>
                            </tr>
                        </tbody>
                    </table>   
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:235px; height:330px" >
                 <asp:GridView ID="imsL4" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                            HeaderStyle-Font-Underline="false" ShowHeader="false" Font-Size ="X-Small"
                            Font-Names="Arial, Helvetica, sans-serif" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White" ForeColor="#333333" /> 
                                <Columns>
                                    <asp:TemplateField > 
                                         <ItemTemplate> 
                                            <asp:Label ID="lblIdImsL4" runat="server" Text='<%# Bind("ID_IMS_Level_4") %>' Width ="235px" style="display:none"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                         <ItemTemplate> 
                                            <asp:Label ID="lblIdImsL3InL4" runat="server" Text='<%# Bind("ID_IMS_Level_3") %>' Width ="235px" style="display:none"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                        <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibImsL3" runat="server" Text='<%# Bind("Lib_IMS_Level_4_FR") %>'></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibImsL3" runat="server" Text='<%# Bind("Lib_IMS_Level_4_FR") %>' Width="230px"></asp:Label> 
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
                 <button id="btnAddImsL4" class="btnAdd" type="button">Créer</button>
                 <button id="btnEditImsL4" class="btnEdit" type="button">Modifier</button>
           <%--      <button id="btnDisableImsL4" class="btnDeac" type="button">Désactiver</button>--%>
             </div> 
         </div>
     </div>
</div>
<div class="row">
    <div id="dialog-form" title="Creation d'un nouveau IMS Level 1">

      <p class="validateTips">Tous les champs sont requis.</p >

          <label for="libImsL1">Désignation IMS Level 1</label>
          <br />
          <input type="text" name="libImsL1" id="libImsL1" value="" class="text ui-widget-content ui-corner-all" style="font-family :Arial, Helvetica, sans-serif ;font-size :12px"/>
          <br /> 
    </div>

    <div id="edit-imsL1" title="Modifier d'un IMS Level 1">

      <p class="validateTips">Tous les champs sont requis.</p >
          <br />
          <label for="libImsL1">Désignation IMS Level 1</label>
          <br />
          <input type="text" name="libImsL1" id="libImsL1Edit"  value="" class="text ui-widget-content ui-corner-all" style="font-family :Arial, Helvetica, sans-serif ;font-size :12px;width:200px; height:20px"/>
    </div>

    <div id="dialog-form-imsL2" title="Creation d'un nouveau IMS Level 2">
      <p class="validateTips">Tous les champs sont requis.</p >
        <label for="pbrand">IMS Level 2</label>  
        <br />
        <select id="libImsL1ForPopup" name="imsL1" style ="font-family :Arial, Helvetica, sans-serif; font-size:12px">
            <option></option>
            <script type="text/javascript">             
                    $("#imsL1 tr").each(function () {
                        imsL1 = $(this).find("td").eq(1).text().trim();
                        $("#libImsL1ForPopup").append('<option>' + imsL1 + '</option>');
                    });
       
            </script>
          </select>
          <br />
          <label for="libImsL2">Désignation IMS Level 2</label>
          <br />
          <input type="text" name="libImsL2" id="libImsL2" value="" class="text ui-widget-content ui-corner-all"/>  
          <br />       
    </div>

    <div id="edit-imsL2" title="Modifier d'un IMS Level 2">

      <p class="validateTips">Tous les champs sont requis.</p >
          <br />
          <label for="libImsL2">Désignation IMS Level 2</label>
          <br />
          <input type="text" name="libImsL2" id="libImsL2Edit" value="" class="text ui-widget-content ui-corner-all" style="font-family :Arial, Helvetica, sans-serif ;font-size :12px;width:200px; height:20px"/>
          <br />
  <%--        <input type="hidden" name="idPBrand" id="idOfSelectedPBrand" value="" class="text ui-widget-content ui-corner-all"/>
          <input type="hidden" name="Code PBrand" id="codPBrandEdit" value="" class="text ui-widget-content ui-corner-all"/>--%>
  
    </div>

    <div id="dialog-form-imsL3" title="Creation d'un nouveau IMS Level 3">

      <p class="validateTips">Tous les champs sont requis.</p >
          <label for="imsL2">IMS Level 2</label>
          <br />
          <select id="libImsL2ForPopup" name="ImsL2" style ="font-family :Arial, Helvetica, sans-serif">
              <option></option>
              <script type="text/javascript">

                    $("#imsL2 tr").each(function () {
                        imsL2 = $(this).find("td").eq(2).text().trim();
                        $("#libImsL2ForPopup").append('<option>' + imsL2 + '</option>');
                    });
            
            </script>
          </select>

          <label for="libImsL3">Désignation IMS Level 3</label>
          <br />
          <input type="text" name="libImsL3" id="libImsL3" value="" class="text ui-widget-content ui-corner-all"/>
          <br />
    </div>

    <div id="edit-imsL3" title="Modification d'un IMS Level 3">

      <p class="validateTips">Tous les champs sont requis.</p >
          <br />
          <label for="libImsL3">Désignation IMS Level 3</label>
          <br />   
          <input type="text" name="libImsL3" id="libImsL3Edit" value="" class="text ui-widget-content ui-corner-all" style="font-family :Arial, Helvetica, sans-serif ;font-size :12px;width:200px; height:20px"/>
          <br />
    </div>

     <div id="dialog-form-imsL4" title="Creation d'un nouveau IMS Level 4">

      <p class="validateTips">Tous les champs sont requis.</p >
          <label for="imsL3">IMS Level 3</label>
          <br />
          <select id="libImsL3ForPopup" name="ImsL3" style ="font-family :Arial, Helvetica, sans-serif">
              <option></option>
              <script type="text/javascript">
                    $("#imsL3 tr").each(function () {
                        imsL3 = $(this).find("td").eq(2).text().trim();
                        $("#libImsL3ForPopup").append('<option>' + imsL3 + '</option>');
                    });
            
            </script>
          </select>

          <label for="libImsL4">Désignation IMS Level 4</label>
          <br />
          <input type="text" name="libImsL4" id="libImsL4" value="" class="text ui-widget-content ui-corner-all"/>
          <br />
    </div>

    <div id="edit-imsL4" title="Modification d'un IMS Level 4">

      <p class="validateTips">Tous les champs sont requis.</p >
          <br />
          <label for="libImsL4">Désignation IMS Level 4</label>
          <br />
          <input type="text" name="libImsL4" id="libImsL4Edit" value=""  class="text ui-widget-content ui-corner-all"  style="font-family :Arial, Helvetica, sans-serif ;font-size :12px;width:200px; height:20px"/>
          <br />   
    </div>
</div>
</div>

</form>
<br/>
<br/>
<br/>

<div class="footer">
    <p>&copy; <%: DateTime.Now.Year %> - Alès Groupe</p>
</div>

</body>

</html>

<script>
    //search fonctionne
    function filterAll() {
        filterTableImsL1($('#imsL1 tr'));
        filterTable($('#imsL2 tr'));
        filterTable($('#imsL3 tr'));
        filterTable($('#imsL4 tr'));
    }

    function filterTableImsL1(allTr) {
        var keyWord = $('#searchInput').val();
        allTr.each(function () {
            var designation = $(this).find("td").eq(1).text();
            if (designation && designation.length > 0 && keyWord && keyWord.length > 0) {
                keyWord = keyWord.toLowerCase();
                designation = designation.toLowerCase();
                if (designation.indexOf(keyWord) < 0) {
                    $(this).hide();
                } else {
                    $(this).show();
                }
            } else {
                $(this).show();
            }
        });
    }

    function filterTable(allTr) {
        var keyWord = $('#searchInput').val();
        allTr.each(function () {
            var designation = $(this).find("td").eq(2).text();
            if (designation && designation.length > 0 && keyWord && keyWord.length > 0) {
                keyWord = keyWord.toLowerCase();
                designation = designation.toLowerCase();
                if (designation.indexOf(keyWord) < 0) {
                    $(this).hide();
                } else {
                    $(this).show();
                }
            } else {
                $(this).show();
            }
        });
    }

    //la partie pour filtrer IMS Level 2 selon la ligne de IMS Level 1 Choisie
    $(function () {
        $("#imsL1 td").click(function () {
            $("#imsL1 tr").css('background-color', '#ffffff');
            $(this).closest("tr").css('background-color', '#eeeeee');

            filterImsL2($(this).closest("tr"));
            EditImsL1($(this).closest("tr"));

            $(this).closest("tr").attr("id", "selectedRowId");
        });
    });

    //la partie pour filtrer Ims Level 3 selon la ligne de Ims Level 2 Choisie
    $(function () {
        $("#imsL2 td").click(function () {
            $("#imsL2 tr").css('background-color', '#ffffff');
            $(this).closest("tr").css('background-color', '#eeeeee');

            filterImsL3($(this).closest("tr"));
            filterInverseImsL1($(this).closest("tr"));
            EditImsL2($(this).closest("tr"));

            $(this).closest("tr").attr("id", "selectedRowId");
        });
    });

    //la partie pour filtrer Ims Level 4 selon la ligne de Ims Level 3 Choisie
    $(function () {
        $("#imsL3 td").click(function () {

            $("#imsL3 tr").css('background-color', '#ffffff');
            $(this).closest("tr").css('background-color', '#eeeeee');

            EditImsL3($(this).closest("tr"));
            filterImsL4($(this).closest("tr"));
            filterInverseImsL2($(this).closest("tr"));
            filterInverseImsL1($("#filteredImsL2"));

            $(this).closest("tr").attr("id", "selectedRowId");
        })
    })

    //la partie pour filtrer Ims Level 4 selon la ligne de Ims Level 3 Choisie
    $(function () {
        $("#imsL4 td").click(function () {

            $("#imsL4 tr").css('background-color', '#ffffff');
            $(this).closest("tr").css('background-color', '#eeeeee');

            EditImsL4($(this).closest("tr"));
            filterInverseImsL3($(this).closest("tr"));
            filterInverseImsL2($("#filteredImsL3"));
            filterInverseImsL1($("#filteredImsL2"));

            $(this).closest("tr").attr("id", "selectedRowId");
        })
    })


    // filtre IMS L2 en cliquant sur une ligne de IMS L1
    function filterImsL2(row) {

        var idImsL1 = $("td", row).eq(0).text();

        $("#imsL2 tr").each(function () {
            var idImsL1InL2,
            idImsL1InL2 = $(this).find("td").eq(1).text();

            if (idImsL1InL2 != null) {
                if (idImsL1InL2 == idImsL1) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            }
        });
    }
    
    // filtre IMS L3 en cliquant sur une ligne de IMS L2
    function filterImsL3(row) {

        var idImsL2 = $("td", row).eq(0).text();

        $("#imsL3 tr").each(function () {
            var idImsL2InImsL3 = $(this).find("td").eq(1).text();
            if (idImsL2InImsL3 != null) {
                if (idImsL2InImsL3 == idImsL2) {
                    $(this).show();
                }
                else {
                    $(this).hide();
                }
            }
        });
    }

    // filtre IMS L4 en cliquant sur une ligne de IMS L3
    function filterImsL4(row) {
        var idImsL3 = $("td", row).eq(0).text();
        $("#imsL4 tr").each(function () {
            var idImsL3InImsL4 = $(this).find("td").eq(1).text();
            if (idImsL3InImsL4 != null) {
                if (idImsL3InImsL4 == idImsL3) {
                    $(this).show();
                }
                else {
                    $(this).hide();
                }
            }
        });
    }

    //filtrer ImsL1 en cliquant sur une ligne de ImsL2
    function filterInverseImsL1(row) {

        var idImsL1InL2 = $("td", row).eq(1).text();
 
        $("#imsL1 tr").each(function () {
            var idImsL1 = $(this).find("td").eq(0).text();

            if (idImsL1 != null) {
                if (idImsL1 == idImsL1InL2) {
                    $(this).show();
                  }
                else {
                    $(this).hide();
                }
            }
        });
    }


    //filtrer IMS L2 en cliquant sur une ligne de IMS L3
    function filterInverseImsL2(row) {

        var idImsL2InL3 = $("td", row).eq(1).text();

        $("#imsL2 tr").each(function () {
            var idImsL2 = $(this).find("td").eq(0).text();
            $(this).closest("tr").attr("id", "");
            if (idImsL2 != null) {
                if (idImsL2 == idImsL2InL3) {
                    $(this).show();
                    $(this).closest("tr").attr("id", "filteredImsL2");
                }
                else {
                    $(this).hide();
                }
            }
        });
    }


    //filtrer IMS L3 en cliquant sur une ligne de IMS L4
    function filterInverseImsL3(row) {

        var idImsL3InL4 = $("td", row).eq(1).text();

        $("#imsL3 tr").each(function () {
            var idImsL3 = $(this).find("td").eq(0).text();
            $(this).closest("tr").attr("id", "");
            if (idImsL3 != null) {
                if (idImsL3 == idImsL3InL4) {
                    $(this).show();
                    $(this).closest("tr").attr("id", "filteredImsL3");
                }
                else {
                    $(this).hide();
                }
            }
        });
    }

      //modification de IMS Level 1
      function EditImsL1(row) {

            $("#btnEditImsL1").click(function () {

                var LibImsL1ForPop = $("td", row).eq(1).text();

                document.getElementById("libImsL1Edit").value = LibImsL1ForPop.trim();

                dialogEditImsL1.dialog("open");
            });
        }

        function DisableImsL1(row) {
            $("#btnDisableImsL1").click(function () {
            });
        }

        //Modification de Ims L2
        function EditImsL2(row) {

            $("#btnEditImsL2").click(function () {

                var LibImsL2ForPop = $("td", row).eq(2).text();

                document.getElementById("libImsL2Edit").value = LibImsL2ForPop.trim();

                dialogEditImsL2.dialog("open");
            });
        }

        //Modification de Ims L3
        function EditImsL3(row) {

            $("#btnEditImsL3").click(function () {

                var LibImsL3ForPop = $("td", row).eq(2).text();

                document.getElementById("libImsL3Edit").value = LibImsL3ForPop.trim();

                dialogEditImsL3.dialog("open");
            });
        }

        //Modification de Ims L4
        function EditImsL4(row) {

            $("#btnEditImsL4").click(function () {

                var LibImsL4ForPop = $("td", row).eq(2).text();
      
                document.getElementById("libImsL4Edit").value = LibImsL4ForPop.trim();

                dialogEditImsL4.dialog("open");
            });
        }

        //La partie de pop-up
        var dialog = $("#dialog-form").dialog({

            autoOpen: false,

            height: 450,

            width: 350,

            modal: true,

            buttons: {

                "Créer un nouveau IMS Level 1": addImsL1,

                Cancel: function () {

                    dialog.dialog("close");

                }

            },

            close: function () {

                dialog.dialog("close");

            }

        });

        $("#btnAddImsL1").click(function () {

            dialog.dialog("open");

        });

        function addImsL1() {
      
            var libImsL1PopUp = document.getElementById("libImsL1").value;

            $.ajax({

                url: "api/ImsL1DataController?",

                methode: "POST",

                data: "param=libImsL1:" + libImsL1PopUp,

            }).done(function () {

                addRowToImsL1($('#imsL1 tbody'), libImsL1PopUp);

            });

            dialog.dialog("close");

        }

        function addRowToImsL1(tableBody,designation) {

            tableBody.append('<tr onmouseover="MouseEvents(this, event)" onmouseout="MouseEvents(this, event)" style="color:#333333;background-color:White;">'

                                        + '<td>'

                                        + '<span id="das_lblLib" style="display:inline-block;width:180px;">' + designation + '</span>'

                                        + '</td>'

                                        + '</tr>');

        }

        //La partie de Modification de IMS Level 1
        var dialogEditImsL1 = $("#edit-imsL1").dialog({

            autoOpen: false,

            height: 400,

            width: 350,

            modal: true,

            buttons: {

                "Valider la modification": updateImsL1,

                Cancel: function () {

                    dialogEditImsL1.dialog("close");

                }

            },

            close: function () {

                dialogEditImsL1.dialog("close");

            }

        });

        $("#btnEditImsL1").click(function () {

            dialogEditImsL1.dialog("open");

        });

        function updateImsL1() {

            var libImsL1Modif = document.getElementById("libImsL1Edit").value;

            var row = $("#selectedRowId");

            $("td", row).eq(1).html(libImsL1Modif);

            var idImsL1Modif = $("td", row).eq(0).text().trim();


            row.attr("id", "");

            $.ajax({

                url: "api/ImsL1ModifyController",

                methode: "POST",

                data: "param=idImsL1:" + idImsL1Modif + ",libImsL1:" + libImsL1Modif,

            }).done(function () {

            });


            dialogEditImsL1.dialog("close");
        }

            //IMS L2 popUp

            var dialogImsL2 = $("#dialog-form-imsL2").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Créer un nouveau IMS Level 2": addImsL2,

                    Cancel: function () {

                        dialogImsL2.dialog("close");

                    }

                },

                close: function () {

                    dialogImsL2.dialog("close");

                }

            });


            function addImsL2() {

                var imsL1PopUp = document.getElementById("libImsL1ForPopup").value;

                var libImsL2PopUp = document.getElementById("libImsL2").value;
   
                $.ajax({

                    url: "api/ImsL2DataController?",

                    methode: "POST",

                    data: "param=libImsL1:" + imsL1PopUp + ",libImsL2:" + libImsL2PopUp,

                }).done(function () {

                    addRowToTable($('#imsL2 tbody'), libImsL2PopUp);

                });

                dialogImsL2.dialog("close");

            }

            function addRowToTable(tableBody, designation) {

                tableBody.append('<tr onmouseover="MouseEvents(this, event)" onmouseout="MouseEvents(this, event)" style="color:#333333;background-color:White;">'

                                            + '<td>'

                                            + '<span id="das_lblLibFr_2" style="display:inline-block;width:100px;">' + designation + '</span>'

                                            + '</td>'

                                            + '</tr>');

            }

            $("#btnAddImsL2").click(function () {

                dialogImsL2.dialog("open");

            });

            //La partie de Modification de IMS Level 2
            var dialogEditImsL2 = $("#edit-imsL2").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: { 

                    "Valider la modification": updateImsL2,

                    Cancel: function () {

                        dialogEditImsL2.dialog("close");

                    }

                },

                close: function () {

                    dialogEditImsL2.dialog("close");

                }

            });

            $("#btnEditImsL2").click(function () {

                dialogEditImsL2.dialog("open");

            });

            function updateImsL2() {

                var libImsL2Modif = document.getElementById("libImsL2Edit").value;

                var row = $("#selectedRowId");

                $("td", row).eq(2).html(libImsL2Modif);

                var idImsL2Modif = $("td", row).eq(0).text().trim();

                row.attr("id", "");

                $.ajax({

                    url: "api/ImsL2ModifyController",

                    methode: "POST",

                    data: "param=idImsL2:" + idImsL2Modif + ",libImsL2:" + libImsL2Modif,

                }).done(function () {

                });

                dialogEditImsL2.dialog("close");
            }

            //IMS L3 popUp

            var dialogImsL3 = $("#dialog-form-imsL3").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Créer un nouveau IMS L3": addImsL3,

                    Cancel: function () {

                        dialogImsL3.dialog("close");

                    }

                },

                close: function () {

                    dialogImsL3.dialog("close");

                }

            });

            $("#btnAddImsL3").click(function () {

                dialogImsL3.dialog("open");

            });

            function addImsL3() {

                var libImsL2PopUp = document.getElementById("libImsL2PopUp").value;

                var libImsL3PopUp = document.getElementById("libImsL3PopUp").value;

                $.ajax({

                    url: "api/ImsL3DataController?",

                    methode: "POST",

                    data: "param=libImsL2:" + libImsL2PopUp + ",libImsL3:" + libImsL3PopUp,

                }).done(function () {

                    addRowToTable($('#imsL3 tbody'), libImsL3PopUp);

                });

                dialogImsL3.dialog("close");

            }

          //modification de Ims L3
            function EditImsL3(row) {
                $("#btnEditImsL3").click(function () {
                    var libImsL3ForPop = $("td", row).eq(2).text();

                    document.getElementById("libImsL3Edit").value = libImsL3ForPop.trim();
                    dialogEditImsL3.dialog("open");
                });
            }
            
            var dialogEditImsL3 = $("#edit-imsL3").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Valider la modification": updateImsL3,

                    Cancel: function () {

                        dialogEditImsL3.dialog("close");

                    }

                },

                close: function () {

                    dialogEditImsL3.dialog("close");

                }

            });

            $("#btnEditImsL3").click(function () {

                dialogEditImsL3.dialog("open");

            });

            function updateImsL3() {

                var libImsL3Modif = document.getElementById("libImsL3Edit").value;

                var row = $("#selectedRowId");

                $("td", row).eq(2).html(libImsL3Modif);

                var idImsL3Modif = $("td", row).eq(0).text().trim();

                row.attr("id", "");


                $.ajax({

                    url: "api/ImsL3ModifyController",

                    methode: "POST",

                    data: "param=idImsL3:" + idImsL3Modif + ",libImsL3:" + libImsL3Modif,

                }).done(function () {

                });

                dialogEditImsL3.dialog("close");
            }



            //IMS L4 popUp

            var dialogImsL4 = $("#dialog-form-imsL4").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Créer un nouveau IMS L4": addImsL4,

                    Cancel: function () {

                        dialogImsL4.dialog("close");

                    }

                },

                close: function () {

                    dialogImsL4.dialog("close");

                }

            });

            $("#btnAddImsL4").click(function () {

                dialogImsL4.dialog("open");

            });

            function addImsL4() {

                var libImsL3PopUp = document.getElementById("libImsL3PopUp").value;

                var libImsL4PopUp = document.getElementById("libImsL4PopUp").value;

                $.ajax({

                    url: "api/ImsL4DataController?",

                    methode: "POST",

                    data: "param=libImsL3:" + libImsL3PopUp + ",libImsL4:" + libImsL4PopUp,

                }).done(function () {

                    addRowToTable($('#imsL4 tbody'), libImsL4PopUp);

                });

                dialogImsL4.dialog("close");

            }

            //modification de Ims L4
            function EditImsL4(row) {
                $("#btnEditImsL4").click(function () {
                    var libImsL4ForPop = $("td", row).eq(2).text();

                    document.getElementById("libImsL4Edit").value = libImsL4ForPop.trim();
                    dialogEditImsL4.dialog("open");
                });
            }

            var dialogEditImsL4 = $("#edit-imsL4").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Valider la modification": updateImsL4,

                    Cancel: function () {

                        dialogEditImsL4.dialog("close");

                    }

                },

                close: function () {

                    dialogEditImsL4.dialog("close");

                }

            });

            $("#btnEditImsL4").click(function () {

                dialogEditImsL4.dialog("open");

            });

            function updateImsL4() {

                var libImsL4Modif = document.getElementById("libImsL4Edit").value;

                var row = $("#selectedRowId");

                $("td", row).eq(2).html(libImsL4Modif);

                var idImsL4Modif = $("td", row).eq(0).text().trim();

                row.attr("id", "");


                $.ajax({

                    url: "api/ImsL4ModifyController",

                    methode: "POST",

                    data: "param=idImsL4:" + idImsL4Modif + ", libImsL4:" + libImsL4Modif,

                }).done(function () {

                });

                dialogEditImsL4.dialog("close");
            }
</script>


