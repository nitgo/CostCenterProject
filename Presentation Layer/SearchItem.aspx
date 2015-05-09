<%@ Page Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="SearchItem.aspx.cs"
    Inherits="Presentation_Layer.SearchItem" Title="Search Items" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMid" runat="Server">
    <div style="margin: 5px 5px 5px 5px; text-align: center; font-family: Arial; font-size: large; font-weight: bold; color: Black; text-decoration: underline;">
        Search Item
    </div>
    <ul style="text-align: left">
        <li style="border-style: solid; color: White; background-color: #667A8E; text-align: left; list-style: none; margin: 10px 10px 50px 10px; padding: 5px 5px 5px 5px; height: auto">
            <table style="height: 220px">
                <tr>
                    <td>
                        <asp:Label ID="lblSearchItem" Style="font-size: 15px" runat="server" Text="Search By Item Name"
                            ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlSearchItemName" AutoPostBack="true" AppendDataBoundItems="true"
                            DataTextField="Item_Name" runat="server" Height="30px" Width="240px" OnSelectedIndexChanged="ddlSearchItemName_SelectedIndexChanged">
                            <asp:ListItem Enabled="true" Text="-Selelct-">
                            </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            ValidationGroup="1" ForeColor="Red" ControlToValidate="ddlSearchItemName"></asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align: right">
                        <asp:Label ID="lblCash" Style="font-size: 15px" runat="server" Text="Search Cash Orders"
                            ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtcash" runat="server" Style="font-size: 15px" ForeColor="White"
                            Font-Bold="True" Width="240px" Font-Italic="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            ValidationGroup="4" ForeColor="Red" ControlToValidate="txtcash"></asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:Button ID="btncashsearch" runat="server" ForeColor="White" Font-Bold="True"
                            Width="90px" Height="30px" BackColor="Black" ValidationGroup="4" Text="Search"
                            BorderStyle="Ridge" Font-Names="Khmer UI" Font-Size="Medium" OnClick="btncashsearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSearchDate" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Search By Order Date"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true"
                            EnableScriptLocalization="true" ID="ScriptManager1" ScriptMode="Debug" CombineScripts="false" />
                        <asp:TextBox ID="txtSearchDate" runat="server" Height="30px" Width="240px"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="customCalendarExtender" runat="server" TargetControlID="txtSearchDate"
                            Animated="true" Format="MMMM d, yyyy" PopupPosition="Left" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            ValidationGroup="2" ForeColor="Red" ControlToValidate="txtSearchDate"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="BtnSearchDate" runat="server" ForeColor="White" Font-Bold="True"
                            Width="90px" Height="30px" BackColor="Black" ValidationGroup="2" Text="Search"
                            BorderStyle="Ridge" Font-Names="Khmer UI" Font-Size="Medium" OnClick="BtnSearchDate_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSearchVenderName" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Search By Vendor Name"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlSearchVenderName" AutoPostBack="true" AppendDataBoundItems="true"
                            DataTextField="Vendor_Name" runat="server" Height="30px" Width="240px" OnSelectedIndexChanged="ddlSearchVenderName_SelectedIndexChanged">
                            <asp:ListItem Enabled="true" Text="-Selelct-">
                            </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtVenderName" runat="server"
                            ErrorMessage="*" ValidationGroup="3" ForeColor="Red" ControlToValidate="ddlSearchVenderName"></asp:RequiredFieldValidator>
                    </td>
                    <td style="text-align: right">
                        <asp:Label ID="lblCustom" Style="font-size: 15px" ForeColor="white" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Custom Search"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtcustom" runat="server" Height="30px" Width="240px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                            ForeColor="Red" ValidationGroup="cust" ControlToValidate="txtcustom"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="btncustom" runat="server" ForeColor="White" Font-Bold="True" Width="90px"
                            Height="30px" BackColor="Black" ValidationGroup="cust" Text="Search" BorderStyle="Ridge"
                            Font-Names="Khmer UI" Font-Size="Medium" OnClick="btncustom_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSearchPurchaseOrNo" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Search By Purchase Order No."></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtSearchPurchaseOrNo" runat="server" Height="30px" Width="240px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtProductName" runat="server"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="9" ControlToValidate="txtSearchPurchaseOrNo"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="btnSearchbyPurcahseOr" runat="server" ForeColor="White" Font-Bold="True"
                            Width="90px" Height="30px" BackColor="Black" ValidationGroup="9" Text="Search"
                            BorderStyle="Ridge" Font-Names="Khmer UI" Font-Size="Medium" OnClick="btnSearchbyPurcahseOr_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcategory" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Search By categories"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="true" Width="240px"
                            Height="30px" DataTextField="Category_name" DataValueField="Id" AppendDataBoundItems="true"
                            OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Text="-Select-"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlSubCat" runat="server" AutoPostBack="true" DataTextField="Subchild_name"
                            DataValueField="Id" Width="240px" Height="30px" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlSubCat_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Text="-Select-"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlSubSubCat" runat="server" Visible="false" DataTextField="Sub_Sub_name"
                            Width="240px" Height="30px" AppendDataBoundItems="true">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="btnsearchcategory" runat="server" ForeColor="White" Font-Bold="True"
                            Width="90px" Height="30px" BackColor="Black" Text="Search" BorderStyle="Ridge"
                            Font-Names="Khmer UI" Font-Size="Medium" OnClick="btnsearchcategory_Click" />
                    </td>
                </tr>
            </table>
            <div>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
            </div>
        </li>
    </ul>
    <div align="center">
        <asp:Panel ID="PanResult" Visible="false" runat="server">
            <asp:GridView ID="grdvViewResult" runat="server" Width="900px" AllowSorting="True"
                AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ShowFooter="True"
                OnPageIndexChanging="grdvViewResult_PageIndexChanging" ForeColor="#333333" GridLines="Both">
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" Font-Size="X-Large" BackColor="#284775" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <Columns>
                    <asp:TemplateField HeaderText="Purcahse Order No.">
                        <ItemTemplate>
                            <%#Eval("Purchase_Or_no")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurcahseOrno" runat="server" Text=' <%#Eval("Purchase_Or_no") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Name ">
                        <ItemTemplate>
                            <%#Eval("Item_Name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtItemName" Text='<%#Eval("Item_Name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%#Eval("Purchase_category")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCat" runat="server" Text=' <%#Eval("Purchase_category") %>'></asp:TextBox>
                        </EditItemTemplate>
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
                        <ControlStyle Width="125px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rate per unit">
                        <ItemTemplate>
                            <%#Eval("Purchase_rate")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtRate" Text='<%#Eval("Purchase_rate")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="unit">
                        <ItemTemplate>
                            <%#Eval("Unit")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUnit" Text='<%#Eval("Unit")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" Quantity purcahsed/Rented ">
                        <ItemTemplate>
                            <%#Eval("Purchase_qty")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtQuantity" Text='<%#Eval("Purchase_qty")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Purchase/Rented Date ">
                        <ItemTemplate>
                            <%#Eval("Purchase_date")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurchaseaDate" Text='<%#Eval("Purchase_date")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("days")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtday" Text='<%#Eval("days")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vendor Name ">
                        <ItemTemplate>
                            <%#Eval("Vendor_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtVendorName" Text='<%#Eval("Vendor_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Site Name ">
                        <ItemTemplate>
                            <%#Eval("Destination_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSiteName" Text='<%#Eval("Destination_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        </asp:Panel>
        <asp:Panel ID="PanelDate" Visible="false" runat="server">
            <asp:GridView ID="GridViewdate" runat="server" Width="900px" AllowSorting="True"
                AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ShowFooter="True"
                OnPageIndexChanging="grdvViewDate_PageIndexChanging" ForeColor="#333333" GridLines="Both">
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" Font-Size="X-Large" BackColor="#284775" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <Columns>
                    <asp:TemplateField HeaderText="Purcahse Order No.">
                        <ItemTemplate>
                            <%#Eval("Purchase_Or_no")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurcahseOrno" runat="server" Text=' <%#Eval("Purchase_Or_no") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Name ">
                        <ItemTemplate>
                            <%#Eval("Item_Name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtItemName" Text='<%#Eval("Item_Name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%#Eval("Purchase_category")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCat" runat="server" Text=' <%#Eval("Purchase_category") %>'></asp:TextBox>
                        </EditItemTemplate>
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
                        <ControlStyle Width="125px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rate per unit">
                        <ItemTemplate>
                            <%#Eval("Purchase_rate")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtRate" Text='<%#Eval("Purchase_rate")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="unit">
                        <ItemTemplate>
                            <%#Eval("Unit")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUnit" Text='<%#Eval("Unit")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" Quantity purcahsed/Rented ">
                        <ItemTemplate>
                            <%#Eval("Purchase_qty")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtQuantity" Text='<%#Eval("Purchase_qty")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Purchase/Rented Date ">
                        <ItemTemplate>
                            <%#Eval("Purchase_date")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurchaseaDate" Text='<%#Eval("Purchase_date")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("days")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtday" Text='<%#Eval("days")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vendor Name ">
                        <ItemTemplate>
                            <%#Eval("Vendor_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtVendorName" Text='<%#Eval("Vendor_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Site Name ">
                        <ItemTemplate>
                            <%#Eval("Destination_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSiteName" Text='<%#Eval("Destination_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        </asp:Panel>
        <asp:Panel ID="Panelvendor" Visible="false" runat="server">
            <asp:GridView ID="GridViewvendor" runat="server" Width="900px" AllowSorting="True"
                AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ShowFooter="True"
                OnPageIndexChanging="grdvViewvendor_PageIndexChanging" ForeColor="#333333" GridLines="Both">
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" Font-Size="X-Large" BackColor="#284775" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <Columns>
                    <asp:TemplateField HeaderText="Purcahse Order No.">
                        <ItemTemplate>
                            <%#Eval("Purchase_Or_no")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurcahseOrno" runat="server" Text=' <%#Eval("Purchase_Or_no") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Name ">
                        <ItemTemplate>
                            <%#Eval("Item_Name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtItemName" Text='<%#Eval("Item_Name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%#Eval("Purchase_category")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCat" runat="server" Text=' <%#Eval("Purchase_category") %>'></asp:TextBox>
                        </EditItemTemplate>
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
                        <ControlStyle Width="125px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rate per unit">
                        <ItemTemplate>
                            <%#Eval("Purchase_rate")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtRate" Text='<%#Eval("Purchase_rate")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="unit">
                        <ItemTemplate>
                            <%#Eval("Unit")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUnit" Text='<%#Eval("Unit")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" Quantity purcahsed/Rented ">
                        <ItemTemplate>
                            <%#Eval("Purchase_qty")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtQuantity" Text='<%#Eval("Purchase_qty")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Purchase/Rented Date ">
                        <ItemTemplate>
                            <%#Eval("Purchase_date")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurchaseaDate" Text='<%#Eval("Purchase_date")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("days")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtday" Text='<%#Eval("days")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vendor Name ">
                        <ItemTemplate>
                            <%#Eval("Vendor_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtVendorName" Text='<%#Eval("Vendor_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Site Name ">
                        <ItemTemplate>
                            <%#Eval("Destination_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSiteName" Text='<%#Eval("Destination_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        </asp:Panel>
        <asp:Panel ID="PanelOrder" Visible="false" runat="server">
            <asp:GridView ID="GridVieworder" runat="server" Width="900px" AllowSorting="True"
                AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ShowFooter="True"
                OnPageIndexChanging="grdvVieworder_PageIndexChanging" ForeColor="#333333" GridLines="Both">
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" Font-Size="X-Large" BackColor="#284775" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <Columns>
                    <asp:TemplateField HeaderText="Purcahse Order No.">
                        <ItemTemplate>
                            <%#Eval("Purchase_Or_no")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurcahseOrno" runat="server" Text=' <%#Eval("Purchase_Or_no") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Name ">
                        <ItemTemplate>
                            <%#Eval("Item_Name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtItemName" Text='<%#Eval("Item_Name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%#Eval("Purchase_category")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCat" runat="server" Text=' <%#Eval("Purchase_category") %>'></asp:TextBox>
                        </EditItemTemplate>
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
                        <ControlStyle Width="125px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rate per unit">
                        <ItemTemplate>
                            <%#Eval("Purchase_rate")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtRate" Text='<%#Eval("Purchase_rate")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="unit">
                        <ItemTemplate>
                            <%#Eval("Unit")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUnit" Text='<%#Eval("Unit")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" Quantity purcahsed/Rented ">
                        <ItemTemplate>
                            <%#Eval("Purchase_qty")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtQuantity" Text='<%#Eval("Purchase_qty")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Purchase/Rented Date ">
                        <ItemTemplate>
                            <%#Eval("Purchase_date")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurchaseaDate" Text='<%#Eval("Purchase_date")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("days")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtday" Text='<%#Eval("days")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vendor Name ">
                        <ItemTemplate>
                            <%#Eval("Vendor_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtVendorName" Text='<%#Eval("Vendor_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Site Name ">
                        <ItemTemplate>
                            <%#Eval("Destination_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSiteName" Text='<%#Eval("Destination_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        </asp:Panel>
        <asp:Panel ID="PanelCat" Visible="false" runat="server">
            <asp:GridView ID="GridViewcat" runat="server" Width="900px" AllowSorting="True" AllowPaging="True"
                AutoGenerateColumns="False" CellPadding="4" ShowFooter="True" OnPageIndexChanging="GridViewcat_PageIndexChanging"
                ForeColor="#333333" GridLines="Both">
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" Font-Size="X-Large" BackColor="#284775" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <Columns>
                    <asp:TemplateField HeaderText="Purcahse Order No.">
                        <ItemTemplate>
                            <%#Eval("Purchase_Or_no")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurcahseOrno" runat="server" Text=' <%#Eval("Purchase_Or_no") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Name ">
                        <ItemTemplate>
                            <%#Eval("Item_Name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtItemName" Text='<%#Eval("Item_Name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%#Eval("Purchase_category")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCat" runat="server" Text=' <%#Eval("Purchase_category") %>'></asp:TextBox>
                        </EditItemTemplate>
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
                        <ControlStyle Width="125px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rate per unit">
                        <ItemTemplate>
                            <%#Eval("Purchase_rate")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtRate" Text='<%#Eval("Purchase_rate")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="unit">
                        <ItemTemplate>
                            <%#Eval("Unit")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUnit" Text='<%#Eval("Unit")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" Quantity purcahsed/Rented ">
                        <ItemTemplate>
                            <%#Eval("Purchase_qty")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtQuantity" Text='<%#Eval("Purchase_qty")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Purchase/Rented Date ">
                        <ItemTemplate>
                            <%#Eval("Purchase_date")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurchaseaDate" Text='<%#Eval("Purchase_date")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("days")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtday" Text='<%#Eval("days")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vendor Name ">
                        <ItemTemplate>
                            <%#Eval("Vendor_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtVendorName" Text='<%#Eval("Vendor_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Site Name ">
                        <ItemTemplate>
                            <%#Eval("Destination_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSiteName" Text='<%#Eval("Destination_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        </asp:Panel>
        <asp:Panel ID="Panelcustom" Visible="false" runat="server">
            <asp:GridView ID="GridViewcustom" runat="server" Width="900px" AllowSorting="True"
                AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ShowFooter="True"
                ForeColor="#333333" GridLines="Both" OnPageIndexChanging="GridViewcustom_PageIndexChanging">
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="White" HorizontalAlign="Center" Font-Size="X-Large" BackColor="#284775" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <Columns>
                    <asp:TemplateField HeaderText="Purcahse Order No.">
                        <ItemTemplate>
                            <%#Eval("Purchase_Or_no")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurcahseOrno" runat="server" Text=' <%#Eval("Purchase_Or_no") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Item Name ">
                        <ItemTemplate>
                            <%#Eval("Item_Name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtItemName" Text='<%#Eval("Item_Name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%#Eval("Purchase_category")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCat" runat="server" Text=' <%#Eval("Purchase_category") %>'></asp:TextBox>
                        </EditItemTemplate>
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
                        <ControlStyle Width="125px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Rate per unit">
                        <ItemTemplate>
                            <%#Eval("Purchase_rate")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtRate" Text='<%#Eval("Purchase_rate")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="unit">
                        <ItemTemplate>
                            <%#Eval("Unit")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtUnit" Text='<%#Eval("Unit")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" Quantity purcahsed/Rented ">
                        <ItemTemplate>
                            <%#Eval("Purchase_qty")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtQuantity" Text='<%#Eval("Purchase_qty")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Purchase/Rented Date ">
                        <ItemTemplate>
                            <%#Eval("Purchase_date")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurchaseaDate" Text='<%#Eval("Purchase_date")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                        <ItemTemplate>
                            <%#Eval("days")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtday" Text='<%#Eval("days")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vendor Name ">
                        <ItemTemplate>
                            <%#Eval("Vendor_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtVendorName" Text='<%#Eval("Vendor_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Site Name ">
                        <ItemTemplate>
                            <%#Eval("Destination_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSiteName" Text='<%#Eval("Destination_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        </asp:Panel>
    </div>
</asp:Content>
