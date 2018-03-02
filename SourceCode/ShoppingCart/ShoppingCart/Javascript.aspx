<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Javascript.aspx.cs" Inherits="ShoppingCart.Javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Add()
        {
            alert(document.getElementById("name").value);
            alert('a');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="button" value="Submit" onclick="Add()" /><br />
        <input type="text"   /><br />
         <input type="checkbox"   /><br />
         <input type="color"   /><br />
         <input type="date"   /><br />
         <input type="datetime"   /><br />
         <input type="datetime-local"   /><br />
         <input type="email"   /><br />
         <input type="file"   /><br />
         <input type="hidden"   /><br />
         <input type="image"   /><br />
         <input type="month"   /><br />
         <input type="number"   /><br />
         <input type="password"   /><br />
         <input type="radio"   /><br />
         <input type="range"   /><br />
         <input type="reset"   /><br />
         <input type="search"   /><br />
         <input type="submit"   /><br />
         <input type="tel"   /><br />
         <input type="time"   /><br />
         <input type="url"   /><br />
         <input type="week"   /><br />
<a href="https://www.google.com/" ></a>
        <img src="img/download.jpg" />
        <audio src=""></audio>
        <video src=""></video>

        
        



     </div>
    </form>
</body>
</html>
