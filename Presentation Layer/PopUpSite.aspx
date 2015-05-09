<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUpSite.aspx.cs" Inherits="Presentation_Layer.PopUpSite" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    
     <div>
        Site Name:
        <asp:TextBox ID="txtPopSiteName" runat="server" Width="113px">
        </asp:TextBox><br />
        <br />
        Address:
        <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="btnSubmitsite" runat="server" Text="Submit" 
             onclick="btnSubmitsite_Click" />
        <div>
            <asp:RequiredFieldValidator ID="require" runat="server" ControlToValidate="txtPopSiteName"
                ErrorMessage="* Please supply a name for the Site"></asp:RequiredFieldValidator></div>
    
    </div>
    </form>
</body>
</html>
