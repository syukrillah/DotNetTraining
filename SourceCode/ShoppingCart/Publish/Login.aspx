<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .main {
            width: 382px;
            margin: auto;
            margin-top: 50px;
            padding: 6px;
            border: 1px solid #000;
            padding-right: 22px;
            border-radius: 10px;
        }

            .main h3 {
                text-align: center;
            }

        .label {
            padding: 5px;
        }

        .labelError {
            padding: 5px;
            color: red;
            text-align: center;
        }

        .text {
            padding: 5px;
        }

        .btn {
            padding: 5px;
            text-align: center;
        }

            .btn input {
                color: #fff;
                background: #000;
                padding: 10px;
                border: none;
            }

        .text input {
            width: 100%;
            padding: 5px;
        }

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
                
            </div>
            <div class="menu">
                <ul>
                    <li><a href="Home.aspx">Home</a>  </li>
                    <li><a href="Cart.aspx">Shopping Cart</a> </li>
                </ul>
            </div>
            <div class="list">
                <div class="main">
                
                    <div class="label">
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                    </div>
                    <div class="text">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </div>
                    <div class="label">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </div>
                    <div class="text">
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                    <div class="btn">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </div>
                    <div class="labelError">
                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                    </div>
                </div>


            </div>
            <div class="footer">Copyright @ 2018</div>
        </div>

    </form>
</body>
</html>
