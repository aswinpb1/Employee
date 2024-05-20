<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="Employee.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 37%;
            height: 472px;
        }
        .auto-style2 {
            width: 548px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row justify-content-center mt-5">
                <div class="col-md-6">
                    <h2 class="text-center mb-4">ADD DETAILS</h2>
                    <div class="form-group row">
                        <label for="TextBox1" class="col-sm-4 col-form-label">Name :</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="TextBox2" class="col-sm-4 col-form-label">Description :</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-4 col-form-label">Gender :</label>
                        <div class="col-sm-8">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-check">
                                <asp:ListItem Text="male" Value="male"></asp:ListItem>
                                <asp:ListItem Text="female" Value="female"></asp:ListItem>
                                <asp:ListItem Text="others" Value="others"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="TextBox3" class="col-sm-4 col-form-label">Age :</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="TextBox4" class="col-sm-4 col-form-label">Place :</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12 text-center">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="btn btn-secondary">Back</asp:LinkButton>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" CssClass="btn btn-primary" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12">
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
