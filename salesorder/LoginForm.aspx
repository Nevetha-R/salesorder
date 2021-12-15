<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="salesorder.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #99CCFF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            color: #000099;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style4">
            <strong>Login Page<br />
            <br />
            </strong></span><table class="auto-style2">
                <tr>
                    <td class="auto-style3" style="font-size: medium">Username</td>
                    <td style="font-size: medium" class="auto-style8">
                        <asp:TextBox ID="Txtusername" runat="server" style="text-align: left"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtusername" ErrorMessage="Please enter username" ForeColor="Red" style="font-size: medium; text-align: left"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-size: medium">Password</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="font-size: medium" class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtpassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td style="font-size: medium">
                        <asp:Label ID="Lblerror" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="login" BorderColor="#000099" BorderWidth="3px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
