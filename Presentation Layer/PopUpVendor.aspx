<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUpVendor.aspx.cs" Inherits="Presentation_Layer.AddVendor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Vendor</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 5px 5px 5px 5px; text-align: left; font-family: Times New Roman;
        font-size: large; font-weight: bold; color: Black; text-decoration: underline;">
        Add New Vendor</div>
    <center>
        <ul style="text-align: left">
            <li style="border-style: solid; color: White; background-color: #667A8E; text-align: left;
                list-style: none; margin: 10px 10px 50px 10px; padding: 5px 5px 5px 5px; width: 457px;
                height: auto">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblVendorName" runat="server" Text="Vendor Name" Height="30" Width="210"
                                Font-Size="15px" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="center" style="width: 280px;">
                            <asp:TextBox ID="txtVendorName" ToolTip="FILL THE USER NAME" runat="server" Font-Size="15px"
                                Height="30" Width="210" Font-Bold="True" Font-Italic="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Rfname" runat="server" ErrorMessage="*" ForeColor="Red"
                                ValidationGroup="a" ControlToValidate="txtVendorName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblVendorAddress" runat="server" Text="Address" Height="30" Width="210"
                                Font-Size="15px" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="center" style="width: 280px;">
                            <asp:TextBox ID="txtVendorAddress" runat="server" Height="30" TextMode="MultiLine"
                                Width="210" Font-Size="15px" Font-Bold="True" ToolTip="Fill the address of Vendor"
                                Font-Italic="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Rfpass" runat="server" ErrorMessage="*" ForeColor="Red"
                                ValidationGroup="a" ControlToValidate="txtVendorAddress"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPhone" runat="server" Text="Phone No." Height="30" Width="210"
                                Font-Size="15px" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="center" style="width: 280px;">
                            <asp:TextBox ID="txtPhone" runat="server" ToolTip="Fill the Phone No. of Vendor"
                                Font-Size="15px" Height="30" Width="210" Font-Bold="True" Font-Italic="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Rfadd" runat="server" ErrorMessage="*" ForeColor="Red"
                                ValidationGroup="a" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMobile" runat="server" Text="Alternate No" Height="30" Width="210"
                                Font-Size="15px" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="center" style="width: 280px;">
                            <asp:TextBox ID="txtMobile" runat="server" ToolTip="Fill the Mobile No. of Vendor"
                                Font-Size="15px" Height="30" Width="210" Font-Bold="True" Font-Italic="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblFax" runat="server" Text="Fax No." Height="30" Width="210" Font-Size="15px"
                                ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="center" style="width: 280px;">
                            <asp:TextBox ID="txtFax" runat="server" ToolTip="Fill the Fax No. of Vendor" Font-Size="15px"
                                Height="30" Width="210" Font-Bold="True" Font-Italic="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="labemail" runat="server" Text="Email Id" Height="30" Width="210" Font-Size="15px"
                                ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="center" style="width: 280px;">
                            <asp:TextBox ID="txtemail" runat="server" ToolTip="FILL  EMAIL ID" Font-Size="15px"
                                Height="30" Width="210" Font-Bold="True" Font-Italic="False"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <div align="center" style="padding: 5px 5px 5px 5px">
                    <asp:Button ID="btnSubmit" runat="server" ForeColor="White" Font-Bold="True" ValidationGroup="a"
                        Width="110px" Height="40px" BackColor="Black" Text="Submit" BorderStyle="Ridge"
                        Font-Names="Khmer UI" Font-Size="Medium" OnClick="btnSubmit_Click" />
                </div>
            </li>
        </ul>
    </center>
    </form>
</body>
</html>
