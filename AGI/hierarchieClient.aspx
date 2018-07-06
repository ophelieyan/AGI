<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hierarchieClient.aspx.cs" Inherits="AGI.hierarchieClient" %>

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
        <a href="InfoGenerClients" class="dropbtn">CLIENTS</a>
        <div class="submenu">
          <a href="#">Flux codification Clients</a>
          <a href="InfoGenerClients">Infos générales</a>
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
                            <asp:TreeNode Text="Fiche Clients" Value="Fiche Clients" NavigateUrl="~/infoGeneClient.aspx">
                                <asp:TreeNode Text="Infos Générales" Value="Infos Générales" NavigateUrl="~/infoGeneClient.aspx"></asp:TreeNode>
                                <asp:TreeNode Text="Hierarchie Clients" Value="Hierarchie Clients" NavigateUrl="~/hierarchieClient.aspx"></asp:TreeNode>
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
                       <li><a href="InfoGenerClients">Infos Générales</a></li>
                       <li class="active"><a href="hierarchieclient">Hierarchie Clients</a></li>
                    </ul>
                </div>
                <br />
                <div class="row">
                    <input type="text" placeholder="Recherche" name ="search" id="searchClient"  autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:400px;height:30px; border-radius:6px;margin-left:2px"/> 
                    <br />
                    <asp:ImageButton ID="btnRecheClient" runat="server" OnClick ="findClient" Height="18px" Width="35px" />
                </div>
                <br />
                <div class="row">
                 <%--   <input type="text" placeholder="Recherche" name ="searchHierar" id="searchHierarClient"  autocomplete ="on" style="background-image:url(images/recherche.png);background-position:right;background-repeat:no-repeat;padding-left:2px;width:400px;height:30px; border-radius:6px;margin-left:2px"/> 
                    <br />
                    <asp:ImageButton ID="btnHierarClient" runat="server" OnClick ="findHierarClient" Height="18px" Width="35px" />--%>
                    <asp:DropDownList ID="ddlHierarClient" runat="server"></asp:DropDownList>
                </div>
                <br />
                
               <div class ="col-lg-1">
               </div>
               <div class="row">  
          
               <div class ="col">
                 <a class="entete">Classificatin SCM Level 1</a>
                 <br />
                 <div>
                     <table id="tblHeader" class ="gvScmL1" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                                 <th style="text-align:center; width:100px; color:white; background-color:#edb93b">Code SCM Level 1</th>
                                 <th style="text-align:center; width:180px; color:white; background-color:#edb93b">Libellé SCM Level 1</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:280px ; height:330px" >
                 <%--  onrowdeleting="ScmL1_RowDeleting" onrowediting="ScmL1_RowEditing" onrowupdating="ScmL1_RowUpdating"  onsorting="ScmL1_Sorting" --%>

                 <asp:GridView ID="ScmL1" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowHeader="false" 
                            HeaderStyle-Font-Underline="false"  Font-Names="Arial, Helvetica, sans-serif"
                            Font-Size ="X-Small" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White"  ForeColor="#333333" /> 
                                <Columns> 
                                   <asp:TemplateField   Visible="false" > 
                                   <EditItemTemplate> 
                                        <asp:TextBox ID="tbxIdScmL1" runat="server" Text='<%# Bind("ID_Customer_SCM_Classification_Level_1") %>' Visible="false" ></asp:TextBox> 
                                        </EditItemTemplate>
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdScmL1" runat="server" Text='<%# Bind("ID_Customer_SCM_Classification_Level_1") %>' Visible="false"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                    <EditItemTemplate> 
                                            <asp:TextBox ID="tbxCodScmL1" runat="server"  Text='<%# Bind("Cod_Customer_SCM_Classification_Level_1") %>'  Width ="80px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblCodScmL1" runat="server"  Text='<%# Bind("Cod_Customer_SCM_Classification_Level_1") %>' Width ="80px"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                       <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibScmL1Fr" runat="server" Text='<%# Bind("Lib_Customer_SCM_Classification_Level_1_Fr") %>'  Width ="160px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibScmL1Fr" runat="server" Text='<%# Bind("Lib_Customer_SCM_Classification_Level_1_Fr") %>' Width ="160px"></asp:Label> 
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
                 <button ID="btnAddScmL1" class="btnAdd" type="button">Créer</button>
                 <button ID="btnEditScmL1" class="btnEdit" type="button">Modifier</button>
            <%--     <button ID="btnDisableDas" class="btnDeac" type="button">Désactiver</button>--%>
             </div>
    
              <div class ="col">
                 <a class="entete">Classificatin SCM Level 2</a>
                 <br />
                 <div>
                     <table id="tblSCML2Header" class ="gvScmL2" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                                 <th style="text-align:center; width:100px; color:white; background-color:#edb93b">Code SCM Level 2</th>
                                 <th style="text-align:center; width:180px; color:white; background-color:#edb93b">Libellé SCM Level 2</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:280px ; height:330px" >
                         <%-- onrowdatabound="ScmL2_RowDataBound" onrowdeleting="ScmL2_RowDeleting"
                           onrowediting="ScmL2_RowEditing" onrowupdating="ScmL2_RowUpdating" 
                            onsorting="ScmL2_Sorting"--%>
                 <asp:GridView ID="ScmL2" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowHeader="false" 
                            HeaderStyle-Font-Underline="false" Font-Names="Arial, Helvetica, sans-serif"
                            Font-Size ="X-Small" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White"  ForeColor="#333333" /> 
                                <Columns> 
                                   <asp:TemplateField   Visible="false" > 
                                   <EditItemTemplate> 
                                        <asp:TextBox ID="tbxIdScmL2" runat="server" Text='<%# Bind("ID_Customer_SCM_Classification_Level_2") %>' Visible="false" ></asp:TextBox> 
                                        </EditItemTemplate>
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdScmL2" runat="server" Text='<%# Bind("ID_Customer_SCM_Classification_Level_2") %>' Visible="false"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                    <EditItemTemplate> 
                                            <asp:TextBox ID="tbxCodScmL2" runat="server"  Text='<%# Bind("Cod_Customer_SCM_Classification_Level_2") %>'  Width ="80px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblCodScmL2" runat="server"  Text='<%# Bind("Cod_Customer_SCM_Classification_Level_2") %>' Width ="80px"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                       <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibScmL2Fr" runat="server" Text='<%# Bind("Lib_Customer_SCM_Classification_Level_2_Fr") %>'  Width ="160px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibScmL2Fr" runat="server" Text='<%# Bind("Lib_Customer_SCM_Classification_Level_2_Fr") %>' Width ="160px"></asp:Label> 
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
                 <button ID="btnAddScmL2" class="btnAdd" type="button">Créer</button>
                 <button ID="btnEditScmL2" class="btnEdit" type="button">Modifier</button>
            <%--     <button ID="btnDisableDas" class="btnDeac" type="button">Désactiver</button>--%>
             </div>
       
             </div>

               <div class="row">  
          
               <div class ="col">
                 <a class="entete">Classificatin BUSINESS Level 1</a>
                 <br />
                 <div>
                     <table id="tblBusinessL1" class ="gvBusinessL1" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                                 <th style="text-align:center; width:100px; color:white; background-color:#edb93b">Code Business Level 1</th>
                                 <th style="text-align:center; width:180px; color:white; background-color:#edb93b">Libellé Business Level 1</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:280px ; height:330px" >
                 <%--  onrowdeleting="ScmL1_RowDeleting" onrowediting="ScmL1_RowEditing" onrowupdating="ScmL1_RowUpdating"  onsorting="ScmL1_Sorting" --%>

                 <asp:GridView ID="BusinessL1" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowHeader="false" 
                            HeaderStyle-Font-Underline="false"  Font-Names="Arial, Helvetica, sans-serif"
                            Font-Size ="X-Small" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White"  ForeColor="#333333" /> 
                                <Columns> 
                                   <asp:TemplateField   Visible="false" > 
                                   <EditItemTemplate> 
                                        <asp:TextBox ID="tbxIdBusinessL1" runat="server" Text='<%# Bind("ID_Customer_Business_Classification_Level_1") %>' Visible="false" ></asp:TextBox> 
                                        </EditItemTemplate>
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdBusinessL1" runat="server" Text='<%# Bind("ID_Customer_Business_Classification_Level_1") %>' Visible="false"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                    <EditItemTemplate> 
                                            <asp:TextBox ID="tbxCodBusinessL1" runat="server"  Text='<%# Bind("Cod_Customer_Business_Classification_Level_1") %>'  Width ="80px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblCodBusinessL1" runat="server"  Text='<%# Bind("Cod_Customer_Business_Classification_Level_1") %>' Width ="80px"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                       <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibBusinessL1Fr" runat="server" Text='<%# Bind("Lib_Customer_Business_Classification_Level_1_Fr") %>'  Width ="160px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibBusinessL1Fr" runat="server" Text='<%# Bind("Lib_Customer_Business_Classification_Level_1_Fr") %>' Width ="160px"></asp:Label> 
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
                 <button ID="btnAddBusinessL1" class="btnAdd" type="button">Créer</button>
                 <button ID="btnEditBusinessL1" class="btnEdit" type="button">Modifier</button>
            <%--     <button ID="btnDisableDas" class="btnDeac" type="button">Désactiver</button>--%>
             </div>
    
              <div class ="col">
                 <a class="entete">Classificatin Business Level 2</a>
                 <br />
                 <div>
                     <table id="tblBusinessL2" class ="gvBusinessL2" border="1" style ="font-size :small">
                         <tbody>
                             <tr>
                                 <th style="text-align:center; width:100px; color:white; background-color:#edb93b">Code Business Level 2</th>
                                 <th style="text-align:center; width:180px; color:white; background-color:#edb93b">Libellé Business Level 2</th>
                             </tr>
                         </tbody>
                     </table>
                 </div>
                 <div style="overflow-y:scroll; overflow-x:hidden; width:280px ; height:330px" >
                         <%-- onrowdatabound="ScmL2_RowDataBound" onrowdeleting="ScmL2_RowDeleting"
                           onrowediting="ScmL2_RowEditing" onrowupdating="ScmL2_RowUpdating" 
                            onsorting="ScmL2_Sorting"--%>
                 <asp:GridView ID="BusinessL2" runat="server" AutoGenerateColumns="False" CellPadding="4" ShowHeader="false" 
                            HeaderStyle-Font-Underline="false" Font-Names="Arial, Helvetica, sans-serif"
                            Font-Size ="X-Small" ForeColor="#333333" GridLines="None"> 
                            <RowStyle BackColor="White"  ForeColor="#333333" /> 
                                <Columns> 
                                   <asp:TemplateField   Visible="false" > 
                                   <EditItemTemplate> 
                                        <asp:TextBox ID="tbxIdBusinessL2" runat="server" Text='<%# Bind("ID_Customer_Business_Classification_Level_2") %>' Visible="false" ></asp:TextBox> 
                                        </EditItemTemplate>
                                        <ItemTemplate> 
                                            <asp:Label ID="lblIdBusinessL2" runat="server" Text='<%# Bind("ID_Customer_Business_Classification_Level_2") %>' Visible="false"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                    <EditItemTemplate> 
                                            <asp:TextBox ID="tbxCodBusinessL2" runat="server"  Text='<%# Bind("Cod_Customer_Business_Classification_Level_2") %>'  Width ="80px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblCodBusinessL2" runat="server"  Text='<%# Bind("Cod_Customer_Business_Classification_Level_2") %>' Width ="80px"></asp:Label> 
                                        </ItemTemplate> 
                                    </asp:TemplateField> 
                                    <asp:TemplateField > 
                                       <EditItemTemplate> 
                                            <asp:TextBox ID="tbxLibBusinessL2Fr" runat="server" Text='<%# Bind("Lib_Customer_Business_Classification_Level_2_Fr") %>'  Width ="160px"></asp:TextBox> 
                                        </EditItemTemplate> 
                                        <ItemTemplate> 
                                            <asp:Label ID="lblLibBusinessL2Fr" runat="server" Text='<%# Bind("Lib_Customer_Business_Classification_Level_2_Fr") %>' Width ="160px"></asp:Label> 
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
                 <button ID="btnAddBusinessL2" class="btnAdd" type="button">Créer</button>
                 <button ID="btnEditBusinessL2" class="btnEdit" type="button">Modifier</button>
            <%--     <button ID="btnDisableDas" class="btnDeac" type="button">Désactiver</button>--%>
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
        $("#searchClient").autocomplete({
            source: function(request, response) {  
                $.ajax({  
                    type: "POST",   
                    url: "api/getClientController",
                    data :"param=" + document.getElementById('searchClient').value,
                    success: function (data) {
                        var array = data.split(",");
                        response(array);
                    },  
                    error: function (resp, status, xhr) {
                        alert("param=" + document.getElementById('searchClient').value)  
                    }
                });  
            }  
        });  
    }  
</script>  
