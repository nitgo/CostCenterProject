<%@ Page Language="C#" MasterPageFile="~/Front.Master" AutoEventWireup="true" CodeBehind="cash.aspx.cs"
    Inherits="Presentation_Layer.cash" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMid" runat="server">
    <div style="margin: 5px 5px 5px 5px; text-align: center; font-family: Arial; font-size: large;
        font-weight: bold; color: Black; text-decoration: underline;">
        Register Cash Memos
    </div>
    <ul style="text-align: left">
        <li style="border-style: solid; color: White; background-color: #667A8E; text-align: left;
            list-style: none; margin: 10px 10px 50px 10px; padding: 5px 5px 5px 5px; height: auto">
            <table style="height: 220px">
                <tr>
                    <td>
                        <asp:Label ID="lblVoucherno" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Voucher No/reference No"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtVocherno" runat="server" Height="30px" Width="240px" AutoPostBack="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPurchaseOrNo" runat="server"
                            ErrorMessage="*" ValidationGroup="a" ForeColor="Red" ControlToValidate="txtVocherno"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblDate" Style="font-size: 15px" ForeColor="White" Font-Bold="True"
                            Font-Italic="False" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <ajaxToolkit:ToolkitScriptManager runat="Server" EnableScriptGlobalization="true"
                            EnableScriptLocalization="true" ID="ScriptManager1" ScriptMode="Debug" CombineScripts="false" />
                        <asp:TextBox ID="txtDate" runat="server" Height="30px" Width="240px"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="customCalendarExtender" runat="server" TargetControlID="txtDate"
                            Animated="true" Format="MMMM d, yyyy" PopupPosition="Left" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPurcahseDate" runat="server"
                            ErrorMessage="*" ValidationGroup="a" ForeColor="Red" ControlToValidate="txtDate"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblwhom" runat="server" ForeColor="White" Font-Bold="True" Font-Italic="False"
                            Text="To whom" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtwhom" runat="server" Width="240px" Height="30px">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="-Select-"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="a" ControlToValidate="txtwhom"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblpurpose" runat="server" ForeColor="White" Font-Bold="True" Font-Italic="False"
                            Text="Purpose" Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtpurpose" runat="server" Width="400px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" InitialValue="-Select-"
                            ErrorMessage="*" ForeColor="Red" ValidationGroup="a" ControlToValidate="txtpurpose"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTag" runat="server" Text="Purpose Category" Font-Bold="True" Font-Italic="False"
                            Style="font-size: 15px"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:DropDownList ID="ddltagpurpose" Width="240px" runat="server" DataTextField="Tag_name"
                            Height="30px" AppendDataBoundItems="true" OnSelectedIndexChanged="ddltagpurpose_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Text="-Select-"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Label ID="lblamount" Style="font-size: 15px" runat="server" Text="Amount" ForeColor="White"
                            Font-Bold="True" Font-Italic="False"></asp:Label>
                    </td>
                    <td style="width: 283px" align="center">
                        <asp:TextBox ID="txtAmount" runat="server" Width="240px" Height="30px" ValidationGroup="a"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlCategory" runat="server"
                            ErrorMessage="*" ForeColor="Red" InitialValue="-Select-" ValidationGroup="a"
                            ControlToValidate="txtAmount"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <div align="center">
                <asp:Button ID="btnInsert" runat="server" ForeColor="White" Font-Bold="True" Width="110px"
                    Height="40px" BackColor="Black" Text="Submit" BorderStyle="Ridge" Font-Names="Khmer UI"
                    ValidationGroup="a" Font-Size="Medium" OnClick="btnInsert_Click" /></div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label></div>
        </li>
    </ul>
</asp:Content>
