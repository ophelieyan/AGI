<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="AGI.Accueil" %>

<!DOCTYPE html>
<style>
    .btnSource {
        	border:none;
	        padding:6px 0 6px 0;
	        border-radius:75%;
	        border-bottom:7px solid #0f4396;
	        font:bold 18px Arial;
	        color:#555;
	        background:#fff;
	        box-shadow:2px 2px 3px #906ba1;
	        border-top:2px solid #edb93b;
            margin-left :300px;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <asp:Image ID="MainCompanylogo" runat="server" Height="76px" Width="150px" ImageUrl="Images/logo.png"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Accueil</title>  
</head>
<body>
    </br>
    </br>
    </br>
    </br>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnMDM" runat="server" Text="         MDM         " CssClass="btnSource" OnClick ="btnMDM_click" />
    </div>
    </br>
    </br>
    </br>
    </br>
    <div>
        <asp:Button ID="btnOrDonnTech" runat="server" Text="        ORTEMS Données Techniques        " CssClass="btnSource"/>
    </div>
    </br>
    </br>
    </br>
    </br>
    <div> 
        <asp:Button ID="btnDyDonnTech" runat="server" Text="        DYNANSYS Données Techniques        " CssClass="btnSource"/>
    </div>
    </form>
</body>
</html>
