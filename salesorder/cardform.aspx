<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cardform.aspx.cs" Inherits="salesorder.cardform" %>

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
            text-align: right;
            font-size: large;
            color: #000099;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style3">
                <strong><span class="auto-style2">Card Payment<br />
                </span></strong><br />
            <br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">Card Number:</td>
                    <td>
                        <asp:TextBox ID="Txtcardno" runat="server"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtcardno" ErrorMessage="Please enter card number" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Card Holder Name:</td>
                    <td>
                        <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtname" ErrorMessage="Please enter card holder name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">cvv:</td>
                    <td>
                        <asp:TextBox ID="Txtcvv" runat="server" MaxLength="3"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtcvv" ErrorMessage="Please enter cvv" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Expire date:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>2021</asp:ListItem>
                            <asp:ListItem>2022</asp:ListItem>
                            <asp:ListItem>2023</asp:ListItem>
                            <asp:ListItem>2024</asp:ListItem>
                            <asp:ListItem>2025</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Total Amount:</td>
                    <td>
                        <asp:TextBox ID="Txttotamt" runat="server" ReadOnly="True"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Btnpay" runat="server" OnClick="Btnpay_Click" Text="Pay Now" BorderColor="#000099" BorderWidth="3px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
