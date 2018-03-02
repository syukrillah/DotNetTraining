<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Javascript.aspx.cs" Inherits="JqueryJavascript.Javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function OpenAlert()
        {
            alert(document.getElementById("txtVal").value);
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="text" id="txtVal" />
    <input type="button" value="Submit" onclick="OpenAlert()" />
    </div>
    </form>
</body>
</html>
