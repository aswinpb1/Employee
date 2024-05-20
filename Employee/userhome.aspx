<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="Employee.userhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .menu {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            background-color: #f9f9f9;
        }
        .menu-item {
            margin-bottom: 10px;
        }
        .menu-item a {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            color: #333;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        .menu-item a:hover {
            background-color: #ccc;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="menu">
                <div class="menu-item">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ADD EMPLOYEE</asp:LinkButton>
                </div>
                <div class="menu-item">
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">VIEW EMPLOYEE</asp:LinkButton>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
