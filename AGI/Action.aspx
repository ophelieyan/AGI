<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Action.aspx.cs" Inherits="AGI.Action" %>

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
    .btnAction {
            border:none;
	        padding:6px 0 6px 0;
	        border-radius:75%;
	        border-bottom:7px solid #0f4396;
	        font:bold 18px Arial;
	        color:#555;
	        background:#fff;
	        box-shadow:2px 2px 3px #906ba1;
	        border-top:2px solid #edb93b;

    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <asp:Image ID="MainCompanylogo" runat="server" Height="76px" Width="150px" ImageUrl="Images/logo.png"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <title>actions</title>
</head>
<body>
    <div class ="row">
        <div class ="col">
            </br>
            </br>
            </br>
            </br>
          <!--  <form id="form1" runat="server">-->
            <div>
                <asp:Button ID="btnMDM" runat="server" Text="         MDM         " CssClass="btnSource"/>
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
                <asp:Button ID="btnDyDonnTech" runat="server" Text="        DYNASYS Données Techniques        " CssClass="btnSource"/>
            </div>
    </div>
    <div class ="col">
            </br>
            </br>
            </br>
            </br>
            <div>
                <asp:Button ID="Button1" runat="server" Text="         Création Acticle         " CssClass="btnAction"/>
            </div>
            </br>
            </br>
            </br>
            </br>
            <div>
                <asp:Button ID="Button2" runat="server" Text="        Modification Acticle        " CssClass="btnAction"/>
            </div>
            </br>
            </br>
            </br>
            </br>
            <div> 
                <asp:Button ID="Button3" runat="server" Text="        Consultation Acticle        " CssClass="btnAction"/>
            </div>
    
            </div>
       <!-- </form>-->
    </div>
</body>
</html>
