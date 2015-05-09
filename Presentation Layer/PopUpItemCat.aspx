<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUpItemCat.aspx.cs" Inherits="Presentation_Layer.PopUpItemCat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add Categories</title>
</head>
<body>
    <form id="form12" runat="server">
    <div>
        Category Name:
        <asp:TextBox ID="txtPopCatName" runat="server" Width="113px">
        </asp:TextBox><br />
        <br />
        <asp:Button ID="btnSubmitCat" runat="server" Text="Submit" OnClick="btnSubmitCat_Click" /></div>
    <div>
        <asp:RequiredFieldValidator ID="require" runat="server" ControlToValidate="txtPopCatName"
            ErrorMessage="* Please supply a name for the Category"></asp:RequiredFieldValidator></div>
    </form>
</body>
</html>
