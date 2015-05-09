<%@ Page Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="Presentation_Layer.Default" Title="Hardware Store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMid" runat="Server">
    <div style="margin: 5px 5px 5px 5px; text-align: center; font-family: Times New Roman;
        font-size: large; font-weight: bold; color: Black; text-decoration: underline;">
        Profile Details</div>
    <ul style="text-align: left; height: auto">
        <center>
            <li style="border-style: solid; color: White; background-color: #667A8E; text-align: left;
                list-style: none; margin: 10px 10px 50px 10px; padding: 5px 5px 5px 5px; width: 457px;
                height: auto">
                <table style="height: 150px">
                    <tr>
                        <td>
                            <asp:Label ID="labadmin" runat="server" Text="Login as" Height="30" Width="210"
                                Font-Size="15px" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="left" style="width: 280px;">
                            <asp:Label ID="labadminname" runat="server" Text="" Font-Size="15px" Height="30"
                                Width="210" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblCompany" runat="server" Text="Company Name" Font-Size="15px" Height="30"
                                ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td style="width: 280px;" align="justify">
                            <asp:Label ID="lblCompanyName" runat="server" Text="Hardware Store"
                                Font-Size="15px" Height="30" Width="210" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTin" runat="server" Text="Tin No." Font-Size="15px" Height="30"
                                Width="210" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="justify" style="width: 280px; line-height: 30px">
                            <asp:Label ID="lblTinNo" runat="server" Text="001258855584" Font-Size="15px" Height="30"
                                Width="210" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="labadd" runat="server" Text="Address" Font-Size="15px" Height="30"
                                ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td style="width: 280px;" align="left">
                            <asp:Label ID="labaddress" runat="server" Text="19, Glasgow Rd, Dumbarton"
                                Font-Size="15px" Height="30" Width="210" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="labcont" runat="server" Text="Conatact No." Font-Size="15px" Height="30"
                                Width="210" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="justify" style="width: 280px; line-height: 30px">
                            <asp:Label ID="labcontact" runat="server" Text="08456 40753" Font-Size="15px"
                                Height="30" Width="210" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblWeb" runat="server" Text="Website URL" Font-Size="15px" Height="30"
                                Width="210" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                        <td align="justify" style="width: 280px;">
                            <asp:Label ID="lblWebsite" runat="server" Text="www.hardware.in" Font-Size="15px"
                                Height="30" Width="210" ForeColor="White" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </li>
        </center>
    </ul>
</asp:Content>
