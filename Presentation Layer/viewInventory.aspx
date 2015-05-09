<%@ Page Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="viewInventory.aspx.cs" Inherits="Presentation_Layer.viewInventory" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMid" runat="server">
<table style="height: 30px;background-color:#667A8E;width:auto">
<tr>
 <td>
                        <asp:Label ID="lblSearchItem" Style="font-size: 15px" runat="server" Text="Search By Item Name"
                            ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtcustom" runat="server" Height="30px" Width="240px" AutoPostBack="true"
                            ontextchanged="txtcustom_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            ValidationGroup="1" ForeColor="Red" ControlToValidate="txtcustom"></asp:RequiredFieldValidator>
                    </td>
</tr>
</table>
<asp:Panel ID="PanResult" Visible="false" runat="server">
    <asp:GridView ID="grdvViewResult" runat="server" Width="900px" AllowSorting="True"
                AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ShowFooter="True"
                 ForeColor="#333333" GridLines="Both" 
        onselectedindexchanging="grdvViewResult_SelectedIndexChanging">
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" Font-Size="X-Large" 
                    BackColor="#284775" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <Columns>
            <asp:TemplateField HeaderText="Item Name">
                <ItemTemplate>
                    <%#Eval("Item_name")%>
                </ItemTemplate>
               
            </asp:TemplateField>
         
           
            <asp:TemplateField HeaderText="qunatity" ControlStyle-Width="125px" 
                        HeaderStyle-Width="80px">
                <ItemTemplate>
                    <%#Eval("qty")%>
                </ItemTemplate>
                
                <ControlStyle Width="125px" />
                <HeaderStyle Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <%#Eval("descr")%>
                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Site">
                <ItemTemplate>
                    <%#Eval("site")%>
                </ItemTemplate>
              
            </asp:TemplateField>
           
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
        </asp:Panel>
</asp:Content>
