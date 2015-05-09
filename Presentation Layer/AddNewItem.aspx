<%@ Page Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="AddNewItem.aspx.cs"
    Inherits="Presentation_Layer.AddNewItem" Title="Add New Items" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMid" runat="Server">

    <script type="text/javascript">
    function openPopUp()
                    {
                    var popUrl = 'PopUpItem.aspx';
                    var name = 'popUp';
                    var appearence ='dependent=yes,menubar=no,resizable=no,'+
                                          'status=no,toolbar=no,titlebar=no,' +
                                          'left=5,top=280,width=230px,height=140px';
                    var openWindow = window.open(popUrl, name, appearence);
                    openWindow.focus();
                    }
                     
    </script>

    <script type="text/javascript">
    function openPopUpCat()
                    {
                    var popUrl = 'PopUpItemCat.aspx';
                    var name = 'popUp';
                    var appearence ='dependent=yes,menubar=no,resizable=no,'+
                                          'status=no,toolbar=no,titlebar=no,' +
                                          'left=5,top=280,width=230px,height=140px';
                    var openWindow = window.open(popUrl, name, appearence);
                    openWindow.focus();
                    } 
    </script>
    
      <script type="text/javascript">
      function openPopSite()
                    {
                    var popUrl = 'PopUpSite.aspx';
                    var name = 'popUp';
                    var appearence ='dependent=yes,menubar=no,resizable=no,'+
                                          'status=no,toolbar=no,titlebar=no,' +
                                          'left=5,top=280,width=700px,height=400px';
                    var openWindow = window.open(popUrl, name, appearence);
                    openWindow.focus();
                    }
                     
    </script>

    <script type="text/javascript">
                    function openPopUpVendor()
                    {
                    var popUrl = 'PopUpVendor.aspx';
                    var name = 'popUp';
                    var appearence ='dependent=yes,menubar=no,resizable=no,'+
                                          'status=no,toolbar=no,titlebar=no,' +
                                          'left=5,top=280,width=700px,height=400px';
                    var openWindow = window.open(popUrl, name, appearence);
                    openWindow.focus();
                    }
    </script>

    <div style="margin: 5px 5px 5px 5px; text-align: center; font-family: Arial; font-size: large;
        font-weight: bold; color: Black; text-decoration: underline;">
        Register orders
    </div>
    <div>
        <div style="text-align: right; font-size: large; padding-right: 5px">
            <a href="Contact Vendor.aspx">Contact a Vendor</a></div>
        <div style="text-align: right; font-size: large; padding-right: 5px">
            <a href="cash.aspx">Enter Cash Orders</a></div>
    </div>
    <ul style="text-align: left">
        <li style="border-style: solid; color: White; background-color: #667A8E; text-align: left;
            list-style: none; margin: 10px 10px 50px 10px; padding: 5px 5px 5px 5px; height: auto">
            <table style="height: 220px">
                <tr>
                    <td>
                        <asp:Label ID="lblPurchaseOrNo" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Purchase/Bill Order No."></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtPurchaseOrNo" runat="server" Height="30px" Width="240px" AutoPostBack="True"
                            OnTextChanged="txtPurchaseOrNo_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPurchaseOrNo" runat="server"
                            ErrorMessage="*" ValidationGroup="a" ForeColor="Red" ControlToValidate="txtPurchaseOrNo"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblPurchaseDate" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Purchase/bill Date"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true"
                            EnableScriptLocalization="true" ID="ScriptManager1" ScriptMode="Debug" CombineScripts="false" />
                        <asp:TextBox ID="txtPurcahseDate" runat="server" Height="30px" Width="240px"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="customCalendarExtender" runat="server" TargetControlID="txtPurcahseDate"
                            Animated="true" Format="MMMM d, yyyy" PopupPosition="Left" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPurcahseDate" runat="server"
                            ErrorMessage="*" ValidationGroup="a" ForeColor="Red" ControlToValidate="txtPurcahseDate"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" ForeColor="White" Font-Bold="True" Font-Italic="False"
                            Text="Site" Style="font-size: 15px"></asp:Label>
                            
                            
            
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="DdlSite" runat="server" DataTextField="Destination_name" Width="240px"
                            Height="30px" AppendDataBoundItems="true">
                            <asp:ListItem Selected="True" Text="-Select-"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="-Select-"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="a" ControlToValidate="DdlSite"></asp:RequiredFieldValidator>
                                                
                            
                       
                    </td>
                    <td>
                        <asp:ImageButton ID="AddSite" runat="server" ImageUrl="~/images/plus (1).png" 
                            onclick="AddSite_Click" />
                    </td>
                    
                   
                </tr>
                <tr>
                 <td>
                        <asp:Label ID="Label4" runat="server" ForeColor="White" Font-Bold="True" Font-Italic="False"
                            Text="Item Name" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlItemName" runat="server" DataTextField="Item_Name" Width="240px"
                            Height="30px" AppendDataBoundItems="true">
                            <asp:ListItem Selected="True" Text="-Select-"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="-Select-"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="a" ControlToValidate="ddlItemName"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:ImageButton ID="addItem" runat="server" ImageUrl="~/images/plus (1).png" />
                    </td></tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCategory" Style="font-size: 15px" runat="server" Text="Category"
                            ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="true" Width="240px"
                            Height="30px" DataTextField="Category_name" DataValueField="Id" AppendDataBoundItems="true"
                            OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Text="-Select-"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlCategory" runat="server"
                            ErrorMessage="*" ForeColor="Red" InitialValue="-Select-" ValidationGroup="a"
                            ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblQty" runat="server" ForeColor="White" Font-Bold="True" Font-Italic="False"
                            Text="Quantity" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtQty" runat="server" Width="240px" Height="30px" ValidationGroup="a"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                            ForeColor="Red" ValidationGroup="a" ControlToValidate="txtQty"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSubCat" runat="server" ForeColor="White" Font-Bold="True" Font-Italic="False"
                            Text="Sub Category" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlSubCat" runat="server" AutoPostBack="true" DataTextField="Subchild_name"
                            DataValueField="Id" Width="240px" Height="30px" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlSubCat_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Text="-Select-"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="lblPricePerUnit" runat="server" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" Text="Price Per Unit" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtPricePerUnit" runat="server" Width="240px" Height="30px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                            ForeColor="Red" ValidationGroup="a" ControlToValidate="txtPricePerUnit"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSubSubCat" runat="server" ForeColor="White" Font-Bold="True" Font-Italic="False"
                            Text="Sub-2 Category" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlSubSubCat" runat="server" DataTextField="Sub_Sub_name" Width="240px"
                            Height="30px" AppendDataBoundItems="true">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="lblUnit" runat="server" ForeColor="White" Font-Bold="True" Font-Italic="False"
                            Text="Unit" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="drplUnit" runat="server" Width="240px" Height="30px" DataTextField="Unit"
                            AppendDataBoundItems="true">
                            <asp:ListItem Selected="True" Text="-Select-"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" InitialValue="-Select-"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="a" ControlToValidate="drplUnit"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSupplierName" runat="server" Text="Supplier Name" ForeColor="White"
                            Font-Bold="True" Font-Italic="False" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:DropDownList ID="ddlSupplierName" AppendDataBoundItems="true" DataTextField="Vendor_Name"
                            Width="240px" Height="30px" runat="server">
                            <asp:ListItem Enabled="true" Text="-Selelct-"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlSupplierName" runat="server"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="a" InitialValue="-Selelct-"
                            ControlToValidate="ddlSupplierName"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:ImageButton ID="AddVendor" runat="server" ImageUrl="~/images/plus (1).png" />
                    </td>
                    <td>
                        <asp:Label ID="lbldays" runat="server" Text="Description,if any"></asp:Label>
                        <asp:TextBox ID="txtdays" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
            </table>
            <div align="center">
                <asp:Button ID="btnInsert" runat="server" ForeColor="White" Font-Bold="True" Width="110px"
                    Height="40px" BackColor="Black" Text="Insert" BorderStyle="Ridge" Font-Names="Khmer UI"
                    ValidationGroup="a" Font-Size="Medium" OnClick="btnInsert_Click" /></div>
            <asp:GridView ID="grdViewInfo" runat="server" AutoGenerateColumns="False" CellPadding="4"
                DataKeyNames="Id" Height="271px" Width="548px" OnRowCancelingEdit="grdViewInfo_RowCancelingEdit"
                OnRowDataBound="grdViewInfo_RowDataBound" OnRowDeleting="grdViewInfo_RowDeleting"
                OnRowEditing="grdViewInfo_RowEditing" OnRowUpdating="grdViewInfo_RowUpdating"
                OnRowCommand="grdViewInfo_RowCommand" ForeColor="#333333" GridLines="Both">
                <Columns>
                    <asp:TemplateField HeaderText="Item Name" ControlStyle-Width="150px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("Item_Name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="drpeditItem" runat="server" Text=' <%#Eval("Item_Name")%>'></asp:TextBox>
                        </EditItemTemplate>
                        <ControlStyle Width="150px"></ControlStyle>
                        <HeaderStyle Width="80px"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category" ControlStyle-Width="90px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("Purchase_category")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="drpEditCategory" runat="server" AppendDataBoundItems="true"
                                DataValueField="Id" DataTextField="Category_name">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ControlStyle Width="90px"></ControlStyle>
                        <HeaderStyle Width="80px"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SubCategory" ControlStyle-Width="125px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("Sub_categoryName")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="drpEditSubCategory" runat="server" AppendDataBoundItems="true"
                                DataTextField="Subchild_name" DataValueField="Id">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ControlStyle Width="125px"></ControlStyle>
                        <HeaderStyle Width="80px"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sub-2 Category" ControlStyle-Width="125px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("Sub_sub_categoryName")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="drpEditSubSubCategory" runat="server" AppendDataBoundItems="true"
                                DataTextField="Sub_Sub_name" DataValueField="Sub_Sub_Id">
                                <asp:ListItem Selected="True" Text=""></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ControlStyle Width="125px"></ControlStyle>
                        <HeaderStyle Width="80px"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Quantity" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("Purchase_qty")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEdtQty" runat="server" Text='<%#Eval("Purchase_qty")%>' />
                        </EditItemTemplate>
                        <ControlStyle Width="50px"></ControlStyle>
                        <HeaderStyle Width="80px"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Unit" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("Unit")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="drplUnit" runat="server" AppendDataBoundItems="true" DataTextField="Unit">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ControlStyle Width="50px"></ControlStyle>
                        <HeaderStyle Width="80px"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price Per Unit" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("Purchase_rate")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEdtprice" runat="server" Text='<%#Eval("Purchase_rate")%>' />
                        </EditItemTemplate>
                        <ControlStyle Width="50px"></ControlStyle>
                        <HeaderStyle Width="80px"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("days")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtday" Text='<%#Eval("days")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ControlStyle Width="50px"></ControlStyle>
                        <HeaderStyle Width="80px"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:CommandField ControlStyle-ForeColor="Black" ControlStyle-BackColor="#FFF7E7"
                        HeaderText="Edit" ShowEditButton="true">
                        <ControlStyle BackColor="#FFF7E7" ForeColor="Black"></ControlStyle>
                    </asp:CommandField>
                    <asp:CommandField ControlStyle-ForeColor="Black" ControlStyle-BackColor="#FFF7E7"
                        HeaderText="Delete" ShowDeleteButton="true">
                        <ControlStyle BackColor="#FFF7E7" ForeColor="Black"></ControlStyle>
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" Font-Size="X-Large" BackColor="#284775" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <div>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label></div>
        </li>
    </ul>
</asp:Content>
