<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmorderform.aspx.cs" Inherits="salesorder.confirmorderform" %>

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
            text-align: center;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            text-align: right;
            font-size: medium;
            color: #000099;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            height: 23px;
            text-align: left;
        }
        .auto-style8 {
            font-size: x-large;
            color: #000099;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style3">
                <strong><span class="auto-style2">Order details<br />
                </span></strong><br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">Ordered Product:</td>
                    <td>
                        <asp:Label ID="Lblproduct" runat="server"></asp:Label>
                        <br />
                    </td>
                    <td>
                        <br />
        </td>
                </tr>
                <tr>
                    <td class="auto-style5">Ordered quantity:</td>
                    <td>
                        <asp:Label ID="Lblqty" runat="server"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Total amount:</td>
                    <td class="auto-style6">
                        <asp:Label ID="Lblcost" runat="server"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4" style="text-align: center"></td>
                    <td class="auto-style7">
                        <asp:Button ID="Btnbuy" runat="server" OnClick="Button1_Click" Text="Confirm order" BorderColor="#000099" BorderWidth="3px" />
                    </td>
                    <td class="auto-style4"></td>
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
