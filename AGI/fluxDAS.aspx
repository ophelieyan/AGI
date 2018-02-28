<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fluxDAS.aspx.cs" Inherits="AGI.fluxDAS" %>

<!DOCTYPE html>

<style>
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
    border-right:1px solid #0026ff;
}

#topMenu li:last-child {
    border-right :none;
}
 
#topMenu li.menu-element1 {
    padding-left:180px;
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
    position:absolute;
    height:800px;
    width:85%;
    top:100px;
    left:300px;
}

.btnAdd {
    color :white;
    background-color :#0f4396;
    margin-left :40px;
    margin-top :20px;
}

.btnEdit {
    color :white;
    background-color :#0f4396;
    margin-left:10px;
    margin-top:20px;
}

.btnDeac {
    color :white;
    background-color :#0f4396;
    margin-left :10px;
    margin-top :20px;
}

.ddl {
    font-family :Arial, Helvetica, sans-serif ;
    color :#404040 ;
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

    .selected {
        background-color :mistyrose;
    }

#segment {
    scrollbar-arrow-color:cornflowerblue ; 

}

.grdView-header {
        color:#0f4396; 
        position:absolute;
        display:block;
        margin-top:-1px;
}

</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <title>Consultation de Segment</title>
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
          <a href="#">Libellé et référencement international</a>          
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
      <li style="float:right"> 
          <form class="form-wrapper">
              <input type="text" id="search" placeholder="Recherche" required>
              <input type="submit" value="OK" id="submit">
          </form>
      </li>
</ul>
</div>

<form runat ="server" >
<asp:TreeView ID="TreeViewSideMenu" runat="server" BackColor ="#0f4396" Width ="295px" BorderStyle ="Solid" border-radius="10px" 
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
        <asp:TreeNode Text="Flux ISO639 Language ISO3166 Country" Value="Flux ISO639 Language ISO3166 Country"></asp:TreeNode>
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
<div class ="mainContent"> 
     <div class="row">
         <div class ="col">
             <a class="entete">DAS</a>
             <br />
             <br />
             <div style="overflow-y:auto; width:auto ; height:400px" >
             <asp:GridView ID="das" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                        HeaderStyle-Font-Underline="false" 
                        onrowcancelingedit="das_RowCancelingEdit"   Font-Names="Arial, Helvetica, sans-serif"
                        onrowdatabound="das_RowDataBound" onrowdeleting="das_RowDeleting"   
                        onrowediting="das_RowEditing" onrowupdating="das_RowUpdating"   
                        onsorting="das_Sorting" ForeColor="#333333" GridLines="None"> 
                        <RowStyle BackColor="White"  ForeColor="#333333" /> 
                            <%--<AlternatingRowStyle BackColor="White" ForeColor="#284775" />--%>
                            <Columns> 
                                <asp:TemplateField  HeaderText="Cod_DAS" SortExpression="CodDAS"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxCodDAS" runat="server" Text='<%# Bind("Cod_DAS") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblCodDAS" runat="server" Text='<%# Bind("Cod_DAS") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Cod_Activity" SortExpression="CodActivity"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxCodActi" runat="server" Text='<%# Bind("Cod_Activity") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblCodActi" runat="server" Text='<%# Bind("Cod_Activity") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Désignation DAS" SortExpression="libDasFr"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxLibDasFr" runat="server" Text='<%# Bind("Lib_DAS_Fr") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblLibDasFr" runat="server" Text='<%# Bind("Lib_DAS_Fr") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                            </Columns> 
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#edb93b" ForeColor="White" Font-Bold="True" /> 
                            <PagerStyle BackColor="#edb93b" ForeColor="White" HorizontalAlign="Center" /> 
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" /> 
                            <HeaderStyle BackColor="#edb93b" Font-Bold="True" ForeColor="white"/> 
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView> 
          </div> 
             <asp:Button ID="btnAddDas" runat="server" Text="Créer" Cssclass="btnAdd"/>
             <asp:Button ID="btnEditDas" runat="server" Text="Modifier" CssClass="btnEdit" />
             <asp:Button ID="btnDeacDas" runat="server" Text="Déactiver" CssClass="btnDeac" />
         </div>
         <div class="col">
             <a class="entete">Segment</a>
             <br />
             <br />
            <%-- <asp:DropDownList ID="ddlDAS" runat ="server" CssClass ="ddl"></asp:DropDownList>--%>
             <div style="overflow-y:scroll; overflow-x:hidden; width:auto ; height:400px" >
             <asp:GridView ID="segment" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                        HeaderStyle-Font-Underline="false"  HeaderStyle-Width ="390px" ItemStyle_Width="390px"
                        onrowcancelingedit="segment_RowCancelingEdit"   Font-Names="Arial, Helvetica, sans-serif"
                        onrowdatabound="segment_RowDataBound" onrowdeleting="segment_RowDeleting"   
                        onrowediting="segment_RowEditing" onrowupdating="segment_RowUpdating"  
                        onsorting="segment_Sorting" ForeColor="#333333" GridLines="None"> 
                        <HeaderStyle CssClass ="grdView-header" />
                        <RowStyle BackColor="White" ForeColor="#333333" /> 
                           <%-- <AlternatingRowStyle BackColor="White" ForeColor="#284775" />--%>
                            <Columns> 
                                <asp:TemplateField HeaderText="Code Segment" SortExpression="CodSegment"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxCodSeg" runat="server" Text='<%# Bind("Cod_Segment") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblCodSeg" runat="server" Text='<%# Bind("Cod_Segment") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Désignation Segment" SortExpression="libSegFr"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxLibSegFr" runat="server" Text='<%# Bind("Lib_Segment_Fr") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblLibSegFr" runat="server" Text='<%# Bind("Lib_Segment_Fr") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                            </Columns> 
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#edb93b" ForeColor="black" Font-Bold="True" /> 
                            <PagerStyle BackColor="#edb93b" ForeColor="White" HorizontalAlign="Center" /> 
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" /> 
                            <HeaderStyle BackColor="#edb93b" Font-Bold="True" ForeColor="white"/> 
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
         </asp:GridView> 
         </div>
         <asp:Button ID="btnAddSeg" runat="server" Text="Créer" Cssclass="btnAdd"/>
         <asp:Button ID="btnEditSeg" runat="server" Text="Modifier" CssClass="btnEdit" />
         <asp:Button ID="btnDeacSeg" runat="server" Text="Déactiver" CssClass="btnDeac"/>
         </div>
         <div class="col">
             <a class="entete">Sous Segment</a>
             <br />
             <br />
           <%--  <asp:DropDownList ID="ddlSegment" runat ="server" CssClass ="ddl"></asp:DropDownList>--%>
             <div style="overflow-y:scroll;width:auto ; height:400px" >
             <asp:GridView ID="subSegment" runat="server" AutoGenerateColumns="False" CellPadding="4"  
                        HeaderStyle-Font-Underline="false"  HeaderStyle-Width ="390px" ItemStyle_Width="390px"
                        onrowcancelingedit="subSegment_RowCancelingEdit"   Font-Names="Arial, Helvetica, sans-serif"
                        onrowdatabound="subSegment_RowDataBound" onrowdeleting="subSegment_RowDeleting"  
                        onrowediting="subSegment_RowEditing" onrowupdating="subSegment_RowUpdating"  
                        onsorting="subSegment_Sorting" ForeColor="#333333" GridLines="None"> 
                        <HeaderStyle CssClass ="grdView-header" />
                        <RowStyle BackColor="White" ForeColor="#333333" /> 
                          <%--  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />--%>
                            <Columns> 
                                <asp:TemplateField HeaderText="Code Sous Segment" SortExpression="CodSubSegment"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxCodSubSeg" runat="server" Text='<%# Bind("Cod_Sub_Segment") %>' ></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblCodSubSeg" runat="server" Text='<%# Bind("Cod_Sub_Segment") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Désignation Sous Segment" SortExpression="libDasFr"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="tbxLibSouSegFr" runat="server" Text='<%# Bind("Lib_Sub_Segment_Fr") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="lblLibSouSegFr" runat="server" Text='<%# Bind("Lib_Sub_Segment_Fr") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                            </Columns> 
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#edb93b" ForeColor="White" Font-Bold="True" /> 
                            <PagerStyle BackColor="#edb93b" ForeColor="White" HorizontalAlign="Center" /> 
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" /> 
                            <HeaderStyle BackColor="#edb93b" Font-Bold="True" ForeColor="white"/> 
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>    
          </div>
          <asp:Button ID="btnAddSouSeg" runat="server" Text="Créer" Cssclass="btnAdd"/>
          <asp:Button ID="btnEditSouSeg" runat="server" Text="Modifier" CssClass="btnEdit" />
          <asp:Button ID="btnDeacSouSeg" runat="server" Text="Déactiver" CssClass="btnDeac" /> 
         </div>     
     </div>
</div>
</form>
<br/>
<br/>
<br/>
<br/>
<div class="footer">
    <p>&copy; <%: DateTime.Now.Year %> - Alès Groupe</p>
</div>

</body>
</html>


<script type = "text/jquery">

function MouseEvents(objRef, evt)

{

   //var checkbox = objRef.getElementsByTagName("input")[0];

   if (evt.type == "mouseover")

   {

        objRef.style.backgroundColor = "blue";

   }

   else

   {

        if (checkbox.checked)

       {

            objRef.style.backgroundColor = "aqua";

       }

        else if(evt.type == "mouseout")

        {

            if(objRef.rowIndex % 2 == 0)

          {

              //Alternating Row Color

               objRef.style.backgroundColor = "#C2D69B";

            }

            else

           {

              objRef.style.backgroundColor = "white";

            }

        }

   }

}

</script>

