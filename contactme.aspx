<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactme.aspx.cs" Inherits="WebApplication2.contactme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Email" Width="180px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Message" TextMode="MultiLine" Rows="4" Columns="50"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </div>
</form>

</body>
</html>
