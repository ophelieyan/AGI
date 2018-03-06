<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testAjax.aspx.cs" Inherits="AGI.testAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Button ID="ClientButton" runat="server" Text="Launch Modal Popup (Client)" />
    <asp:Panel ID="ModalPanel" runat="server" Width="500px">
     ASP.NET AJAX is a free framework for quickly creating a new generation of more 
     efficient, more interactive and highly-personalized Web experiences that work 
     across all the most popular browsers.<br />
     <asp:Button ID="OKButton" runat="server" Text="Close" />
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="mpe" runat="server" TargetControlId="ClientButton" 
     PopupControlID="ModalPanel" OkControlID="OKButton" />
    <asp:ScriptManager ID="asm" runat="server" />
    <asp:Button ID="ServerButton" runat="server" Text="Launch Modal Popup (Server)" 
     OnClick="ServerButton_Click" />
    </div>
    </form>
</body>
</html>

<script type="text/javascript">
 var launch = false;
 function launchModal() 
 {
 launch = true;
 }
    function pageLoad() 
 {
 if (launch) 
 {
 $find("mpe").show();
 }
 }
</script>