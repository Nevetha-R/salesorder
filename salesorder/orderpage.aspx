<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderpage.aspx.cs" Inherits="salesorder.orderpage" %>

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
        .auto-style5 {
            text-align: right;
            height: 26px;
            font-size: large;
            color: #000099;
        }
        .auto-style6 {
            text-align: center;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            text-align: right;
            font-size: large;
            color: #000099;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style3">
                <strong><span class="auto-style2">Place Order<br />
                </span></strong><br />
            <br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">Select product</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Study table</asp:ListItem>
                            <asp:ListItem>chair</asp:ListItem>
                            <asp:ListItem>cupboard</asp:ListItem>
                            <asp:ListItem>Dressing Table</asp:ListItem>
                            <asp:ListItem>Sofa set</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Quantity</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Txtqty" runat="server"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtqty" ErrorMessage="Please enter required quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <br />
                        <asp:Button ID="Btncheck" runat="server" OnClick="Btncheck_Click" Text="Check stock" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Lblres" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Total Amount</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="Txtamt" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;
                        <asp:Button ID="Btnorder" runat="server" Text="Place order" OnClick="Btnorder_Click" style="text-align: center" BorderColor="#000099" BorderWidth="3px" />
                    </td>
                    <td>
                        <asp:Button ID="Btnreset" runat="server" OnClick="Btnreset_Click" Text="Reset" BorderColor="#000099" BorderWidth="3px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
