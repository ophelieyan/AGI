<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fluxActivity.aspx.cs" Inherits="AGI.fluxActivity" %>

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
    <link href="Css/fActivity.css" type='text/css' rel='stylesheet' /> 
    <title>Flux Activity</title>
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
                 <a class="entete">Marque Première</a>
                 <br />
                 <div>
                     <table id="tblHeaderPBrand" class ="gvPBrand" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                                 <th style="text-align:center; width:100px; color:white; background-color:#edb93b">Code Marque P</th>
                                 <th style="text-align:center; width:240px; color:white; background-color:#edb93b">Désignation Marque Première</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:340px ; height:330px" >
                 <asp:GridView ID="pBrand" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowHeader="false" 
                            HeaderStyle-Font-Underline="false" Font-Names="Arial, Helvetica, sans-serif"
                            Font-Size ="X-Small" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White"  ForeColor="#333333" /> 
                                <Columns> 
                                   <asp:TemplateField > 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdIdPBrand" runat="server" Text='<%# Bind("ID_Primary_Brand") %>' style="display:none" ></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                    <EditItemTemplate> 
                                            <asp:TextBox ID="tbxCodIdPBrand" runat="server"  Text='<%# Bind("Cod_Primary_Brand") %>'  Width ="90px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblCodIdPBrand" runat="server"  Text='<%# Bind("Cod_Primary_Brand") %>' Width ="90px"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                       <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibPBrandFr" runat="server" Text='<%# Bind("Lib_Primary_Brand_Fr") %>'  Width ="235px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibPBrandFr" runat="server" Text='<%# Bind("Lib_Primary_Brand_Fr") %>' Width ="235px"></asp:Label> 
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
                 <button id="btnAddPBrand" class="btnAdd" type="button">Créer</button>
                 <button id="btnEditPBrand" class="btnEdit" type="button">Modifier</button>
            <%--     <button ID="btnDisablePBrand" class="btnDeac" type="button">Désactiver</button>--%>
             </div>
    
             <div class="col">
                 <a class="entete">Marque Secondaire</a>
                 <br />
                 <div>
                     <table id="tblHeaderSBrand" class ="gvSBrand" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                                 <th style="text-align :center ;width:100px; color:white;background-color:#edb93b">Code Marque S</th>
                                 <th style="text-align :center ;width:200px; color:white;background-color:#edb93b">Désignation Marque S</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:300px ; height:330px" >

                 <asp:GridView ID="sBrand" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                            HeaderStyle-Font-Underline="false" ShowHeader="false" Font-Size ="X-Small"
                            Font-Names="Arial, Helvetica, sans-serif" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White" ForeColor="#333333" Width ="140px" /> 
                                 <Columns> 
                                    <asp:TemplateField> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdSBrand" runat="server" Text='<%# Bind("ID_Secondary_Brand") %>' style="display:none"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdPriBrand" runat="server" Text='<%# Bind("ID_Primary_Brand") %>' style="display:none" Width=></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                        <EditItemTemplate> 
                                            <asp:TextBox ID="tbxCodSBrand" runat="server" Text='<%# Bind("Cod_Secondary_Brand") %>' Width ="100px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblCodSBrand" runat="server" Text='<%# Bind("Cod_Secondary_Brand") %>' Width ="100px"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                        <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibSBrandFr" runat="server" Text='<%# Bind("Lib_Secondary_Brand_Fr") %>' Width ="200px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibSBrandFr" runat="server" Text='<%# Bind("Lib_Secondary_Brand_Fr") %>' Width ="200px"></asp:Label> 
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
                 <button id="btnAddSBrand" class="btnAdd" type="button">Créer</button>
                 <button id="btnEditSBrand" class="btnEdit" type="button">Modifier</button>
               <%--  <button ID="btnDisableSBrand" class="btnDeac" type="button">Désactiver</button>--%>
             </div>
        
             <div class="col">
                 <a class="entete">Gamme</a>
                 <br />
               <div>
                    <table id="tblHeaderRange" class ="gvRange" border="1" style ="font-size:small">
                        <tbody>
                            <tr>
                                <th style="text-align :center ;width:90px; color:white;background-color:#edb93b">Code Gamme</th>
                                <th style="text-align :center ;width:230px; color:white;background-color:#edb93b">Désignation Gamme</th>
                            </tr>
                        </tbody>
                    </table>   
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:320px; height:330px" >
                 <asp:GridView ID="range" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                            HeaderStyle-Font-Underline="false" ShowHeader="false" Font-Size ="X-Small"
                            Font-Names="Arial, Helvetica, sans-serif" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White" ForeColor="#333333" /> 
                                <Columns> 
                                    <asp:TemplateField> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdRange" runat="server" style="display:none"  Text='<%# Bind("ID_Range") %>' ></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdSeBrand" runat="server" style="display:none"  Text='<%# Bind("ID_Secondary_Brand") %>' ></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                        <EditItemTemplate> 
                                            <asp:TextBox ID="tbxCodRange" runat="server" Text='<%# Bind("Cod_Range") %>' ></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblCodRange" runat="server" Text='<%# Bind("Cod_Range") %>' Width="80px"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                        <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibRangeFr" runat="server" Text='<%# Bind("Lib_Range_Fr") %>'></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibRangeFr" runat="server" Text='<%# Bind("Lib_Range_Fr") %>' Width="230px"></asp:Label> 
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
                 <button id="btnAddRange" class="btnAdd" type="button">Créer</button>
                 <button id="btnEditRange" class="btnEdit" type="button">Modifier</button>
           <%--      <button id="btnDisableRange" class="btnDeac" type="button">Désactiver</button>--%>
             </div> 
       
         </div>
     </div>
</div>
<div class="row">
    <div id="dialog-form" title="Creation d'une nouvelle Marque Primière">

      <p class="validateTips">Tous les champs sont requis.</p >

          <label for="Code Primary Brand">Code Marque Première</label>
          <br />
          <input type="text" name="Code Primary Brand" id="codPBrand" value="" class="text ui-widget-content ui-corner-all"/>
          <br />

          <label for="libPBrand">Désignation Marque Première</label>
          <br />
          <input type="text" name="libPBrand" id="libPBrand" value="" class="text ui-widget-content ui-corner-all"/>
          <br /> 
    </div>

    <div id="edit-pBrand" title="Modifier d'un Marque Première">

      <p class="validateTips">Tous les champs sont requis.</p >
          <br />
          <label for="libDas">Désignation Marque Première</label>
          <br />
          <input type="text" name="libPBrand" id="libPBrandEdit" value="" class="text ui-widget-content ui-corner-all" style ="font-family :Arial, Helvetica, sans-serif; font-size:12px; height :25px; width:250px;"/>
          <input type="hidden" name="CodPBrand" id="codPBrandEdit" value="" class="text ui-widget-content ui-corner-all"/>
    </div>

    <div id="dialog-form-sBrand" title="Creation d'une nouvelle marque secondaire">
      <p class="validateTips">Tous les champs sont requis.</p >
        <label for="pbrand">Marque Première</label>  
        <br />
        <select id="libPBrandForPopup" name="pbrand" style ="font-family :Arial, Helvetica, sans-serif; font-size:12px">
            <option></option>
            <script type="text/javascript">  
                
                    $("#pBrand tr").each(function () {
                        pBrand = $(this).find("td").eq(2).text().trim();
                        $("#libPBrandForPopup").append('<option>' + pBrand + '</option>');
                    });
       
            </script>
          </select>
          <br />
          <label for="Code Secondary Brand">Code Marque Secondaire</label>
          <br />
          <input type="text" name="Code Secondary Brand" id="codSBrand" value="" class="text ui-widget-content ui-corner-all"/>
          <br />
          <label for="libSBrand">Désignation Marque Secondaire</label>
          <br />
          <input type="text" name="libSBrand" id="libSBrand" value="" class="text ui-widget-content ui-corner-all"/>  
          <br />
        
    </div>

    <div id="edit-sBrand" title="Modifier d'une marque secondaire">

      <p class="validateTips">Tous les champs sont requis.</p >
          <br />
          <label for="libSBrand">Désignation Marque Secondaire</label>
          <br />
          <input type="text" name="libSBrand" id="libSBrandEdit" value="" style ="font-family :Arial, Helvetica, sans-serif; font-size:12px; height :25px; width:250px;" class="text ui-widget-content ui-corner-all"/>
          <br />
          <input type="hidden" name="idPBrand" id="idOfSelectedPBrand" value="" class="text ui-widget-content ui-corner-all"/>
          <input type="hidden" name="Code SBrand" id="codSBrandEdit" value="" class="text ui-widget-content ui-corner-all"/>
  
    </div>

    <div id="dialog-form-range" title="Creation d'une nouvelle Gamme">

      <p class="validateTips">Tous les champs sont requis.</p >
          <label for="SBrand">Marque Secondaire</label>
          <br />
          <select id="libSBrandForPopup" name="SBrand" style ="font-family :Arial, Helvetica, sans-serif">
              <option></option>
              <script type="text/javascript">

                    $("#sBrand tr").each(function () {
                        sBrand = $(this).find("td").eq(3).text().trim();
                        $("#libSBrandForPopup").append('<option>' + sBrand + '</option>');     
                    });
            
            </script>
          </select>

          <label for="Code Range">Code Gamme</label>
          <br />
          <input type="text" name="Code Range" id="codRange" value="" class="text ui-widget-content ui-corner-all"/>
          <br />
          <label for="libRange">Désignation Gamme</label>
          <br />
          <input type="text" name="libRange" id="libRange" value="" class="text ui-widget-content ui-corner-all"/>
          <br />
    </div>

    <div id="edit-range" title="Modification d'une Gamme">

      <p class="validateTips">Tous les champs sont requis.</p >
          <br />
          <label for="libRange">Désignation Gamme</label>
          <br />
          <input type="text" name="libRange" id="libRangeEdit" value="" style ="font-family :Arial, Helvetica, sans-serif; font-size:12px; height :25px; width:250px;" class="text ui-widget-content ui-corner-all"/>
          <input type="hidden" name="Code Range" id="codRangeEdit" value="" class="text ui-widget-content ui-corner-all"/>
   
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
        filterTablePBrand($('#pBrand tr'));//filtrer sur la troisième colonnes en PrimaryBrand
        filterTable($('#sBrand tr'));//filtrer sur la quatrième colonnes en SecondaryBrand
        filterTable($('#range tr'));//filtrer sur la quatrième colonnes en range
    }

    //filtrer sur la troisième colonnes en PrimaryBrand
    function filterTablePBrand(allTr) {
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

    //filtrer sur la quatrième colonnes
    function filterTable(allTr) {
        var keyWord = $('#searchInput').val();
        allTr.each(function () {
            var designation = $(this).find("td").eq(3).text();
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

    //la partie pour filtrer Marque Secondaire selon la ligne de la Marque première Choisie
    $(function () {
        $("#pBrand td").click(function () {
            $("#pBrand tr").css('background-color', '#ffffff');
            $(this).closest("tr").css('background-color', '#eeeeee');
            filterSBrand($(this).closest("tr"));
            EditPBrand($(this).closest("tr"));
            $(this).closest("tr").attr("id", "selectedRowId");
        });
    });

    //la partie pour filtrer Gamme selon la ligne de Marque Secondaire Choisie
    $(function () {
        $("#sBrand td").click(function () {

            $("#sBrand tr").css('background-color', '#ffffff');
            $(this).closest("tr").css('background-color', '#eeeeee');

            filterRange($(this).closest("tr"));
            filterInversePBrand($(this).closest("tr"));
            EditSBrand($(this).closest("tr"));

            $(this).closest("tr").attr("id", "selectedRowId");
        });
    });

    //la partie d'actions après avoir cliqué sur une ligne de range
    $(function () {
        $("#range td").click(function () {

            $("#range tr").css('background-color', '#ffffff');
            $(this).closest("tr").css('background-color', '#eeeeee');

            EditRange($(this).closest("tr"));
            filterInverseSBrand($(this).closest("tr"));
            filterInversePBrand($("#filteredSBrand"));

            $(this).closest("tr").attr("id", "selectedRowId");
        })
    })

    function filterSBrand(row) {

        var idPBrand = $("td", row).eq(0).text();

        $("#sBrand tr").each(function () {

            idPBrandInSBrand = $(this).find("td").eq(1).text();
            if (idPBrandInSBrand != null) {
                if (idPBrandInSBrand == idPBrand) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            }

        });
    }

    function filterRange(row) {

        var idSBrand = $("td", row).eq(1).text();

        $("#range tr").each(function () {

            var idSBrandInRange = $(this).find("td").eq(1).text();
            if (idSBrandInRange != null) {
                if (idSBrandInRange == idSBrand) {
                    $(this).show();
                }
                else {
                    $(this).hide();
                }

            }
        });
    }

        //filtrer Marque Première en cliquant sur une ligne de Marque Secondaire
        function filterInversePBrand(row) {

            var idPBrandInSBrand = $("td", row).eq(1).text().trim();
         
            $("#pBrand tr").each(function () {
                var idPBrand = $(this).find("td").eq(0).text().trim();
                if (idPBrand != null) {
                    if (idPBrand == idPBrandInSBrand) {
                        $(this).show();
                    }
                    else {
                        $(this).hide();
                    }
                }
            });
        }

        //filtrer Marque Secondaire en cliquant sur une ligne de Range
        function filterInverseSBrand(row) {

            var idSBrandInRange = $("td", row).eq(1).text().trim();

            $("#sBrand tr").each(function () {
                var idSBrand = $(this).find("td").eq(0).text().trim();
                $(this).closest("tr").attr("id", "");
                if (idSBrand != null) {
                    if (idSBrand == idSBrandInRange) {
                        $(this).show();
                        $(this).closest("tr").attr("id", "filteredSBrand");
                    }
                    else {
                        $(this).hide();
                    }
                }
            });
        }

        //modification de Marque Première
        function EditPBrand(row) {
            $("#btnEditPBrand").click(function () {

                var codPBrandForPop = $("td", row).eq(1).text();
                var LibPBrandForPop = $("td", row).eq(2).text();

                document.getElementById("codPBrandEdit").value = codPBrandForPop.trim();
                document.getElementById("libPBrandEdit").value = LibPBrandForPop.trim();

                dialogEditPBrand.dialog("open");
            });
        }

        function DisablePBrand(row) {
            $("#btnDisablePBrand").click(function () {
            });
        }


        //Modification de Marque Secondaire
        function EditSBrand(row) {
            $("#btnEditSBrand").click(function () {
                var codSBrandForPop = $("td", row).eq(2).text();
                var libSBrandForPop = $("td", row).eq(3).text();
                document.getElementById("codSBrandEdit").value = codSBrandForPop.trim();
                document.getElementById("libSBrandEdit").value = libSBrandForPop.trim();
                dialogEditSBrand.dialog("open");
            });
        }



        //La partie de pop-up
        var dialog = $("#dialog-form").dialog({

            autoOpen: false,

            height: 450,

            width: 350,

            modal: true,

            buttons: {

                "Créer une nouvelle marque première": addPBrand,

                Cancel: function () {

                    dialog.dialog("close");

                }

            },

            close: function () {

                dialog.dialog("close");

            }

        });

        $("#btnAddPBrand").click(function () {

            dialog.dialog("open");

        });

        function addPBrand() {
      
            var codPBrandPopUp = document.getElementById("codPBrand").value;

            var libPBrandPopUp = document.getElementById("libPBrand").value;

            $.ajax({

                url: "api/PBrandDataController?",

                methode: "POST",

                data: "param=codPBrand:" + codPBrandPopUp + ",libPBrand:" + libPBrandPopUp,

            }).done(function () {

                addRowToPBrand($('#pBrand tbody'), codPBrandPopUp, libPBrandPopUp);

            });

            dialog.dialog("close");

        }

        function addRowToPBrand(tableBody, code, designation) {

            tableBody.append('<tr onmouseover="MouseEvents(this, event)" onmouseout="MouseEvents(this, event)" style="color:#333333;background-color:White;">'

                                        + '<td>'

                                        + '<span id="pBrand_lblCodPBrand_2" style="display:inline-block;width:100px;">' + code + '</span>'

                                        + '</td>'

                                        + '<td>'

                                        + '<span id="pBrand_lblLibPBrandFr_2" style="display:inline-block;width:180px;">' + designation + '</span>'

                                        + '</td>'

                                        + '</tr>');

        }

        //La partie de Modification de Marque Première
        var dialogEditPBrand = $("#edit-pBrand").dialog({

            autoOpen: false,

            height: 400,

            width: 350,

            modal: true,

            buttons: {

                "Valider la modification": updatePBrand,

                Cancel: function () {

                    dialogEditPBrand.dialog("close");

                }

            },

            close: function () {

                dialogEditPBrand.dialog("close");

            }

        });

        $("#btnEditPBrand").click(function () {

            dialogEditPBrand.dialog("open");

        });

        function updatePBrand() {

           // var codPBrandModif = document.getElementById("codPBrandEdit").value;

            var libPBrandModif = document.getElementById("libPBrandEdit").value;

            var row = $("#selectedRowId");

            //modifier la ligne avec nouvelle libellé
            $("td", row).eq(2).html(libPBrandModif);

            //récupérer id de la ligne modifiée
            var idPBrandModif = $("td", row).eq(0).text();

            row.attr("id", "");

            $.ajax({

                url: "api/PBrandModifyController",

                methode: "POST",

                data: "param=idPBrand:" + idPBrandModif + ",libPBrand:" + libPBrandModif,

            }).done(function () {

            });


            dialogEditPBrand.dialog("close");
        }

            //Marque Secondaire popUp

            var dialogSBrand = $("#dialog-form-sBrand").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Créer une nouvelle marque secondaire": addSBrand,

                    Cancel: function () {

                        dialogSBrand.dialog("close");

                    }

                },

                close: function () {

                    dialogSBrand.dialog("close");

                }

            });


            function addSBrand() {

                var pBrandPopUp = document.getElementById("libPBrandForPopup").value;
                //var das = $('#libDasForPopup option:selected').text();
                var codSBrandPopUp = document.getElementById("codSBrand").value;

                var libSBrandPopUp = document.getElementById("libSBrand").value;

                //addRowToTable($('#segment tbody'), codSegPopUp, libSegPopUp);
        
                $.ajax({

                    url: "api/SBrandDataController?",

                    methode: "POST",

                    data: "param=libPBrand:" + pBrandPopUp + ",codSBrand:" + codSBrandPopUp + ",libSBrand:" + libSBrandPopUp,

                }).done(function () {

                    addRowToTable($('#sBrand tbody'), codSBrandPopUp, libSBrandPopUp);

                });

                dialogSBrand.dialog("close");

            }

            function addRowToTable(tableBody, code, designation) {

                tableBody.append('<tr onmouseover="MouseEvents(this, event)" onmouseout="MouseEvents(this, event)" style="color:#333333;background-color:White;">'

                                            + '<td>'

                                            + '<span id="sBrand_lblCod_2" style="display:inline-block;width:100px;">' + code + '</span>'

                                            + '</td>'

                                            + '<td>'

                                            + '<span id="sBrand_lblLibFr_2" style="display:inline-block;width:100px;">' + designation + '</span>'

                                            + '</td>'

                                            + '</tr>');

            }

            $("#btnAddSBrand").click(function () {

                dialogSBrand.dialog("open");

            });

            //La partie de Modification de la Marque Secondaire
            var dialogEditSBrand = $("#edit-sBrand").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Valider la modification": updateSBrand,

                    Cancel: function () {

                        dialogEditSBrand.dialog("close");

                    }

                },

                close: function () {

                    dialogEditSBrand.dialog("close");

                }

            });

            $("#btnEditSBrand").click(function () {

                dialogEditSBrand.dialog("open");

            });

            function updateSBrand() {

                var codSBrandModif = document.getElementById("codSBrandEdit").value;

                var libSBrandModif = document.getElementById("libSBrandEdit").value;

                var row = $("#selectedRowId");

                $("td", row).eq(2).html(codSBrandModif);

                $("td", row).eq(3).html(libSBrandModif);

                var idSBrandModif = $("td", row).eq(0).text();

                row.attr("id", "");

                $.ajax({

                    url: "api/SBrandModifyController",

                    methode: "POST",
                     
                    data: "param=idSBrand:" + idSBrandModif + ",CodSBrand:" + codSBrandModif + ",libSBrand:" + libSBrandModif,

                }).done(function () {

                });

                dialogEditSBrand.dialog("close");
            }

            //Gamme popUp

            var dialogRange = $("#dialog-form-range").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Créer une nouvelle gamme": addRange,

                    Cancel: function () {

                        dialogRange.dialog("close");

                    }

                },

                close: function () {

                    dialogRange.dialog("close");

                }

            });

            $("#btnAddRange").click(function () {

                dialogRange.dialog("open");

            });

            function addRange() {

                var libSBrandPopUp = document.getElementById("libSBrandForPopup").value;

                var codRangePopUp = document.getElementById("codRange").value;

                var libRangePopUp = document.getElementById("libRange").value;

                $.ajax({

                    url: "api/rangeDataController?",

                    methode: "POST",

                    data: "param=libSBrand:" + libSBrandPopUp + ",codRange:" + codRangePopUp + ",libRange:" + libRangePopUp,

                }).done(function () {

                    addRowToTable($('#range tbody'), codRangePopUp, libRangePopUp);

                });

                dialogRange.dialog("close");

            }
          //modification de Gamme
            function EditRange(row) {
                $("#btnEditRange").click(function () {
                    var codRangeForPop = $("td", row).eq(2).text();
                    var libRangeForPop = $("td", row).eq(3).text();
                    document.getElementById("codRangeEdit").value = codRangeForPop.trim();
                    document.getElementById("libRangeEdit").value = libRangeForPop.trim();
                    dialogEditRange.dialog("open");
                });
            }
            
            var dialogEditRange = $("#edit-range").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Valider la modification": updateRange,

                    Cancel: function () {

                        dialogEditRange.dialog("close");

                    }

                },

                close: function () {

                    dialogEditRange.dialog("close");

                }

            });

            $("#btnEditRange").click(function () {

                dialogEditRange.dialog("open");

            });

            function updateRange() {

                var codRangeModif = document.getElementById("codRangeEdit").value;

                var libRangeModif = document.getElementById("libRangeEdit").value;

                var row = $("#selectedRowId");

                $("td", row).eq(2).html(codRangeModif);

                $("td", row).eq(3).html(libRangeModif);

                var idRangeModif = $("td", row).eq(0).text();

                row.attr("id", "");


                $.ajax({

                    url: "api/RangeModifyController",

                    methode: "POST",

                    data: "param=idRange:" + idRangeModif + ",CodRange:" + codRangeModif + ",libRange:" + libRangeModif,

                }).done(function () {

                });
                dialogEditRange.dialog("close");
            }
</script>


