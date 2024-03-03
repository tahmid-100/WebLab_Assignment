<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication2.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1361px;
            height: 393px;
        }
        .auto-style2 {
            width: 59%;
            margin-right: 0px;
            height: 127px;
        }
        .auto-style3 {
            width: 153px;
        }
        .auto-style5 {
            width: 257px;
        }
        .auto-style6 {
            width: 99px;
        }
        .auto-style7 {
            width: 175px;
        }
        .auto-style8 {
            width: 153px;
            height: 33px;
        }
        .auto-style9 {
            width: 257px;
            height: 33px;
        }
        .auto-style10 {
            width: 99px;
            height: 33px;
        }
        .auto-style11 {
            width: 175px;
            height: 33px;
        }
        .auto-style12 {
            height: 33px;
        }
        .auto-style13 {
            width: 58%;
            height: 81px;
        }
        .auto-style14 {
            width: 314px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">

        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; phone</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="insert" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button6" runat="server" Text="update" OnClick="Button6_Click" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button10" runat="server" Text="delete" OnClick="Button10_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp; email&nbsp;</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp; university&nbsp;</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp; degree&nbsp;</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12"></td>
                </tr>
            </table>
        </div>
        <div>
            
            <table class="auto-style13">
                <tr>
                    <td class="auto-style14">enter id for update</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            
            <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="Logout" Width="77px" />
            
        </div>
    </form>
</body>
</html>
