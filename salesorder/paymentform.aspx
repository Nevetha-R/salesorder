<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paymentform.aspx.cs" Inherits="salesorder.paymentform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #99CCFF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #000099;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            font-size: large;
            color: #000099;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
            text-align: left;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <div class="auto-style3">
                <strong><span class="auto-style2">&nbsp;&nbsp; Payment Details<br />
                </span></strong><br />
                <br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Select payment option</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>payment by cheque</asp:ListItem>
                            <asp:ListItem>payment by card</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Btnsubmit" runat="server" OnClick="Btnsubmit_Click" Text="Submit" BorderColor="#000099" BorderWidth="3px" />
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
