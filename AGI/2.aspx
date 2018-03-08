<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2.aspx.cs" Inherits="AGI._2" %>
 
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

 

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title>

     <style type="text/css">

        .Background

        {

            background-color: Black;

            filter: alpha(opacity=90);

            opacity: 0.8;

        }

        .Popup

        {

            background-color: #FFFFFF;

            border-width: 3px;

            border-style: solid;

            border-color: black;

            padding-top: 10px;

            padding-left: 10px;

            width: 400px;

            height: 350px;

        }

        .lbl

        {

            font-size:16px;

            font-style:italic;

            font-weight:bold;

        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

<asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager>

<asp:Button ID="Button1" runat="server" Text="Fill Form in Popup" />

 

<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"

    CancelControlID="Button2" BackgroundCssClass="Background">

</cc1:ModalPopupExtender>

<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">

    <iframe style=" width: 350px; height: 300px;" id="irm1" src="popup.aspx" runat="server"></iframe>

   <br/>

    <asp:Button ID="Button2" runat="server" Text="Close" />

</asp:Panel>

    </form>

</body>

</html>