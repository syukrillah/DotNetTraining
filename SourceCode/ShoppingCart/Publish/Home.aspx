<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Home.aspx.cs" Inherits="ShoppingCart.Home" %>

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
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="product">
                            <div class="pimage">
                                <img src="<%#Eval("ProductImage") %>" />
                            </div>
                            <div class="pname">
                                <span><%#Eval("ProductName") %></span>
                            </div>
                            <div class="pprize">
                                <span><%#Eval("ProductPrice") %> USD</span>
                            </div>
                            <div class="cart">
                                <asp:Button runat="server" OnCommand="btnAddToCart_Command"
                                     CommandArgument='<%#Eval("ProductId") %>' 
                                    CommandName="AddToCart" Text="Add To Cart" ID="btnAddToCart" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


            </div>
            <div class="footer">Copyright @ 2018</div>
        </div>
    </form>
</body>
</html>
