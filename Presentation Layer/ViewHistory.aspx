<%@ Page Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="ViewHistory.aspx.cs"
    Inherits="Presentation_Layer.ViewHistory" Title="View History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMid" runat="Server">
    <div>
        <ul style="text-align: left">
            <li style="border-style: solid; color: White; background-color: #667A8E; text-align: justify;
                list-style:none ; width:auto; height: auto">
                <asp:GridView ID="grdvViewPurchaseOrder" runat="server" PageSize="13" DataKeyNames="Id"
                    OnPageIndexChanging="pageIndexChanging" OnRowUpdating="GrdvViewStock_RowUpdating"
                    OnRowCancelingEdit="GrdvViewStock_RowCancelingEdit" OnRowEditing="GrdvViewStock_RowEditing"
                    OnRowDeleting="GrdvViewStock_RowDeleting" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" ShowFooter="True" OnRowDataBound="grdvViewPurchaseOrder_RowDataBound"
                    ForeColor="#333333" GridLines="Both">
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" Font-Size="X-Large" BackColor="#284775" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField HeaderText="Purcahse Order No." ControlStyle-Width="50px" HeaderStyle-Width="80px">
                            <ItemTemplate>
                                <%#Eval("Purchase_Or_no")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPurcahseOrno" runat="server" Text=' <%#Eval("Purchase_Or_no") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Width="50px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Item Name" ControlStyle-Width="150px" HeaderStyle-Width="80px">
                            <ItemTemplate>
                                <%#Eval("Item_Name")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtItemName" Text='<%#Eval("Item_Name")%>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Width="150px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category" ControlStyle-Width="90px" HeaderStyle-Width="80px">
                            <ItemTemplate>
                                <%#Eval("Purchase_category")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpEditCategory" runat="server" AutoPostBack="true" AppendDataBoundItems="true"
                                    DataValueField="Id" DataTextField="Category_name">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ControlStyle Width="90px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="SubCategory" ControlStyle-Width="90px" HeaderStyle-Width="80px">
                            <%--<ItemTemplate>
                                <%#Eval("Sub_categoryName")%>
                            </ItemTemplate>--%>
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpEditSubCategory" runat="server" AppendDataBoundItems="true"
                                    DataTextField="Subchild_name" DataValueField="Id">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ControlStyle Width="90px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sub-2 Category" ControlStyle-Width="125px" HeaderStyle-Width="80px">
                            <%--<ItemTemplate>
                                <%#Eval(Sub_sub_categoryName")%>
                            </ItemTemplate>--%>
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpEditSubSubCategory" runat="server" AppendDataBoundItems="true"
                                    DataTextField="Sub_Sub_name" DataValueField="Sub_Sub_Id">
                                    <asp:ListItem Selected="True" Text=""></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ControlStyle Width="125px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Rate per unit" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                            <ItemTemplate>
                                <%#Eval("Purchase_rate")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtRate" Text='<%#Eval("Purchase_rate")%>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Width="50px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Unit" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                           <%-- <ItemTemplate>
                                <%#Eval("Unit")%>
                            </ItemTemplate>--%>
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlUnit" runat="server" DataTextField="Unit" AppendDataBoundItems="true">
                                    <asp:ListItem Selected="True" Text="-Select-"></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ControlStyle Width="50px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity purcahsed/Rented" ControlStyle-Width="50px"
                            HeaderStyle-Width="80px">
                            <ItemTemplate>
                                <%#Eval("Purchase_qty")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtQuantity" Text='<%#Eval("Purchase_qty")%>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Width="50px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Purchase/Rented Date" ControlStyle-Width="50px" HeaderStyle-Width="80px">
                            <ItemTemplate>
                                <%#Eval("Purchase_date")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPurchaseaDate" Text='<%#Eval("Purchase_date")%>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Width="50px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Additional Info." ControlStyle-Width="50px" HeaderStyle-Width="80px">
                            <%--<ItemTemplate>
                                <%#Eval("days")%>
                            </ItemTemplate>--%>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtday" Text='<%#Eval("days")%>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Width="50px"></ControlStyle>
                            <HeaderStyle Width="80px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Vendor Name" ControlStyle-Width="125px" HeaderStyle-Width="100px">
                            <ItemTemplate>
                                <%#Eval("Vendor_name")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtVendorName" Text='<%#Eval("Vendor_name")%>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Width="125px"></ControlStyle>
                            <HeaderStyle Width="100px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Site" ControlStyle-Width="70px" HeaderStyle-Width="100px">
                            <ItemTemplate>
                                <%#Eval("Destination_name")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDestinationName" Text='<%#Eval("Destination_name")%>' runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ControlStyle Width="70px"></ControlStyle>
                            <HeaderStyle Width="100px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="true" ControlStyle-Width="50px" HeaderStyle-Width="50px">
                            <ControlStyle Width="50px"></ControlStyle>
                            <HeaderStyle Width="50px"></HeaderStyle>
                        </asp:CommandField>
                        <asp:CommandField ShowDeleteButton="true" ControlStyle-Width="50px" HeaderStyle-Width="50px">
                            <ControlStyle Width="50px"></ControlStyle>
                            <HeaderStyle Width="50px"></HeaderStyle>
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </li>
        </ul>
    </div>
</asp:Content>
