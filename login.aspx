<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 65%;
        }
        .auto-style2 {
            width: 128%;
            margin-left: 23px;
            margin-bottom: 59px;
        }
        .auto-style3 {
            width: 192px;
        }
        .auto-style4 {
            width: 646px;
        }
        .auto-style5 {
            width: 192px;
            height: 36px;
        }
        .auto-style6 {
            width: 646px;
            height: 36px;
        }
        .auto-style7 {
            width: 192px;
            height: 16px;
        }
        .auto-style8 {
            width: 646px;
            height: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Form<table class="auto-style2">
                <tr>
                    <td class="auto-style7" style="font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="usernameTextbox" runat="server" Width="244px" Height="32px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter username"     style="font-size: 16px;"
 ForeColor="#FF3300" ControlToValidate="usernameTextbox" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-size: 16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="passwordTextbox" runat="server" Width="238px" Height="30px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" style="font-size: 16px;" ForeColor="Red" ControlToValidate="passwordTextbox" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Button ID="loginButton" runat="server" Text="Enter" OnClick="Button1_Click" />
                    </td>
                </tr>
                </table>
                <table class="auto-style1">
                </table>
            </h2>

        </div>
    </form>
</body>
</html>
