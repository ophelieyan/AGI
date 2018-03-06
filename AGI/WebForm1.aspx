<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AGI.WebForm1" %>

<!DOCTYPE html>

<style>
.ModalPopupBG
{
    background-color: #666699;
    filter: alpha(opacity=50);
    opacity: 0.7;
}

.HellowWorldPopup
{
    min-width:200px;
    min-height:150px;
    background:white;
}
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
    <title></title>
</head>
<body>
           <form id="form1" runat="server">
           <div>
           <asp:Button ID="btnAddNew" runat ="server" Text ="new Expanse" />
           <asp:scriptmanager id="ScriptManager1" runat="server">
           </asp:scriptmanager>
           <ajaxToolkit:modalpopupextender id="ModalPopupExtender1" runat="server" 

	            cancelcontrolid="btnCancel" okcontrolid="btnOkay" 

	            targetcontrolid="btnAddNew" popupcontrolid="Panel1" 

	            popupdraghandlecontrolid="PopupHeader" drag="true" 

	            backgroundcssclass="ModalPopupBG">
            </ajaxToolkit:modalpopupextender>

             <div class ="popupConfirmation" id="P1" style="display: none" runat="server">
              <iframe id="frameeditexpanse" src="EditExpanse.aspx">
              </iframe>
              <div class="popup_Buttons" style ="display :none">
                <input id="btnOkay" type="button" value="Done" />
                <input id="btnCancel" type="button" value="Cancel" />
		      </div>
              </div>
        
    </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function pageLoad() {
        ShowPopup();
        setTimeout(HidePopup, 2000);
    }

    function ShowPopup() {
        $find('modalpopup').show();
    }

    function HidePopup() {
        $find('modalpopup').hide();
    }
</script>
