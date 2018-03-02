<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ShoppingCart.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Logo {
            color: lightblue;
            float: left;
            font-size: 32px;
            padding: 25px;
            font-weight: bold;
        }

        .login {
            float: right;
            padding: 25px;
        }

            .login input {
                background: none;
                border: none;
                color: blue;
            }

        .Header {
            float: left;
            width: 100%;
        }

        .menu {
            float: left;
            width: 100%;
            background: orange;
        }

        .footer {
            float: left;
            width: 100%;
            background: #000;
            padding: 5px;
            text-align: center;
            color: #fff;
        }

        .menu ul li {
            list-style: none;
            float: left;
            padding: 11px;
            background: orange;
            color: #fff;
        }

            .menu ul li a {
                float: left;
                padding: 11px;
                color: #fff;
                text-decoration: none;
            }

            .menu ul li:hover {
                background-color: orangered;
            }

        .menu ul {
            margin-top: 0px;
        }

        .list {
            float: left;
            width: 100%;
        }

        .product {
            border: 1px solid grey;
            width: 20%;
            margin-top: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            float: left;
            margin-right: 38px;
            margin-left: 20px;
        }

        .pimage {
            margin: 5px;
        }

        .pname {
            text-align: center;
            font-weight: bold;
            color: orange;
        }

        .pprize {
            text-align: center;
            margin-top: 3px;
        }

        .cart {
            text-align: center;
            margin-top: 6px;
            margin-bottom: 14px;
        }

            .cart input {
                background: orange;
                color: #fff;
                border: none;
                padding: 10px;
                border-radius: 5px;
            }

        .title {
            padding-left: 10px;
        }

        .cartitems {
            padding: 7px;
        }

            .cartitems table {
                width: 100%;
                border-bottom: 1px solid #f2f2f2;
            }

                .cartitems table thead tr {
                    background: #f2f2f2;
                    color: #000;
                    padding: 7px;
                }

                    .cartitems table thead tr td {
                        padding: 8px;
                    }

                .cartitems table tbody tr td {
                    padding: 8px;
                }

        td.imgs img {
            width: 75px;
            border: 1px solid #f2f2f2;
        }

        input#txtQty {
            width: 100px;
            text-align: center;
            padding: 6px;
        }

        input#btnCheckout {
            float: right;
            margin-bottom: 10px;
            background: orange;
            border: none;
            padding: 13px;
            color: #fff;
            border-radius: 6px;
        }
        div#EmptyCart {
    background: gray;
    color: #fff;
    padding: 50px;
    text-align: center;
    margin-bottom: 30px;
    border-radius: 5px;
    font-size: 28px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Outer">
            <div class="Header">
                <div class="Logo">Shopping Cart</div>
                <div class="login">
                    <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" />
                    <asp:Button runat="server" ID="btnLogOut" Text="Logout" OnClick="btnLogOut_Click" />


                </div>
            </div>
            <div class="menu">
                <ul>
                    <li><a href="Home.aspx">Home</a>  </li>
                    <li><a href="Cart.aspx">Shopping Cart</a> </li>
                </ul>
            </div>
            <div class="list">
                <div class="title">
                    <h3>Shopping Cart</h3>
                </div>
                <div id="CartList" runat="server">
                    <div class="cartitems">
                        <table cellspacing="0">
                            <thead>
                                <tr>
                                    <td style="text-align: center;" width="10%">Image</td>
                                    <td width="60%">Name</td>
                                    <td style="text-align: center;" width="10%">Price</td>
                                    <td style="text-align: center;" width="10%">Qty</td>
                                    <td style="text-align: center;" width="10%">Total</td>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td class="imgs">
                                                <img src="<%#Eval("ProductImage") %>" />
                                            </td>
                                            <td><%#Eval("ProductName") %></td>
                                            <td style="text-align: center;"><%#Eval("ProductPrice") %> USD</td>
                                            <td style="text-align: center;">
                                                <asp:TextBox ID="txtQty" runat="server" Text='<%#Eval("Quantity") %>'></asp:TextBox>
                                            </td>
                                            <td style="text-align: center;"><%#Eval("ProductPrice") %> USD</td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </tbody>
                        </table>
                    </div>
                    <div>
                        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="btnCheckout_Click" />

                    </div>
                </div>
                <div id ="EmptyCart" runat="server" >
                    <span>Cart Empty</span>
                </div>

            </div>
            <div class="footer">Copyright @ 2018</div>
        </div>
    </form>
</body>
</html>

