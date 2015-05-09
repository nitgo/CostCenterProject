<%@ Page Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Contact Vendor.aspx.cs"
    Inherits="Presentation_Layer.Contact_Vendor" Title="Contact Vendors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMid" runat="Server">
    <div style="margin: 5px 5px 5px 5px; text-align: center; font-family: Arial; font-size: large;
        font-weight: bold; color: Black; text-decoration: underline;">
        Contact Vendors
    </div>
    <ul style="text-align: left">
        <li style="border-style: solid; color: White; background-color: #667A8E; text-align: left;
            list-style: none; margin: 10px 10px 30px 10px; padding: 5px 5px 5px 5px; width: 700px;
            height: auto">
            <table>
                <tr>
                    <td style="width: 283px" align="center">
                        <asp:Label ID="lblSelectVendor" runat="server" Text="Which Vendor Do you Want to Contact?"
                            ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlVendorName" runat="server" ForeColor="#003366" BackColor="#E6E6E6"
                            Width="300px" DataTextField="Vendor_name" AppendDataBoundItems="true" AutoPostBack="true"
                            Font-Bold="True" OnSelectedIndexChanged="ddlVendorName_SelectedIndexChanged">
                            <asp:ListItem Enabled="true" Text="-Selelct-">
                            </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
            <asp:Panel ID="Panop" runat="server" Visible="false">
                        <asp:FormView ID="Frmviwenquiries" AllowPaging="True" PageIndex="2" runat="server"
                            Width="500px" Height="300px" CellPadding="4" ForeColor="#333333">
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <RowStyle ForeColor="BlueViolet" Font-Bold="true"  />
                            <HeaderTemplate>
                                Detail of the Selected Vendor</HeaderTemplate>
                            <ItemTemplate>
                                Vendor Name:<asp:Label Height="40px" ID="lblVname" ForeColor="#333333" runat="server"
                                    Text='<%#Eval("Vendor_name") %>'></asp:Label><br />
                                Address:<asp:Label Height="40px" ID="lblAddress" ForeColor="#333333" runat="server"
                                    Text='<%#Eval("Vendor_address") %>'></asp:Label><br />
                                Phone No:<asp:Label ID="lblphone" Height="40px" ForeColor="#333333" runat="server"
                                    Text='<%#Eval("Vendor_phone") %>'></asp:Label><br />
                                Email:<asp:Label ID="lblEmail" Height="40px" ForeColor="#333333" runat="server" Text='<%#Eval("Vendor_email") %>'></asp:Label><br />
                            </ItemTemplate>
                            <FooterTemplate>
                            </FooterTemplate>
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        </asp:FormView>
                    </asp:Panel>
                </tr>
            </table>
        </li>
    </ul>
</asp:Content>
