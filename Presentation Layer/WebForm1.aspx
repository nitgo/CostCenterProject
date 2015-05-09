  <%@ Page Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"
    Inherits="Presentation_Layer.WebForm1" Title="Calculate Cost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMid" runat="server">
    <div style="margin: 5px 5px 5px 5px; text-align: center; font-family: Arial; font-size: large;
        font-weight: bold; color: Black; text-decoration: underline;">
        Calculate Cost
    </div>
    <ul style="text-align: left">
        <li style="border-style: solid; color: White; background-color: #667A8E; text-align: left;
            list-style: none; margin: 10px 10px 50px 10px; padding: 5px 5px 5px 5px; height: auto">
            <table style="height: auto">
                <tr>
                    <td>
                        <asp:Label ID="lblSearchItem" Style="font-size: 15px" runat="server" Text="Item Name:"
                            ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlSearchItemName" AppendDataBoundItems="true" ValidationGroup="1"
                            DataTextField="Item_Name" runat="server" Height="30px" Width="240px"
                            OnSelectedIndexChanged="ddlSearchItemName_SelectedIndexChanged">
                            <asp:ListItem Enabled="true" Text="-Select-">
                            </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            InitialValue="-Select-" ValidationGroup="1" ForeColor="Red" ControlToValidate="ddlSearchItemName"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblSearchSite" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Site Name:"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlSitename" AppendDataBoundItems="true" ValidationGroup="4"
                             DataTextField="Destination_name" runat="server" Height="30px"
                            Width="240px" OnSelectedIndexChanged="ddlSitename_SelectedIndexChanged">
                            <asp:ListItem Enabled="true" Text="-Select-">
                            </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtProductName" runat="server"
                            InitialValue="-Select-" ErrorMessage="*" ForeColor="Red" ValidationGroup="4"
                            ControlToValidate="ddlSitename"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Button ID="btnSearchbyPurcahseOr" runat="server" ForeColor="White" Font-Bold="True"
                            Width="90px" Height="30px" BackColor="Black" ValidationGroup="4" Text="Search"
                            BorderStyle="Ridge" Font-Names="Khmer UI" Font-Size="Medium" OnClick="btnSearchbyPurcahseOr_Click" />
                    </td>
                </tr>
            </table>
        </li>
    </ul>
    <div align="center">
        <asp:Panel ID="PanelOrder" Visible="true" runat="server">
            <asp:GridView ID="GridVieworder" runat="server" Width="900px" AllowSorting="True"
                AutoGenerateColumns="False" CellPadding="4" ShowFooter="True" ForeColor="#333333"
                GridLines="Both" OnRowDataBound="GridVieworder_RowDataBound">
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
                    <asp:TemplateField HeaderText=" Quantity purcahsed/rented ">
                        <ItemTemplate>
                            <%#Eval("Purchase_qty")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtQuantity" Text='<%#Eval("Purchase_qty")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Bill date ">
                        <ItemTemplate>
                            <%#Eval("Purchase_date")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPurchaseaDate" Text='<%#Eval("Purchase_date")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="No.of days,if rented ">
                        <ItemTemplate>
                            <%#Eval("days")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtday" Text='<%#Eval("days")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vendor Name ">
                        <ItemTemplate>
                            <%#Eval("Vendor_name")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtVendorName" Text='<%#Eval("Vendor_name")%>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        </asp:Panel>
        <asp:Button ID="bntcalculateResult" Visible="false" Text="Calculate Cost" BorderStyle="Ridge"
            Font-Names="Khmer UI" Font-Size="Medium" Height="30px" BackColor="Black" ForeColor="White"
            Font-Bold="True" runat="server" OnClick="bntcalculateResult_Click" />
        <asp:Panel ID="pnlResult" runat="server" Visible="false">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblqtytext" runat="server" Text="Total Quantity of this Item Ordered is:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblqty" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblresult" runat="server" Text="Total Value of this Item is:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblOpResult" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAvg" runat="server" Text="Average Price of this item is:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblOpAvg" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblminPrice" runat="server" Text="Minimum Price of this Item is:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblopminprice" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMaxPrice" runat="server" Text="Maximum Price of this Item is:"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblOpMaxPrice" runat="server" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
