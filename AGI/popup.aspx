<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="AGI.test.popup" %>

<!DOCTYPE html>

<style>

.lbl{
     font-family :Arial, Helvetica, sans-serif ;
     color:#404040;
  }
#ddlCodActi {
    font-family :Arial, Helvetica, sans-serif ;
    color :#404040 ;
    width:150px;
}

#tbx {
    border-radius :8px;
    color:red;
}


</style>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Creation d'un nouveau DAS</title>

</head>

<body>

    <form id="form1" runat="server">

    <table>

    <tr>

    <td>

    <asp:Label ID="Label1" runat="server" Class="lbl" Text="Code DAS"></asp:Label>

    </td>

    <td>

    <asp:TextBox ID="TextBox1" runat="server" Font-Size="14px" cssclass="txb"></asp:TextBox>

    </td>

    </tr>
    <tr>

    <td>

    <asp:Label ID="Label3" runat="server" Class="lbl" Text="Code Activity"></asp:Label>

    </td>

    <td>

    <asp:dropdownlist ID="ddlCodActi" runat="server" Font-Size="14px"></asp:dropdownlist>

    </td>

    </tr>

    <tr>

    <td>

    <asp:Label ID="Label2" runat="server" Class="lbl" Text="Désignation DAS"></asp:Label>

    </td>

    <td>

    <asp:TextBox ID="TextBox2" runat="server" Font-Size="14px" cssclass="txb"></asp:TextBox>

    </td>

    </tr>
    </table>
    </form>

</body>

</html>
