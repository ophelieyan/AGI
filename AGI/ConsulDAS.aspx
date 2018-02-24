<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsulDAS.aspx.cs" Inherits="AGI.ConsulDAS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="das" runat="server" AutoGenerateColumns="False" BackColor="White"  
                        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  
                        onpageindexchanging="das_PageIndexChanging"  
                        onrowcancelingedit="das_RowCancelingEdit"  
                        onrowdatabound="das_RowDataBound" onrowdeleting="das_RowDeleting"  
                        onrowediting="das_RowEditing" onrowupdating="das_RowUpdating"  
                        onsorting="das_Sorting"> 
                        <RowStyle BackColor="White" ForeColor="#003399" /> 
                            <Columns> 
                                <asp:CommandField ShowEditButton="True" /> 
                                <asp:CommandField ShowDeleteButton="True" /> 
                                <asp:BoundField DataField="ID_DAS" HeaderText="ID_DAS" ReadOnly="True"  
                                    SortExpression="ID_DAS" /> 
                                <asp:TemplateField HeaderText="Cod_DAS" SortExpression="CodDAS"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Cod_DAS") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Cod_DAS") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Cod_Activity" SortExpression="CodActivity"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Cod_Activity") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Cod_Activity") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Libellé DAS en Français" SortExpression="libDasFr"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Lib_DAS_Fr") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Lib_DAS_Fr") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Libellé DAS en Anglais" SortExpression="libDasEn"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Lib_DAS_En") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Lib_DAS_En") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                                <asp:TemplateField HeaderText="Flag Activity DAS" SortExpression="flgActiDas"> 
                                    <EditItemTemplate> 
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Flg_Activity_DAS") %>'></asp:TextBox> 
                                    </EditItemTemplate> 
                                    <ItemTemplate> 
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Flg_Activity_DAS") %>'></asp:Label> 
                                    </ItemTemplate> 
                                </asp:TemplateField> 
                            </Columns> 
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" /> 
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" /> 
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" /> 
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" /> 
                        </asp:GridView> 
        
            <asp:LinkButton ID="lbtnAdd" runat="server" onclick="lbtnAdd_Click">Créer un nouveau DAS</asp:LinkButton> 
    </div>
    </form>
</body>
</html>
