<%@ Page Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="inventory.aspx.cs" Inherits="Presentation_Layer.inventory" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMid" runat="server">
 <div style="margin: 5px 5px 5px 5px; text-align: center; font-family: Arial; font-size: large;
        font-weight: bold; color: Black; text-decoration: underline;">
        Inventory Management System
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
                    <td style="width: 283px">
                      
                        <asp:TextBox ID="txtItem" runat="server" ValidationGroup="1" Height="30px" Width="240px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            InitialValue="-Select-" ValidationGroup="1" ForeColor="Red" ControlToValidate="txtItem"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblQty" runat="server" ForeColor="White" Font-Bold="True" Font-Italic="False"
                            Text="Quantity" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" >
                        <asp:TextBox ID="txtQty" runat="server" Width="240px" Height="30px" ValidationGroup="a"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                            ForeColor="Red" ValidationGroup="a" ControlToValidate="txtQty"></asp:RequiredFieldValidator>
                    </td>
                    
                   
                </tr>
                <tr> 
                 
                      <td>
                        <asp:Label ID="lbldays" runat="server" Text="Description,if any"></asp:Label></td>
                       <td> <asp:TextBox ID="txtdays" TextMode="MultiLine" runat="server" Width="242px"></asp:TextBox></td>
                    
                    <td>
                        <asp:Label ID="lblSearchSite" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Site Name:"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddlSitename" AppendDataBoundItems="true" ValidationGroup="4"
                             DataTextField="Destination_name"  runat="server" Height="30px"
                            Width="240px" style="margin-left: 0px" >
                            <asp:ListItem Enabled="true" Text="-Select-">
                            </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtProductName" runat="server"
                            InitialValue="-Select-" ErrorMessage="*" ForeColor="Red" ValidationGroup="4"
                            ControlToValidate="ddlSitename"></asp:RequiredFieldValidator>
                    </td>
                     <td>
                        <asp:Button ID="btnSearchbyPurcahseOr" runat="server" ForeColor="White" Font-Bold="True"
                            Width="90px" Height="30px" BackColor="Black" ValidationGroup="4" Text="Insert"
                            BorderStyle="Ridge" Font-Names="Khmer UI" Font-Size="Medium" onclick="btnSearchbyPurcahseOr_Click1" 
                             />
                    </td>
                    </tr>
            </table>
        </li>
    </ul>
</asp:Content>
