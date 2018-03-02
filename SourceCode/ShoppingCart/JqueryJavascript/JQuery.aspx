<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQuery.aspx.cs" Inherits="JqueryJavascript.JQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        function OpenAlert() {
            var a = $("#n1").val();
            var b = $("#n2").val();
            $("#result").text(Number(a) + Number(b));
        }
        function Animate()
        {
             
            $("#main").animate({ left: '200px', opacity: '0.3' }, "slow");
            $("#main").animate({ left: '400px', opacity: '1' }, "slow");
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       No 1: <input type="text" id="n1" class="txtname" />
           No 2: <input type="text" id="n2" class="txtname" />
    <input type="button" value="Submit" onclick="OpenAlert()" />
        <label id="result"></label>
    </div>

        <input type="button" value="Animate" onclick="Animate()" /><br />

        <div style="width:100px;height:100px;background:red;position:absolute;" id="main"></div>
    </form>
</body>
</html>