<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fluxDAS.aspx.cs" Inherits="AGI.fluxDAS" EnableEventValidation = "false"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

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
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">   
    <link href="Css/fDas.css" type='text/css' rel='stylesheet' /> 
    <title>Flux DAS</title>
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
          <a href="#">Flux IMS</a>
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

<form runat ="server" >
<asp:TreeView ID="TreeViewSideMenu" runat="server" BackColor ="#0f4396" Width ="220px" BorderStyle ="Solid" border-radius="10px" 
              BorderColor ="#dedede" BorderWidth ="1px" ForeColor ="#555" style="margin-left:0px;font-family:Arial, Helvetica, sans-serif" >
    <HoverNodeStyle ForeColor="#555"  BackColor ="#edb93b"/>
    <Nodes>
        <asp:TreeNode Text="Flux Activity" Value="Flux Activity">
            <asp:TreeNode Text="Organic" Value="Organic"></asp:TreeNode>
            <asp:TreeNode Text="Primary Brand" Value="Primary Brand"></asp:TreeNode>
            <asp:TreeNode Text="Secondary Brand" Value="Secondary Brand"></asp:TreeNode>
            <asp:TreeNode Text="Range" Value="Ranger"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="Flux Amalgamme" Value="Flux Amalgamme"></asp:TreeNode>
        <asp:TreeNode Text="Flux APV" Value="Flux APV"></asp:TreeNode>
        <asp:TreeNode Text="Flux Article Codification" Value="Flux Article Codification"></asp:TreeNode>
        <asp:TreeNode Text="Flux Article Record" Value="Flux Article Record"></asp:TreeNode>
        <asp:TreeNode Text="Flux Article Sizing" Value="Flux Article Sizing"></asp:TreeNode>
        <asp:TreeNode Text="Flux BOM" Value="Flux BOM"></asp:TreeNode>
        <asp:TreeNode Text="Flux BUYER PURVEYOR" Value="Flux BUYER PURVEYOR"></asp:TreeNode>
        <asp:TreeNode Text="Flux Currency" Value="Flux Currency"></asp:TreeNode>
        <asp:TreeNode Text="Flux Costum Record" Value="Flux Costum Record"></asp:TreeNode>
        <asp:TreeNode Text="Flux Customer Hierarchie" Value="Flux Customer Hierarchie"></asp:TreeNode>
        <asp:TreeNode Target="new" Text="Flux DAS" Value="Flux DAS">
            <asp:TreeNode Text="DAS" Value="DAS" NavigateUrl ="~/ConsulDAS.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Segment" Value="Segment" NavigateUrl ="~/ConsulSegment.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Sous Segment" Value="Sous Segment" NavigateUrl ="~/ConsulSousSeg.aspx"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="Flux Dynasys" Value="Flux Dynasys"></asp:TreeNode>
        <asp:TreeNode Text="Flux Labelling" Value="Flux Labelling"></asp:TreeNode>
        <asp:TreeNode Text="Flux Life Cycle" Value="Flux Life Cycle"></asp:TreeNode>
        <asp:TreeNode Text="Flux Logistique" Value="Flux Logistique"></asp:TreeNode>
        <asp:TreeNode Text="Flux IMS" Value="Flux IMS"></asp:TreeNode>
        <%--<asp:TreeNode Text="Flux ISO639 Language ISO3166 Country" Value="Flux ISO639 Language ISO3166 Country"></asp:TreeNode>--%>
        <asp:TreeNode Text="Flux OF" Value="Flux OF"></asp:TreeNode>
        <asp:TreeNode Text="Flux Ortems" Value="Flux Ortems"></asp:TreeNode>
        <asp:TreeNode Text="Flux Partner" Value="Flux Partner"></asp:TreeNode>
        <asp:TreeNode Text="Flux Purchase Family" Value="Flux Purchase Family"></asp:TreeNode>
        <asp:TreeNode Text="Flux Stock" Value="Flux Stock"></asp:TreeNode>
        <asp:TreeNode Text="Flux Supplier Prices" Value="Flux Supplier Prices"></asp:TreeNode>
        <asp:TreeNode Text="Flux Machine" Value="Flux Machine"></asp:TreeNode>      
    </Nodes> 
     <NodeStyle Font-Size="14px" ForeColor="white" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px"  />
     <ParentNodeStyle Font-Bold="False" />
     <SelectedNodeStyle Font-Underline="True" ForeColor="#555" HorizontalPadding="0px" VerticalPadding="0px" />
</asp:TreeView>
<%--<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="btnAddDas" OkControlID ="Button1"

    CancelControlID="Button2" BackgroundCssClass="Background" >

</cc1:ModalPopupExtender>
    
<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">

    <iframe style=" width: 350px; height: 300px;" id="irm1" src="popup.aspx" runat="server"></iframe>
    <br/>
    <asp:Button ID="btnDasformule" runat="server" Text="Valider"  BackColor ="#edb93b" ForeColor ="white" BorderStyle ="Solid"/>
    <asp:Button ID="btnAnnuler" runat="server" Text="Annuler" BackColor ="#edb93b" ForeColor ="white" BorderStyle ="Solid"/>
</asp:Panel>--%>


<div class ="mainContent">
     <input type="text" placeholder="Recherche" id="searchInput" onkeyup ="filterAll();" autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:300px;height:30px; border-radius:6px;margin-left:2px"> 
       <br />
       <br />
     <div class="row">      
         <div class ="col">
             <a class="entete">DAS</a>
          
             <%--<input type="text" placeholder="Recherche" id="searchDas" onkeyup ="searchDas()" >--%>  
             <br />
             <div>
                 <table id="tblHeader" class ="gvDas" border="1">
                     <tbody>
                         <tr>
                             <%--<th style="text-align :center ;width:150px; color:white;background-color:#edb93b">ID DAS</th>--%>
                             <th style="text-align :center ;width:100px; color:white;background-color:#edb93b">Code DAS</th>
                             <th style="text-align :center ;width:120px; color:white;background-color:#edb93b">Code Activity</th>
                             <th style="text-align :center ;width:200px; color:white;background-color:#edb93b">Désignation DAS</th>
                         </tr>
                     </tbody>
                 </table>
             </div>
             <div style="overflow-y:scroll; width:auto ; height:330px" >
                 <%--<asp:Panel ID="panelContainer" runat="server" Height="300px" Width="100%" ScrollBars="Vertical">--%>
                   
             <asp:GridView ID="das" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                        HeaderStyle-Font-Underline="false" OnSelectedIndexChanged="das_SelectedIndexChanged"
                        onrowcancelingedit="das_RowCancelingEdit" Font-Names="Arial, Helvetica, sans-serif"
                        onrowdatabound="das_RowDataBound" onrowdeleting="das_RowDeleting"   
                        onrowediting="das_RowEditing" onrowupdating="das_RowUpdating"   
                        onsorting="das_Sorting" ForeColor="#333333" GridLines="None"> 
                        <RowStyle BackColor="White"  ForeColor="#333333" /> 
                            <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />--%>
                            <Columns> 
                               <asp:TemplateField  HeaderText="ID DAS     " SortExpression="IdDAS" Visible="false" > 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxIdDAS" runat="server" Text='<%# Bind("ID_DAS") %>' Visible="false" ></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblIdDAS" runat="server" Text='<%# Bind("ID_DAS") %>' Visible="false"></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField  HeaderText="Cod DAS     " SortExpression="CodDAS"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxCodDAS" runat="server"  Text='<%# Bind("Cod_DAS") %>'  Width ="100px"></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblCodDAS" runat="server"  Text='<%# Bind("Cod_DAS") %>' Width ="100px"></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Cod Activity     " SortExpression="CodActivity"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxCodActi" runat="server" Text='<%# Bind("Cod_Activity") %>'  Width ="100px"></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblCodActi" runat="server" Text='<%# Bind("Cod_Activity") %>' Width ="100px"></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Désignation DAS" SortExpression="libDasFr"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxLibDasFr" runat="server" Text='<%# Bind("Lib_DAS_Fr") %>'  Width ="180px"></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblLibDasFr" runat="server" Text='<%# Bind("Lib_DAS_Fr") %>' Width ="180px"></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                            </Columns> 
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#edb93b" ForeColor="White" Font-Bold="True" /> 
                            <PagerStyle BackColor="#edb93b" ForeColor="White" HorizontalAlign="Center" /> 
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" /> 
                            <HeaderStyle BackColor="#edb93b" Font-Bold="True" ForeColor="white" CssClass ="header"/>
       <%--                 <HeaderStyle CssClass="fixedHeader" />--%>
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView> 
                      <%-- </asp:Panel>--%>
          </div> 
             <button ID="btnAddDas" class="btnAdd" type="button">Créer</button>
             <button ID="btnEditDas" class="btnEdit" type="button">Modifier</button>
             <button ID="btnDisableDas" class="btnDeac" type="button">Désactiver</button>
         </div>
         <div class="col">
             <a class="entete">Segment</a>
             <br />
             <div>
                 <table id="tblHeaderSeg" class ="gvSegment" border="1">
                     <tbody>
                         <tr>
                            <%-- <th style="text-align :center ;width:150px; color:white;background-color:#edb93b">ID Segment</th>--%>
                             <%--<th style="text-align :center ;width:150px; color:white;background-color:#edb93b">ID DAS</th>--%>
                             <th style="text-align :center ;width:140px; color:white;background-color:#edb93b">Code Segment</th>
                             <th style="text-align :center ;width:270px; color:white;background-color:#edb93b">Désignation Segment</th>
                         </tr>
                     </tbody>
                 </table>
             </div>
             <div style="overflow-y:scroll; overflow-x:hidden; width:auto ; height:330px" >
                 <%-- <asp:Panel ID="panel1" runat="server" Height="300px" Width="100%" ScrollBars="Vertical">--%>
             <asp:GridView ID="segment" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                        HeaderStyle-Font-Underline="false"
                        onrowcancelingedit="segment_RowCancelingEdit"   Font-Names="Arial, Helvetica, sans-serif"
                        onrowdatabound="segment_RowDataBound" onrowdeleting="segment_RowDeleting"   
                        onrowediting="segment_RowEditing" onrowupdating="segment_RowUpdating"  
                        onsorting="segment_Sorting" ForeColor="#333333" GridLines="None"> 
                        <RowStyle BackColor="White" ForeColor="#333333" Width ="150px" /> 
                            <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />--%>
                            <Columns> 
                                <asp:BoundField DataField="ID_Segment" HeaderText="ID Segment" ReadOnly="True"  
                                    SortExpression="ID_Segment" visible="false" /> 
                                <asp:TemplateField HeaderText="ID DAS" SortExpression="IdDAS" Visible ="false"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxIdDAS" runat="server"  Visible ="false" Text='<%# Bind("ID_DAS") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblIdDAS" runat="server"  Visible ="false" Text='<%# Bind("ID_DAS") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Code Segment" SortExpression="CodSegment"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxCodSeg" runat="server" Text='<%# Bind("Cod_Segment") %>' Width ="130px"></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblCodSeg" runat="server" Text='<%# Bind("Cod_Segment") %>' Width ="130px"></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Désignation Segment" SortExpression="libSegFr"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxLibSegFr" runat="server" Text='<%# Bind("Lib_Segment_Fr") %>' Width ="250px"></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblLibSegFr" runat="server" Text='<%# Bind("Lib_Segment_Fr") %>' Width ="250px"></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                            </Columns> 
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#edb93b" ForeColor="black" Font-Bold="True" /> 
                            <PagerStyle BackColor="#edb93b" ForeColor="White" HorizontalAlign="Center" /> 
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" /> 
                            <HeaderStyle BackColor="#edb93b" Font-Bold="True" ForeColor="white" CssClass ="header"/> 
                <%--  <HeaderStyle CssClass="fixedHeader" />--%>
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
         </asp:GridView> 
   <%--       </asp:Panel>--%>
         </div>
             <button ID="btnAddSeg" class="btnAdd" type="button">Créer</button>
             <button ID="btnEditSeg" class="btnEdit" type="button">Modifier</button>
             <button ID="btnDisableSeg" class="btnDeac" type="button">Désactiver</button>
         </div>
       <div class="col" style="width:600px">
             <a class="entete">Sous Segment</a>
             <br />
           <div>
                <table id="tblHeaderSubSeg" class ="gvSubSegment" border="1">
                    <tbody>
                        <tr>
                           <%-- <th style="text-align :center ;width:150px; color:white;background-color:#edb93b">ID Sous Segment</th>
                            <th style="text-align :center ;width:150px; color:white;background-color:#edb93b">ID Segment</th>--%>
                            <th style="text-align :center ;width:160px; color:white;background-color:#edb93b">Code Sous Segment</th>
                            <th style="text-align :center ;width:250px; color:white;background-color:#edb93b">Désignation Sous Segment</th>
                        </tr>
                    </tbody>
                </table>
            </div>
             <div style="overflow-y:scroll;width:auto ; height:330px" >
             <asp:GridView ID="subSegment" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                        HeaderStyle-Font-Underline="false"
                        onrowcancelingedit="subSegment_RowCancelingEdit"   Font-Names="Arial, Helvetica, sans-serif"
                        onrowdatabound="subSegment_RowDataBound" onrowdeleting="subSegment_RowDeleting"  
                        onrowediting="subSegment_RowEditing" onrowupdating="subSegment_RowUpdating"  
                        onsorting="subSegment_Sorting" ForeColor="#333333" GridLines="None"> 
                        <RowStyle BackColor="White" ForeColor="#333333" /> 
                         <%--  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />--%>
                            <Columns> 
                                <asp:BoundField DataField="ID_Sub_Segment" HeaderText="ID Sous Segment" ReadOnly="True"  
                                    SortExpression="ID_Sub_Segment" visible="false" /> 
                                <asp:TemplateField HeaderText="ID Segment" SortExpression="IdSegment" Visible ="false"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxIdSeg" runat="server" Visible="false" Text='<%# Bind("ID_Segment") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblIdSeg" runat="server" Visible ="false" Text='<%# Bind("ID_Segment") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Code Sous Segment" SortExpression="CodSubSegment"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxCodSubSeg" runat="server" Text='<%# Bind("Cod_Sub_Segment") %>' ></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblCodSubSeg" runat="server" Text='<%# Bind("Cod_Sub_Segment") %>' Width="160px"></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Désignation Sous Segment" SortExpression="libDasFr"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxLibSouSegFr" runat="server" Text='<%# Bind("Lib_Sub_Segment_Fr") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblLibSouSegFr" runat="server" Text='<%# Bind("Lib_Sub_Segment_Fr") %>' Width="200px"></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                            </Columns> 
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#edb93b" ForeColor="White" Font-Bold="True" /> 
                            <PagerStyle BackColor="#edb93b" ForeColor="White" HorizontalAlign="Center" /> 
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" /> 
                            <HeaderStyle BackColor="#edb93b" Font-Bold="True" ForeColor="white"  CssClass="header"/> 
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>    
          </div>
             <button ID="btnAddSubSeg" class="btnAdd" type="button">Créer</button>
             <button ID="btnEditSubSeg" class="btnEdit" type="button">Modifier</button>
             <button ID="btnDisableSubSeg" class="btnDeac" type="button">Désactiver</button>
         </div> 
     </div>
</div> 
</form>

<div id="dialog-form" title="Creation d'un nouveau DAS">

  <p class="validateTips">Tous les champs sont requis.</p >

      <label for="Code DAS">Code DAS</label>
      <br />
      <input type="text" name="Code Das" id="codDas" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
      <label for="Code Activity">Code Activity</label>
      <br />
      <label for="CodActi Info"> (Les deux premiers lettre de code DAS)</label>
      <br />
      <input type="text" name="Code Activity" id="codActi" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
      <label for="libDas">Désignation DAS</label>
      <br />
      <input type="text" name="libDas" id="libDas" value="" class="text ui-widget-content ui-corner-all"/>
      <br /> 
      <label for="libDas">Désignation DAS En Anglais</label>
      <br />
      <input type="text" name="libDas" id="libDasEn" value="" class="text ui-widget-content ui-corner-all"/>

</div>

<div id="edit-das" title="Modifier d'un DAS">

  <p class="validateTips">Tous les champs sont requis.</p >

      <label for="Code DAS">Code DAS</label>
       <br />
      <input type="text" name="Code Das" id="codDasEdit" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
      <label for="Code Activity">Code Activity</label>
      <br />
      <input type="text" name="Code Activity" id="codActiEdit" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
      <label for="libDas">Désignation DAS</label>
      <br />
      <input type="text" name="libDas" id="libDasEdit" value="" class="text ui-widget-content ui-corner-all"/>

</div>

<div id="dialog-form-segment" title="Creation d'un nouveau Segment">

  <p class="validateTips">Tous les champs sont requis.</p >
    <label for="DAS">DAS</label>  
    <br />
    <select id="libDasForPopup" name="DAS" style ="font-family :Arial, Helvetica, sans-serif">
        <script type="text/javascript">
       
                $("#das tr").each(function () {
                    das = $(this).find("td").eq(2).text().trim();
                    $("#libDasForPopup").append('<option>' + das + '</option>');     
                });
       
        </script>
      </select>
      <br />
      <label for="Code Segment">Code Segment</label>
      <br />
      <input type="text" name="Code Segment" id="codSegment" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
      <label for="libSegment">Désignation Segment</label>
      <br />
      <input type="text" name="libDas" id="libSegment" value="" class="text ui-widget-content ui-corner-all"/>  
      <br />
</div>

<div id="edit-segment" title="Modifier d'un Segment">

  <p class="validateTips">Tous les champs sont requis.</p >

      <label for="Code Segment">Code Segment</label>
      <br />
      <input type="text" name="Code Segment" id="codSegEdit" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
      <label for="libSegment">Désignation Segment</label>
      <br />
      <input type="text" name="libDas" id="libSegEdit" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
</div>

<div id="dialog-form-subSegment" title="Creation d'un nouveau Sous Segment">

  <p class="validateTips">Tous les champs sont requis.</p >
      <label for="Segment">Segment</label>
      <br />
      <select id="libSegmentForPopup" name="Segment" style ="font-family :Arial, Helvetica, sans-serif">
        <script type="text/javascript">
 
                $("#segment tr").each(function () {
                    segment = $(this).find("td").eq(1).text().trim();
                    $("#libSegmentForPopup").append('<option>' + segment + '</option>');     
                });
            
        </script>
      </select>

      <label for="Code Sous Segment">Code Sous Segment</label>
      <br />
      <input type="text" name="Code Sous Segment" id="codSubSegment" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
      <label for="libSubSegment">Désignation Sous Segment</label>
      <br />
      <input type="text" name="libDas" id="libSubSegment" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
</div>

<div id="edit-subSeg" title="Modification d'un Sous Segment">

  <p class="validateTips">Tous les champs sont requis.</p >

      <label for="Code Sous Segment">Code Sous Segment</label>
      <br />
      <input type="text" name="Code Sous Segment" id="codSubSegEdit" value="" class="text ui-widget-content ui-corner-all"/>
      <br />
      <label for="libSubSegment">Désignation Sous Segment</label>
      <br />
      <input type="text" name="libDas" id="libSubSegEdit" value="" class="text ui-widget-content ui-corner-all"/>

</div>
<br/>
<br/>
<br/>
<br/>
<div class="footer">
    <p>&copy; <%: DateTime.Now.Year %> - Alès Groupe</p>
</div>
</body>
</html>

<script>
    //la partie pour filtrer Segment selon la ligne de DAS Choisie
    $(function () {
        $("#das td").click(function () {
            $(this).closest("tr").css('background-color', '#eeeeee');
            filterSegment($(this).closest("tr"));
            EditDas($(this).closest("tr"));
            DisableDas($(this).closest("tr"));
        });
    });

    function EditDas(row){            
      $("#btnEditDas").click(function () {
          var codDasForPop = $("td", row).eq(0).text();
          var codActiForPop = $("td", row).eq(1).text();
          var LibDasForPop = $("td", row).eq(2).text();
          document.getElementById("codDasEdit").value = codDasForPop.trim();
          document.getElementById("codActiEdit").value = codActiForPop.trim();
          document.getElementById("libDasEdit").value = LibDasForPop.trim();
          dialogEditDas.dialog("open");
      });
    }

    function DisableDas(row) {
        $("#btnDisableDas").click(function () {
        });
    }
    function filterSegment(row) {
        var codDas = $("td", row).eq(0).text();
        $("#segment tr").each(function () {
            var codeDasInSegment,
            codeDasInSegment = $(this).find("td").eq(0).text().trim();
            if (codeDasInSegment != null) {
                codeDasInSegment = codeDasInSegment.substring(0, 5);
                if (codeDasInSegment == codDas.trim()) {
                    $(this).show();
                } else {
                    $(this).hide();
                }
            }
        });
    }

        //la partie pour filtrer Sous Segment selon la ligne de Segment Choisie
        $(function () {
            $("#segment td").click(function () {
                $("segment tr").css('background-color', "white");
                $(this).closest("tr").css('background-color', '#eeeeee');
                filterSousSegment($(this).closest("tr"));
                EditSegment($(this).closest("tr"));
            });
        });

        function EditSegment(row) {
            $("#btnEditSeg").click(function () {
                var codSegmentForPop = $("td", row).eq(0).text();
                var libSegmentForPop = $("td", row).eq(1).text();
                document.getElementById("codSegEdit").value = codSegmentForPop.trim();
                document.getElementById("libSegEdit").value = libSegmentForPop.trim();
                dialogEditSeg.dialog("open");
            });
        }

        function filterSousSegment(row) {
            var codeSegment = $("td", row).eq(0).text();
            $("#subSegment tr").each(function () {
                var codeSegmentInSubSegment = $(this).find("td").eq(0).text().trim();
                if (codeSegmentInSubSegment != null) {
                    codeSegmentInSubSegment = codeSegmentInSubSegment.substring(0, 7);
                    if (codeSegmentInSubSegment == codeSegment.trim()) {
                        $(this).show();
                    }
                    else {
                        $(this).hide();
                    }
                }
            });
        }

        $(function () {
            $("#subSegment td").click(function () {
                $("subSegment tr").css('background-color', "white");
                $(this).closest("tr").css('background-color', '#eeeeee');
                EditSubSegment($(this).closest("tr"));
            })
        })

        //search fonctionne
        function filterAll() {
            filterTable($('#segment tr'));
            filterTable($('#das tr'));
            filterTable($('#subSegment tr'));
        }

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

        //La partie de pop-up
        var dialog = $("#dialog-form").dialog({

            autoOpen: false,

            height: 450,

            width: 350,

            modal: true,

            buttons: {

                "Créer un nouveau DAS": addDas,

                Cancel: function () {

                    dialog.dialog("close");

                }

            },

            close: function () {

                dialog.dialog("close");

            }

        });

        $("#btnAddDas").click(function () {

            dialog.dialog("open");

        });

        function addDas() {
      
            var codDasPopUp = document.getElementById("codDas").value;

            var codActiPopUp = document.getElementById("codActi").value;

            var libDasPopUp = document.getElementById("libDas").value;

            //addRowToDas($('#das tbody'), codDasPopUp, codActiPopUp, libDasPopUp);

            $.ajax({

                url: "api/DasDataController?",

                methode: "POST",

                body: {

                    "codDas": codDasPopUp,

                    "codActi": codActiPopUp,

                    "libDas": libDasPopUp

                },

            }).done(function () {

                addRowToTable($('#das tbody'), codDasPopUp, codActiPopUp, libDasPopUp);

            });

            dialog.dialog("close");

        }

        function addRowToDas(tableBody, code, codeActivity, designation) {

            tableBody.append('<tr onmouseover="MouseEvents(this, event)" onmouseout="MouseEvents(this, event)" style="color:#333333;background-color:White;">'

                                        + '<td>'

                                        + '<span id="das_lblCodDAS_2" style="display:inline-block;width:100px;">' + code + '</span>'

                                        + '</td>'

                                        + '<td>'

                                        + '<span id="das_lblCodActi_2" style="display:inline-block;width:100px;">' + codeActivity + '</span>'

                                        + '</td>'

                                        + '<td>'

                                        + '<span id="das_lblLibDasFr_2" style="display:inline-block;width:180px;">' + designation + '</span>'

                                        + '</td>'

                                        + '</tr>');

        }

        //La partie de Modification de DAS
        var dialogEditDas = $("#edit-das").dialog({

            autoOpen: false,

            height: 400,

            width: 350,

            modal: true,

            buttons: {

                "Valider la modification": editDas,

                Cancel: function () {

                    dialogEditDas.dialog("close");

                }

            },

            close: function () {

                dialogEditDas.dialog("close");

            }

        });

        $("#btnEditDas").click(function () {

            dialogEditDas.dialog("open");

        });

        function editDas(){
            var codDasModif = document.getElementById("codDasEdit").value;

            var codActiModif = document.getElementById("codActiEdit").value;

            var libDasModif = document.getElementById("libDasEdit").value;


        }

            //segment popUp

            var dialogSegment = $("#dialog-form-segment").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Créer un nouveau Segment": addSegment,

                    Cancel: function () {

                        dialogSegment.dialog("close");

                    }

                },

                close: function () {

                    dialogSegment.dialog("close");

                }

            });


            function addSegment() {

                var dasPopUp = document.getElementById("libDasForPopup").value;
                //var das = $('#libDasForPopup option:selected').text();
                var codSegPopUp = document.getElementById("codSegment").value;

                var libSegPopUp = document.getElementById("libSegment").value;

                addRowToTable($('#segment tbody'), codSegPopUp, libSegPopUp);

                /*
                
                           $.ajax({
                
                               url: "api/AddData",
                
                               methode: "POST",
                
                               body: {
                
                                   "codDas": codDasPopUp,
                
                                   "codActi": codActiPopUp,
                
                                   "libDas": libDasPopUp
                
                               },
                
                
                
                               }).done(function() { 
                
                                   addRowToTable($('#das tbody'), codDasPopUp, codActiPopUp, libDasPopUp);
                
                           });     
                
                */

                dialog.dialog("close");

            }
            function addRowToTable(tableBody, code, designation) {

                tableBody.append('<tr onmouseover="MouseEvents(this, event)" onmouseout="MouseEvents(this, event)" style="color:#333333;background-color:White;">'

                                            + '<td>'

                                            + '<span id="das_lblCodDAS_2" style="display:inline-block;width:100px;">' + code + '</span>'

                                            + '</td>'

                                            + '<td>'

                                            + '<span id="das_lblLibDasFr_2" style="display:inline-block;width:180px;">' + designation + '</span>'

                                            + '</td>'

                                            + '</tr>');

            }

            $("#btnAddSeg").click(function () {

                dialogSegment.dialog("open");

            });

            //La partie de Modification de Segment
            var dialogEditSeg = $("#edit-segment").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Valider la modification": editSegment,

                    Cancel: function () {

                        dialogEditSeg.dialog("close");

                    }

                },

                close: function () {

                    dialogEdit.dialog("close");

                }

            });

            $("#btnEditSeg").click(function () {

                dialogEditSeg.dialog("open");

            });

            function editSegment() {

                var codSegModif = document.getElementById("codSegEdit").value;

                var libSegModif = document.getElementById("libSegEdit").value;


            }

            //Sous Segment popUp

            var dialogSubSegment = $("#dialog-form-subSegment").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Créer un nouveau SubSegment": addSubSegment,

                    Cancel: function () {

                        dialogSubSegment.dialog("close");

                    }

                },

                close: function () {

                    dialogSubSegment.dialog("close");

                }

            });

            $("#btnAddSubSeg").click(function () {

                dialogSubSegment.dialog("open");

            });

            function addSubSegment() {

                var segmentPopUp = document.getElementById("libSegmentForPopup").value;

                var codSubSegPopUp = document.getElementById("codSubSegment").value;

                var libSubSegPopUp = document.getElementById("libSubSegment").value;

                addRowToTable($('#subSegment tbody'), codSubSegPopUp, libSubSegPopUp);

                /*
                
                           $.ajax({
                
                               url: "api/AddData",
                
                               methode: "POST",
                
                               body: {
                
                                   "codDas": codDasPopUp,
                
                                   "codActi": codActiPopUp,
                
                                   "libDas": libDasPopUp
                
                               },
                
                
                
                               }).done(function() { 
                
                                   addRowToTable($('#das tbody'), codDasPopUp, codActiPopUp, libDasPopUp);
                
                           });     
                
                */

                dialog.dialog("close");

            }

          //modification Sous Segment
            function EditSubSegment(row) {
                $("#btnEditSubSeg").click(function () {
                    var codSubSegForPop = $("td", row).eq(0).text();
                    var libSubSegForPop = $("td", row).eq(1).text();
                    document.getElementById("codSubSegEdit").value = codSubSegForPop.trim();
                    document.getElementById("libSubSegEdit").value = libSubSegForPop.trim();
                    dialogEditSubSeg.dialog("open");
                });
            }
            
            var dialogEditSubSeg = $("#edit-subSeg").dialog({

                autoOpen: false,

                height: 400,

                width: 350,

                modal: true,

                buttons: {

                    "Valider la modification": editSubSeg,

                    Cancel: function () {

                        dialogEditSubSeg.dialog("close");

                    }

                },

                close: function () {

                    dialogEditSubSeg.dialog("close");

                }

            });

            $("#btnEditSubSeg").click(function () {

                dialogEditSubSeg.dialog("open");

            });

            function editSubSeg() {

                var codSubSegModif = document.getElementById("codSubSegEdit").value;

                var libSubSegModif = document.getElementById("libSubSegEdit").value;

            }
</script>

