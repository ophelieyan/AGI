<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreationPF.aspx.cs" Inherits="AGI.CreationPF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
         <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <title>Création PV</title>
</head>
<body>
    <form id="formCreationPV" runat="server">
    <div>
        <h1 class="Span1">FORMULAIRE DE CREATION DE PRODUIT FINI ET ECHANTILLON</h1>
    </div>
    <div style="height:auto; display:block">
    </div>
    </form>


</body>
</html>
