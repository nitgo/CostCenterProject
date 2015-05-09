<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUpItem.aspx.cs" Inherits="Presentation_Layer.PopUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head12" runat="server">
    <title>Add Item</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Item Name:
        <asp:TextBox ID="txtPopItemName" runat="server" Width="113px">
        </asp:TextBox><br />
        <br />
        <asp:Button ID="btnSubmitItem" runat="server" Text="Submit" OnClick="btnSubmitItem_Click" />
        <div>
            <asp:RequiredFieldValidator ID="require" runat="server" ControlToValidate="txtPopItemName"
                ErrorMessage="* Please supply a name for the Item"></asp:RequiredFieldValidator></div>
    </div>
    </form>
</body>
</html>
