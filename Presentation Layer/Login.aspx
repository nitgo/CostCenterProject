<%@ Page Language="C#" MasterPageFile="~/LoginFront.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="Presentation_Layer.Login" Title="Login to Explore!" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntMid" runat="server">
    <form id="Form1">
    <link href="login-box.css" rel="stylesheet" type="text/css" />
    <div align="center" style="padding-bottom: 100px">
        <div class="login-box">
            <h2>
                Login</h2>
            <div style="font-family: 'Arial'; font-weight: bold">
                <br />
                Login to Explore!</div>
            <table>
                <tr>
                    <td class="login-box-name" style="margin-top: 20px;">
                        UserName
                    </td>
                    <td class="login-box-field" style="margin-top: 20px;">
                        <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtuname" runat="server" ErrorMessage="*"
                            ForeColor="Red" ControlToValidate="txtUname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="login-box-name" style="margin-top: 20px;">
                        Password
                    </td>
                    <td class="login-box-field" style="margin-top: 20px;">
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtPassword" runat="server"
                            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <div style="margin-top: 15px;">
                <asp:ImageButton ID="btnsbmit" runat="server" ImageUrl="~/images/login-btn.png" OnClick="btnsbmit_Click" />
            </div>
            <div>
                <asp:Label ID="lblMsg" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label></div>
        </div>
    </div>
    </form>
</asp:Content>
