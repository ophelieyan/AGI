<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditExpanse.aspx.cs" Inherits="AGI.EditExpanse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <div class="popup_Container">
        <div class="popup_Titlebar" id="PopupHeader">
            <div class="TitlebarLeft">
                Edit Expanse
            </div>
            <div class="TitlebarRight" onclick="cancel();">
            </div>
        </div>
        <div class="popup_Body">
            <%--The content will go here--%>
        </div>
        <div class="popup_Buttons">
            <input id="btnOkay" type="button" value="Done" runat="server" />
            <input id="btnCancel" onclick="cancel();" type="button" value="Cancel" />
        </div>
    </div>
</form>
</body>
</html>

<script type="text/javascript">
    function getbacktostepone() {
        window.location = "EditExpanse.aspx";
    }
    function onSuccess() {
        setTimeout(okay, 2000);
    }
    function onError() {
        setTimeout(getbacktostepone, 2000);
    }
    function okay() {
        window.parent.document.getElementById('btnOkay').click();
    }
    function cancel() {
        window.parent.document.getElementById('btnCancel').click();
    }
</script>
